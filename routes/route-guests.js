const express = require("express");
const pool = require("../config/db");
const router = express.Router();
const GuestDAO = require('../dao/guest-dao');

router.get("/", async (req, res) => {
	return res.render("index");
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

router.get("/product", async (req, res) => {
	return res.render("product");
});

router.get("/payment", async (req, res) => {
	return res.render("payment");
});

module.exports = router;