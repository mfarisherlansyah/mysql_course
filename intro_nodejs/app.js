var faker = require('faker');
var mysql = require('mysql');

var connection = mysql.createConnection({
	host		: 'localhost',
	user		: 'root',
	database	: 'join_us'
})

// var q = 'SELECT CURTIME() AS time, CURDATE() AS date, NOW() AS now';
// var q = 'SELECT * FROM users';

// var q = 'SELECT COUNT(*) AS total FROM users';

// connection.query(q, function(error, results, fields){
// 	if (error) throw error;
// 	console.log(results[0].total);
// 	// console.log(results[1].email);
// 	// console.log(results.length);
// 	// console.log(results[0].time);
// 	// console.log(results[0].date);
// 	// console.log(results[0].now);
// });

// connection.end();

// INSERTING USERS DATA

// var q = 'INSERT INTO users(email) VALUES ("rustythedog@gmail.com")';

// connection.query(q, function(error, results, fields){
// 	if (error) throw error;
// 	console.log(results);
// });

// var person = {email: 'Jenny467@gmail.com'};
// var person = {email: faker.internet.email(), created_at: faker.date.past()};

// connection.query('INSERT INTO users SET ?', person, function(error, result){
// 	if (error) throw error;
// 	console.log(result);
// });

// connection.end();

// INSERTING LOTS OF DATA

// var data = [
//     ['blah@gmail.com', '2017-05-01 03:51:37'],
//     ['ugh@gmail.com', '2017-05-01 03:51:37'],
//     ['meh@gmail.com', '2017-05-01 03:51:37']
// ];

var data = [];

for(var i = 0; i < 500; i++){
	data.push([
		faker.internet.email(), faker.date.past()
	])
};

// console.log(data);

var q = 'INSERT INTO users (email, created_at) VALUES ?';

connection.query(q, [data], function(error, result) {
  console.log(error);
  console.log(result);
});

connection.end();

// console.log(faker.internet.email());
// console.log(faker.date.past());

// function generateAddress() {
// 	console.log(faker.address.streetAddress());
// 	console.log(faker.address.city());
// 	console.log(faker.address.state());
// }

// generateAddress();