from flask import Flask, request,jsonify
from threading import Thread
import requests
import zipfile
import PyPDF2
import json
from io import BytesIO
import joblib
import PyPDF2
import numpy as np
model_heart = './heart_model.pkl'
con=''
app = Flask(__name__)
data = 0




@app.route('/patientinfo', methods=['GET'])


@app.route('/patientinfo', methods=['POST'])

def add_country():
    print('Starting background task...')
    
    if request.is_json:
        #json_string = '{"test": [{"patId":"PIDu8olg","fileName":"Patient-Report-20_December_2023.pdf","ipfsHash":"QmVWqH1HgAyhQZfsD3ihTPtMkyRvwFbBin9KuhFhd9AHyM"}]}'
        data = request.get_json()
        #json_dict
        data = data['test']
        json_data = json.loads(data)
        print(json_data)
        
        for item in json_data:
            print(item)
            print(type(item))
            pat_id = item["patId"]
            #file_name = item["fileName"]
            ipfs_hash = item["ipfsHash"]

          
            print(f"Patient ID: {pat_id}")
            #print(f"File Name: {file_name}")
            print(f"IPFS Hash: {ipfs_hash}")
            print("---")
            daemon = Thread(target=background_task, args=(ipfs_hash, pat_id), daemon=True, name='Monitor')

            #daemon = Thread(target=background_task(ipfs_hash,pat_id), daemon=True, name='Monitor')
            daemon.start()
            
            return 'success',200
    
    return {"error": "Request must be JSON"}, 415
def background_task(con,patid):
    print("#" * 15)
    zip_url = 'http://127.0.0.1:8081/ipfs/'+con  
    print(zip_url)
    response = requests.get(zip_url)
    print(response)
    if response.status_code == 200:
        print("#"*10)
        with zipfile.ZipFile(BytesIO(response.content), 'r') as zip_ref:
            
        
            zip_contents = zip_ref.namelist()

            if len(zip_contents) == 1 and zip_contents[0].endswith('.pdf'):
                print("*"*10)
                
                
                pdf_file_name = zip_contents[0]

           
                pdf_content = zip_ref.read(pdf_file_name)

            
                pdfReader = PyPDF2.PdfReader(BytesIO(pdf_content))
             
                pageObj = pdfReader.pages[0]  

                pageObj.extract_text ()
                text=pageObj.extract_text ()

                n_value=text.find(":")
                text=text.replace(text[:n_value+1],'')
                text_cln = text.replace("\n","")
                chest=text_cln.find('Rest Blood Pressure')
                chest_pain=int(text_cln[chest-3:chest])
                print(chest_pain)
                rest=text_cln.find('Cholestrol')
                Rest_Blood_Pressu=int(text_cln[rest-5:rest])
                cho=text_cln.find('Fasting')
                print(text_cln[cho-5:cho],"____________")
                temp=text_cln[cho-5:cho].replace(":","")
                temp=0
                Cholestrol=int(temp)
                Fasting=text_cln.find('Resting')
                Fasting_Sugar=int(text_cln[Fasting-3:Fasting])
                ECG=text_cln.find('Heartrate')
                Resting_ECG=int(text_cln[ECG-3:ECG])
                Heartrate=text_cln.find('Exercise ')
                Heartrate=int(text_cln[Heartrate-4:Heartrate])
                Exercise=text_cln.find('Old ')
                Exercise=int(text_cln[Exercise-3:Exercise])
                Old=text_cln.find('Slope')
                Old=float(text_cln[Old-5:Old])
                Slope=text_cln.find('Major')
                Slope=int(text_cln[Slope-3:Slope])
                Major=text_cln.find('thalassemia')
                Major=int(text_cln[Major-3:Major])
                thalassemia=text_cln.find('thalassemia')
                thalassemia=int(text_cln[thalassemia+12:thalassemia+15])
                age=text_cln.find('Gender')
                age=int(text_cln[age-3:age])
                print(age)
                Gender=text_cln.find('Gender:')
                Gender=text_cln[Gender+7:]
                if Gender=='female':
                    Gender=0
                else:
                    Gender=1
    
                Gender=int(Gender)
                print(Gender)
                #Gender=text_cln.find('Gender:')
                #Gender=int(text_cln[Gender+7:])
                array=[[age,Gender,chest_pain,Rest_Blood_Pressu,Cholestrol,Fasting_Sugar,Resting_ECG,Heartrate,Exercise,Old,Slope,Major,thalassemia]]
                print(array)
                array_as_list = np.asarray(array)
                model=joblib.load('./heart_model.pkl')
                output=model.predict(array_as_list)
                print(output)
                print('before url')
                #daemon = Thread(target=background_task(ipfs_hash,pat_id), daemon=True, name='Monitor')
                #daemon.start()
                api_url = "http://127.0.0.1:8080/getvalue"
                print(api_url)
                todo = {"status":output.tolist(),'patId':patid}
                print("))))")
                print(type(todo))
                response = requests.post(api_url, json=todo)
                print(response)
                return "prediction  successfully",200
        
        

            else:
                print('The ZIP file does not contain a single PDF file.')

    else:
        print('Failed to download the ZIP file. Status code:', response.status_code)
    #print('@@@@@@@@@@@@@@@')    
    #api_url = "http://10.0.0.14:8080/getvalue"
    #todo = {"status": 15555666,'patId':patid}
    #response = requests.post(api_url, json=todo)

    #print(response)


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5006, debug=True)
