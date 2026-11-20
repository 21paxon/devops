
const express = require("express");
const fs = require("fs");
const path = require("path");

const app = express();
const PORT = 3000;

// Serve index.html and other files
app.use(express.static(__dirname));

// API endpoint
app.get("/api/notes", (req, res) => {
    try {
        const notes = JSON.parse(
            fs.readFileSync(path.join(__dirname, "sample_notes.json"), "utf8")
        );

        res.json(notes);
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: "Unable to load notes" });
    }
});

app.listen(PORT, "0.0.0.0", () => {
    console.log(`Server running at http://localhost:${PORT}`);
});
