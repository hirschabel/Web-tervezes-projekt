const db = require('../config/db');

class GuestDAO {
	async getProducts() {
		let result = await db.query(`SELECT * FROM termek`).catch(console.log);
		return result.rows;
	}

	async getTags() {
		let result = await db.query(`SELECT * FROM tagek`).catch(console.log);
		return result.rows;
	}

	async getOneProduct(nev) {
		let result = await db.query(`SELECT * FROM termek WHERE nev = $1`,[nev]).catch(console.log);
		return result.rows[0];
	}

	async getNevProduct(nev) {
		let result = await db.query(`SELECT * FROM termek WHERE nev = $1`,[nev]).catch(console.log);
		return result.rows;
	}

	async updateProduct(nev, ar, leiras, kep) {
		await db.query(`UPDATE termek SET ar = $1, leiras = $2, kep = $3 WHERE nev = $4`, [parseInt(ar), leiras, kep, nev]).catch(console.log);
		return;
	}

	async deleteDog(nev) {
		await db.query(`DELETE FROM termek WHERE nev=$1`,[nev]).catch(console.log);
        return; 
	}

	async getTagsByID(tag_nev) {
		let result = await db.query(`SELECT termek.nev, termek.ar, termek.leiras, termek.kep FROM tagek, tag_kapcs, termek WHERE tagek.id = tag_kapcs.id AND tag_kapcs.nev = termek.nev AND tagek.nev = '${tag_nev}';`).catch(console.log);
		return result.rows;
	}
};

module.exports = GuestDAO;