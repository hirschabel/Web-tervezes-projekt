const db = require('../config/db');

class GuestDAO {
	async getProducts() {
		let result = await db.query(`SELECT * FROM termek`).catch(console.log);
		return result.rows;
	}

	async getKosar(felh_id) { //NINCS FELHASZNALO
		let result = await db.query(`SELECT termek.nev, termek.ar, darab FROM kosar, termek WHERE felh_id = ${felh_id} AND kosar.termek_nev = termek.nev;`).catch(console.log);
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

	async kosarba(felh_id, nev) { //5. felhasznalo ID, mert a felhasznalok meg nincsenek implementalva
		await db.query(`INSERT INTO kosar(felh_id, termek_nev, darab) VALUES ('${felh_id}', '${nev}', 1);`).catch(console.log);
		return;
	}

	async kosarModosit(felh_id, nev, darab, operation) {
		if (operation == '+') {
			await db.query(`UPDATE kosar SET darab = ${parseInt(darab) + 1} WHERE felh_id = ${felh_id} AND termek_nev = '${nev}'`).catch(console.log);
		} else if (operation == '-' && darab > 1) {
			await db.query(`UPDATE kosar SET darab = ${parseInt(darab) - 1} WHERE felh_id = ${felh_id} AND termek_nev = '${nev}'`).catch(console.log);
		} else if (operation == 'd') {
			await db.query(`DELETE FROM kosar WHERE felh_id = ${felh_id} AND termek_nev = '${nev}'`).catch(console.log);
		}
		return;
	}

	async rendelesLetrehozas(felh_id, szall_cim, vegosszeg) {
		await db.query(`INSERT INTO rendeles(felh_id, szall_cim, vegosszeg) VALUES (${felh_id}, '${szall_cim}', ${vegosszeg})`).catch(console.log);
		//await db.query(`INSERT INTO rendelt_kosar(rendeles_id, termek_nev, darab)SELECT (SELECT id FROM rendeles ORDER BY id DESC LIMIT 1), kosar.termek_nev, kosar.darab FROM kosar, rendeles WHERE kosar.felh_id = rendeles.felh_id;`).catch(console.log);
		await db.query(`INSERT INTO rendelt_kosar(rendeles_id, termek_nev, darab)SELECT (SELECT id FROM rendeles ORDER BY id DESC LIMIT 1), kosar.termek_nev, kosar.darab FROM kosar WHERE kosar.felh_id = (SELECT felh_id FROM rendeles WHERE id = (SELECT id FROM rendeles ORDER BY id DESC LIMIT 1));`).catch(console.log);
		await db.query(`DELETE FROM kosar WHERE felh_id = ${felh_id}`).catch(console.log);
		return;
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