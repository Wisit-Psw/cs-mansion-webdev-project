var mysql = require('mysql');
const express = require("express");
const bodyParser = require("body-parser");
const session = require("express-session");
const cors = require("cors");
const app = express();
const port = 3001;

var con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "cs-mansion"
});

// Establish the MySQL connection
con.connect((err) => {
  if (err) throw err;
  console.log("Connected to MySQL database");
});

const corsOptions = {
  origin: "http://127.0.0.1:3000",
  optionsSuccessStatus: 200,
  credentials: true,
};

app.use(cors(corsOptions));
app.use(bodyParser.json());
app.use(
  session({
    secret: "your-secret-key-here",
    resave: false,
    saveUninitialized: true,
  })
);

app.use((req, res, next) => {
  console.log(`${req.method} ${req.url} status ${res.statusCode} `);
  next();
});

app.post("/api/login", async (req, res) => {
  // Handle your login logic here
});

//----------------------------------get---------------------------------
app.get("/api/Exdata/bill", async (req, res) => {
  con.query("SELECT * FROM bill", (err, result) => {
    if (err) throw err;
    res.send(result);
  });
});

app.get("/api/Exdata/user", async (req, res) => {
  con.query("SELECT * FROM user", (err, result) => {
    if (err) throw err;
    res.send(result);
  });
});

app.get("/api/Exdata/room", async (req, res) => {
  con.query("SELECT * FROM room", (err, result) => {
    if (err) throw err;
    res.send(result);
  });
});

app.get("/api/Exdata/renting", async (req, res) => {
  con.query("SELECT * FROM renting INNER JOIN room ON room.RoomID = renting.RoomID INNER JOIN user ON user.UserID = renting.UserID WHERE renting.RentingEnd IS NULL", (err, result) => {
    if (err) throw err;
    res.send(result);
  });
});

app.get("/api/Exdata/renting/CreateBill", async (req, res) => {
  con.query("SELECT * FROM renting INNER JOIN room ON room.RoomID = renting.RoomID INNER JOIN user ON user.UserID = renting.UserID ORDER BY renting.RentingID DESC;", (err, result) => {
    if (err) throw err;
    res.send(result);
  });
});

//SELECT * FROM `room` LEFT JOIN `renting` ON room.RoomID = renting.RoomID WHERE renting.RentingEnd IS NULL;
app.listen(port, () => {
  console.log(`Listening at http://localhost:${port}`);
});
