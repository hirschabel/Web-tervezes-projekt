const Pool = require("pg").Pool;

const pool = new Pool({
    user: 'xxfbwwgpetfubp',
    host: 'ec2-52-19-164-214.eu-west-1.compute.amazonaws.com',
    database: 'd9nbf3dumfukio',
    password: '4dd273c9b0b084c5a0c735e895cde2d584f26eaae497583e17acb322da84bcb2',
    port: 5432,
    ssl: {
      rejectUnauthorized: false
    }
  });

module.exports = pool;