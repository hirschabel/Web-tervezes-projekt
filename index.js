const express = require("express");
const path = require("path");
const { Pool } = require("pg");
const app = express();
const routeGuest = require('./routes/route-guests.js');
const routeUser = require('./routes/route-users.js');
const routeAdmin = require('./routes/route-admins.js');
const PORT  = process.env.PORT || 8080;

app.set("view engine", "ejs");
app.set("views", path.join(__dirname, "views"));
app.use(express.static(path.join(__dirname, "public")));
app.use(express.urlencoded({ extended: false }));
app.use(routeGuest);
app.use(routeUser);
app.use(routeAdmin);


app.listen(PORT, () => {
  console.log("App listening at: http://localhost:8080/");
});