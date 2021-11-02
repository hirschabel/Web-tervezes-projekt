const db = require('../config/db');

class GuestDAO {
	async getProducts() {
		let result = await db.query(`SELECT * FROM termek`).catch(console.log);
		return result.rows;
	}

	async getOneProduct(nev) {
		let result = await db.query(`SELECT * FROM termek WHERE nev = $1`,[nev]).catch(console.log);
		return result.rows[0];
	}
};

module.exports = GuestDAO;