const express = require("express");
const pool = require("../config/db");
const router = express.Router();
const GuestDAO = require('../dao/guest-dao');

router.get("/", async (req, res) => {
	return res.render("index");
});

router.get("/register", async (req, res) => {
	return res.render("register-guest");
});

router.get("/db", async (req, res) => {
	pool.connect();
	return res.render("register-guest");
});

router.get("/login", async (req, res) => {
	return res.render("login-guest");
});

router.get("/profile", async (req, res) => {
	return res.render("profile-user");
});

module.exports = router;