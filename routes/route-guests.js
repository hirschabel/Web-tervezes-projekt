const express = require("express");
const pool = require("../config/db");
const router = express.Router();
const GuestDAO = require('../dao/guest-dao');

router.get("/", async (req, res) => {
	let termekek = await new GuestDAO().getProducts();
	return res.render("index", {termekek : termekek});
});

router.get("/register", async (req, res) => {
	return res.render("register");
});

router.get("/login", async (req, res) => {
	return res.render("login");
});

router.get("/profile", async (req, res) => {
	return res.render("profile");
});

router.get("/product/:nev", async (req, res) => {
	let nev = req.params.nev;
	let termek = await new GuestDAO().getOneProduct(nev);
	return res.render("product", {termek : termek});
});

router.get("/product-update/:nev", async (req, res) => {
	let nev = req.params.nev;
	let termek = await new GuestDAO().getOneProduct(nev);
	return res.render("product-update", {termek : termek});
});


router.post("/update/:nev", async (req, res) => {
    let nev = req.params.nev;
	let {ar} = req.body;
	let {leiras} = req.body;
	let {kep} = req.body;
	await new GuestDAO().updateProduct(nev, ar, leiras, kep);
    res.redirect("/");
});

router.post("/delete/:nev", async (req, res) => {
    let nev = req.params.nev;
	await new GuestDAO().deleteDog(nev);
    res.redirect("/");
});


module.exports = router;