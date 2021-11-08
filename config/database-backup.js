const { exec } = require('child_process');
const db = require('./db');

let dumpFile = 'dump.sql';

console.log(`Starting exporting data from the ${db.options.database} database`);

exec(`set PGPASSWORD=${db.options.password} pg_dump -p${db.options.port} -h${db.options.host} -U${db.options.user} ${db.options.database} > ${dumpFile}`,  (err, stdout, stderr) => {
	if (err) { console.error(`exec error: ${err}`); return; }
	
	console.log(`Now, importing data to the ${db.options.database} database`);
    
	exec(`set PGPASSWORD=${db.options.password} psql -p${db.options.port} -h${db.options.host} -U${db.options.user} ${db.options.database} < ${dumpFile}`, (err, stdout, stderr) => {
        if (err) { console.error(`exec error: ${err}`); return; }

        console.log(`The import has finished.`);
	});

});