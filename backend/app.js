var mysql = require("mysql");
const express = require("express");
const bodyParser = require("body-parser");
const session = require("express-session");
const cors = require("cors");
const app = express();
const port = 3001;

app.use(
  session({
    secret: "your-secret-key-here",
    resave: false,
    saveUninitialized: true,
    cookie: { sameSite: true,secure: false ,maxAge: 60000}
  })
);

var con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "cs-mansion",
});


// Establish the MySQL connection
con.connect((err) => {
  if (err) throw err;
  console.log("Connected to MySQL database");
});

const corsOptions = {
  origin: ["http://127.0.0.1:3000", "http://127.0.0.1:3001", "http://localhost:3000", "http://localhost:3001"],
  optionsSuccessStatus: 200,
  credentials: true,
};

app.use(cors(corsOptions));
app.use(bodyParser.json());

app.use((req, res, next) => {
  console.log(`${req.method} ${req.url} status ${res.statusCode} `);
  next();
});


app.post("/api/admin/authentication", async (req, res) => {
  const receivedData = req.body;
  try {
    const query = "SELECT * FROM admin WHERE Email = ? AND Password = ?";
    const values = [receivedData.username, receivedData.password];
    con.query(query, values, (err, result) => {
      if (err) {
        console.error(err);
        res.status(500).send({
          response: "Internal Server Error",
          status: "Error",
        });
      } else {
        if (result.length > 0) {
          req.session.user = result[0].Email;
          res.json({ response: result, status: "success" });
        } else {
          res.json({
            response: "fail to query",
            status: "Error",
          });
        }
        console.log(req.session);
      }
    });

  } catch (e) {
    res.send({
      response: "Internal Server Error",
      status: "Error",
    });
  }
});

app.get("/api/admin/accessSession", async (req, res) => {
  try {
    console.log(req.session);
    if (req.session.user) {
      const body = {
        response: req.session.user,
        status: "success",
      };
      res.send(body);
    } else {
      res.send({
        response: "Authentication failed",
        status: "Error",
      });
    }
  } catch (err) {
    console.error(err);
    res.status(500).send({
      response: "Internal Server Error",
      status: "Error",
    });
  }
});


app.get("/api/admin/removesessions", async (req, res) => {
  console.log(req.session)
  if (req.session.user) {
    try {
      req.session.destroy();
      res.send(
        JSON.stringify({ response: "Remove session success", status: "success" })
      );
    } catch {
      res.send(
        JSON.stringify({ response: "Internal Server Error", status: "Error" })
      );
    }
  } else {
    res.send(
      JSON.stringify({ response: "Authentication failed", status: "Error" })
    );
  }
});
app.get("/api/Exdata/bill", async (req, res) => {
  con.query("SELECT * FROM bill", (err, result) => {
    if (err) throw err;
    res.send(result);
  });
});
app.get("/api/Exdata/billdata", async (req, res) => {
  con.query(
    "SELECT bill.BillID,bill.RentingID,bill.BillWaterUnit,bill.BillElectricUnit,bill.BillTotalPrice,bill.BillStatusID,billstatus.BillStatusName,bill.BillDate,renting.RoomID,renting.InternetPackID FROM bill INNER JOIN renting ON bill.RentingID = renting.RentingID INNER JOIN billstatus ON billstatus.BillStatusID = bill.BillStatusID INNER JOIN user ON renting.UserID = user.UserID ORDER BY bill.BillDate DESC;",
    (err, result) => {
      if (err) throw err;
      res.send(result);
    }
  );
});

app.get("/api/Exdata/billdata/waiting", async (req, res) => {
  con.query(
    "SELECT bill.BillID,bill.RentingID,bill.BillWaterUnit,bill.BillElectricUnit,bill.BillTotalPrice,bill.BillStatusID,billstatus.BillStatusName,bill.BillDate,renting.RoomID,renting.InternetPackID FROM bill INNER JOIN renting ON bill.RentingID = renting.RentingID INNER JOIN billstatus ON billstatus.BillStatusID = bill.BillStatusID INNER JOIN user ON renting.UserID = user.UserID WHERE bill.BillStatusID != 2",
    (err, result) => {
      if (err) throw err;
      res.send(result);
    }
  );
});

app.get("/api/Exdata/billdata/expenses", async (req, res) => {
  con.query(
    "SELECT * FROM expenses WHERE BillID = " + req.query.billid,
    (err, result) => {
      if (err) throw err;
      res.send(result);
    }
  );
});

app.get("/api/Exdata/user", async (req, res) => {
  con.query("SELECT * FROM user", (err, result) => {
    if (err) throw err;
    res.send(result);
  });
});

app.get("/api/Exdata/room", async (req, res) => {
  con.query("SELECT * FROM room INNER JOIN roomstatus ON room.RoomStatusID = roomstatus.RoomStatusID INNER JOIN roomtype ON room.RoomTypeID = roomtype.RoomTypeID", (err, result) => {
    if (err) throw err;
    res.send(result);
  });
});

app.get("/api/Exdata/renting", async (req, res) => {
  con.query(
    "SELECT * FROM renting INNER JOIN room ON room.RoomID = renting.RoomID INNER JOIN user ON user.UserID = renting.UserID ",
    // "SELECT * FROM renting INNER JOIN room ON room.RoomID = renting.RoomID INNER JOIN user ON user.UserID = renting.UserID WHERE renting.RentingEnd IS NULL",
    (err, result) => {
      if (err) throw err;
      res.send(result);
    }
  );
});

app.get("/api/Exdata/renting/CreateBill", async (req, res) => {
  con.query(
    "SELECT * FROM renting INNER JOIN room ON room.RoomID = renting.RoomID INNER JOIN user ON user.UserID = renting.UserID ORDER BY renting.RoomID;",
    (err, result) => {
      if (err) throw err;
      res.send(result);
    }
  );
});

app.get("/api/Exdata/Detail", async (req, res) => {
  con.query(
    "SELECT * FROM `mansiondetail` WHERE 1",
    (err, result) => {
      if (err) throw err;
      res.send(result);
    }
  );
});

app.listen(port, () => {
  console.log(`Listening at http://localhost:${port}`);
});

// app.get("/api/Exdata/add-billdata", async (req, res) => {
//   const m = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
//   const y = [2021, 2022, 2023]
//   y.forEach((y) => {
//     m.forEach(async (m) => {
//       console.log("INSERT INTO `bill`(`RentingID`, `BillWaterUnit`, `BillElectricUnit`, `BillTotalPrice`, `BillStatusID`, `BillDate`) VALUES (1,10,100,5300,1,'" + y + "-" + m + "-25')")
//       await con.query(
//         "INSERT INTO `bill`(`RentingID`, `BillWaterUnit`, `BillElectricUnit`, `BillTotalPrice`, `BillStatusID`, `BillDate`) VALUES (1,10,100,5300,1,'" + y + "-" + m + "-25')",
//         async (err, result) => {
//           if (err) throw err;
//           // await res.send(result);
//         })
//     })
//   })
// })
// const m = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
// const y = [2013,2014,2015, 2016, 2027]
// y.forEach((y) => {
//   m.forEach(async (m) => {
//     console.log("INSERT INTO `bill`(`RentingID`, `BillWaterUnit`, `BillElectricUnit`, `BillTotalPrice`, `BillStatusID`, `BillDate`) VALUES (1,10,100,5300,1,'" + y + "-" + m + "-25')")
//     await con.query(
//       "INSERT INTO `bill`(`RentingID`, `BillWaterUnit`, `BillElectricUnit`, `BillTotalPrice`, `BillStatusID`, `BillDate`) VALUES (1,10,100,5300,1,'" + y + "-" + m + "-25')",
//       async (err, result) => {
//         if (err) throw err;
//         // await res.send(result);
//       })
//   })
// })