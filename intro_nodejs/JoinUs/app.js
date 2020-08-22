var express = require('express');
var app = express();
var mysql = require('mysql');
var bodyParser = require("body-parser");

app.set("view engine", "ejs");
app.use(bodyParser.urlencoded({extended: true}));
app.use(express.static(__dirname + "/public"));

var connection = mysql.createConnection({
	host		: 'localhost',
	user		: 'root',
	database	: 'join_us'
})

app.get("", function(request, response){
	// console.log("Someone requested us!");
	// Find count of users in the database
	var q = "SELECT COUNT(*) AS usercount FROM users";
	connection.query(q, function(error, results){
		if (error) throw error;
		var count = results[0].usercount;
		// response.send("We have " + count + " users in our database.");
		response.render("home", {data: count});
	});
	// Respond with that count
	// response.send("You've reached the home page.");
});

app.get("/joke", function(req, res){
    var joke = "<strong> What do you call a dog that does magic tricks? </strong> <em> A labracadabrador. </em>";
    // console.log("Requested the joke route.");
	res.send(joke);
});

app.post("/register", function(req, res){
	// console.log("Post request sent to /register email is " + req.body.email);
	var person = {email: req.body.email};
	connection.query('INSERT INTO users SET ?', person, function(err, result){
		if (err) throw err;
		// console.log(result);
		// res.send("Thanks for joining our wait list!");
		res.redirect("/");
	});
});

app.get("/random_number", function(req, res){
	var num = Math.floor((Math.random() * 10) + 1);
	res.send("Your lucky number is: " + num);
});

app.listen(3000, function(){
	console.log("Server running on 3000!");
});