const express = require("express");
const multer = require("multer");
const { Storage } = require("@google-cloud/storage");
const path = require("path");

const app = express();
const upload = multer({ storage: multer.memoryStorage() });

const storage = new Storage();
const bucketName = process.env.BUCKET_NAME;

if (!bucketName) {
  console.error("BUCKET_NAME is not set");
  process.exit(1);
}

// Serve frontend
app.use(express.static(path.join(__dirname, "public")));

// Health check route (VERY IMPORTANT for Cloud Run)
app.get("/", (req, res) => {
  res.send("App is running 🚀");
});

// Handle upload
app.post("/apply", upload.single("cv"), async (req, res) => {
  try {
    if (!req.file) {
      return res.status(400).send("No file uploaded");
    }

    const file = req.file;
    const { name, email } = req.body;

    const filename = `${Date.now()}-${file.originalname}`;
    const blob = storage.bucket(bucketName).file(filename);
    const blobStream = blob.createWriteStream();

    await new Promise((resolve, reject) => {
      blobStream.on("finish", resolve);
      blobStream.on("error", reject);
      blobStream.end(file.buffer);
    });

    res.send(`
      <h2 style="color:green;">✅ Application Submitted!</h2>
      <a href="/">Go Back</a>
    `);

  } catch (error) {
    console.error(error);
    res.status(500).send("Something went wrong");
  }
});

const PORT = process.env.PORT || 8080;

app.listen(PORT, "0.0.0.0", () => {
  console.log(`Server running on ${PORT}`);
});