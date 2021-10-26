const express = require("express");
const router = express.Router();
const GuestDAO = require('../dao/guest-dao');

router.get("/", async (req, res) => {
	return res.render("index");
});

router.get("/register", async (req, res) => {
	return res.render("register-guest");
});

router.get("/login", async (req, res) => {
	return res.render("profile-user");
});

router.get("/profile", async (req, res) => {
	return res.render("profile-user");
});

module.exports = router;