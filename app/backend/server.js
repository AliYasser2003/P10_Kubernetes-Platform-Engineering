const express = require("express");

const app = express();

const PORT = 3500;

app.get("/", (req, res) => {
  res.send("Project 10 Backend Running");  // CI Trigger
});

app.get("/api", (req, res) => {
  res.json({
    message: "Backend API Running"
  });
});

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
