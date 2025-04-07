// Load environment variables from .env file
import dotenv from "dotenv";
import findConfig from "find-config";
dotenv.config({ path: findConfig(".env") });

import { ethers } from "ethers"; // Ethereum library for interacting with the blockchain
import express from "express"; // Web framework for Node.js
import bodyParser from "body-parser"; // Middleware to parse incoming request bodies
import cors from "cors"; // Middleware to enable CORS (Cross-Origin Resource Sharing)
import multer from "multer"; // Middleware for handling file uploads
import path from "path"; // Built-in Node.js module for file paths
import fs from "fs"; // File system module for reading/writing files
import { fileURLToPath } from "url"; // Utility for handling file URLs
import { dirname } from "path"; // Utility for getting the directory name of a file

// Additional imports for handling file compression and validation
import AdmZip from "adm-zip"; // Module for zipping/unzipping files
import { check, checkSchema, validationResult } from "express-validator"; // Middleware for validating user input
import { create } from "ipfs-http-client"; // Client for interacting with an IPFS node

// Define port for the server
const port = 3000;
const __filename = fileURLToPath(import.meta.url); // Get the filename of the current module
const __dirname = dirname(__filename); // Get the directory name of the current module

// Initialize Express app and middleware
var app = express();
app.use(cors()); // Enable CORS for all routes
app.use(bodyParser.json()); // Parse JSON request bodies
app.use(bodyParser.urlencoded({ extended: true })); // Parse URL-encoded request bodies

// Configure file storage for multer (uploads stored in the 'uploads' folder)
var storage = multer.diskStorage({
	limits: { fileSize: 10 * Math.pow(1024, 2) }, // Limit file size to 10 MB
	destination: (req, file, cb) => {
		cb(null, "./uploads"); // Set destination folder for uploaded files
	},
	filename: (req, file, cb) => {
		console.log(file);
		cb(null, file.originalname); // Save file with its original name
	},
});
var upload = multer({ storage: storage }); // Initialize multer with the storage configuration

// Load the smart contract JSON (compiled contract ABI)
import contract from "./build/contracts/Persssist.json" assert { type: "json" };

// Load sensitive environment variables
const PRIVATE_KEY = process.env.PRIVATE_KEY_LOCAL1;
const CONTRACT_ADDRESS = process.env.CONTRACT_ADDRESS_LOCAL;

// Ethereum provider and signer (account for signing transactions)
const etherProvider = new ethers.providers.JsonRpcProvider(process.env.ganache);
const signer = new ethers.Wallet(PRIVATE_KEY, etherProvider); // Wallet with private key
console.log("Signer address: " + signer.address);
console.log("Private key: " + PRIVATE_KEY);

// Create a contract instance to interact with the smart contract
const blockIPFSContract = new ethers.Contract(
	CONTRACT_ADDRESS,
	contract.abi,
	signer
);

// Initialize IPFS client (local node)
const ipfs = create("http://localhost:5001");

// Start the Express server
app.listen(port, () => {
	console.log("IPFS port: " + process.env.ipfsport);
	console.log("Server is listening on port 3000");
});

// Route to serve the home page (index.html)
app.get("/", (req, res) => {
	res.sendFile(__dirname + "/index.html"); // Serve the HTML file
});

// Route to handle file uploads and validation
app.post("/file", [
	upload.fields([{ name: "file", maxCount: 1 }]), // Handle file upload (max 1 file)
	check("patId", "Patient ID is empty").not().isEmpty().isLength({ max: 255 }), // Validate 'patId' field
	checkSchema({
		file: {
			custom: {
				options: (value, { req, path }) => !!req.files[path], // Ensure file is uploaded
				errorMessage: "You should upload a file",
			},
		},
	}),
	async (req, res) => {
		// Log patient ID
		console.log("Patient ID: " + req.body.patId);

		// Handle validation errors
		const errors = validationResult(req);
		if (!errors.isEmpty()) {
			return res.status(422).json({
				message: "Request fields or files are invalid",
				errors: errors.array(),
			});
		}

		// Extract file details and log them
		var fileName = req.files.file[0].filename;
		var fileSize = req.files.file[0].size;
		var filePath = req.files.file[0].path;
		var fileType = req.files.file[0].mimetype;
		var patientId = req.body.patId;
		console.log(req.files.file[0]);

		try {
			// Zip the uploaded file
			var zip = new AdmZip();
			zip.addFile(fileName, fs.readFileSync(path.join("uploads/", fileName)));
			var willSendthis = zip.toBuffer();

			// Add the zipped file to IPFS
			var fileHash = await ipfs.add({ path: fileName, content: willSendthis });
			console.log(fileHash);
			console.log(fileType);

			const cidn1 = fileHash.cid.toString();
			console.log("CID: " + cidn1);

			if (cidn1 !== "") {
				// Upload file details to the Ethereum contract
				const addIPFSblock = await blockIPFSContract.uploadFile(
					filePath,
					fileSize,
					fileType,
					fileName,
					patientId,
					cidn1
				);
				const receipt = await addIPFSblock.wait();
				console.log("Transaction hash: " + addIPFSblock.hash);
				res.send("Transaction Hash: " + addIPFSblock.hash);
			} else {
				return res.status(422).json({
					message: "Check IPFS Daemon, Upload Failed!",
					errors: "error",
				});
			}
		} catch (err) {
			console.log("Error: " + err);
			if (String(err).includes("ECONNREFUSED")) {
				return res.status(422).json({
					message: "IPFS is not Running / Check Port No",
					errors: err,
				});
			} else if (String(err).includes("noNetwork")) {
				return res.status(422).json({
					message: "Ganache is not Running / Contract Address not valid",
					errors: err,
				});
			}
		}
	},
]);

app.post(
	"/listfiles",
	check("patId", "Patient Id is Empty").not().isEmpty().isLength({ max: 255 }),
	async (req, res) => {
		const errors = validationResult(req);

		if (!errors.isEmpty()) {
			return res.status(422).json({
				message:
					"Request fields or files are invalid, but im handling all of them together!",
				errors: errors.array(),
			});
		}
		var patientid = req.body.patId;
		console.log("fileget: " + patientid);
		try {
			const filesCount = await blockIPFSContract.fileCount();
			console.log("file count: " + filesCount);
			//var jsonObj = {} // empty Object
			var jsonObj = []; // empty Object
			//var key = 'test';
			//jsonObj[key] = [];

			for (var i = 0; i <= filesCount; i++) {
				const file = await blockIPFSContract.files(i);
				console.log("file: " + file);
				console.log("patId: " + file.patId);
				console.log("patientid: " + patientid);
				if (file.patId === patientid) {
					console.log(file.patId === patientid);
					let item = {};
					item["patId"] = patientid;
					console.log(patientid);
					item["fileName"] = file.fileName;
					console.log("fileName: " + file.fileName);
					item["ipfsHash"] = file.ipfsHash;
					console.log("ipfsHash" + file.ipfsHash);
					console.log("item: " + item);
					//jsonObj[key].push(item);
					jsonObj.push(item);
					console.log("fileName:" + file.fileName);
					console.log("filePath:" + file.filePath);
					console.log("fileSize:" + file.fileSize);
					console.log("fileType:" + file.fileType);
					console.log("uploader:" + file.uploader);
					console.log("patientId:" + file.patId);
					console.log("ipfsHash:" + file.ipfsHash);
				}
			}
			res.send(JSON.stringify(jsonObj));
		} catch (error) {
			console.log("Transaction error: " + error);
			//res.send(error);
			return res.status(422).json({
				message: "Error Getting file from IPFS",
				errors: error,
			});
		}
	}
);

// Additional routes for getting files from IPFS and listing files
