var mysql = require('mysql');
var inquirer = require('inquirer');
var http = require('http');

// var server = http.createServer(handleRequest);
var connection = mysql.createConnection({
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: 'Tokiohotel97',
    database: 'Bamazon'
});



///////////////
// FUNCTIONS //
///////////////


// Connects to database and console logs connection
connection.connect(function(err) {
    if (err) throw err;
    console.log("Connected as id " + connection.threadId);
    start();
})


// Starts Bamazon 
var start = function() {
    connection.query('SELECT * FROM products', function(err, res) {
        for (var i = 0; i < res.length; i++) {
            console.log('');
            console.log('Department Name: ' + res[i].departmentName);
            console.log('Item Id: ' + res[i].itemID + '|' + ' Product: ' + res[i].productName + '|' + ' Price: $' + res[i].price + '|' + ' In Stock: ' + res[i].stockQuantity);
            console.log('-----------------------------------------------------------------------');
        }
        purchaseItem();
    })

}

// Function to purchase an item.
var purchaseItem = function() {
    inquirer.prompt([{
        name: "itemID",
        type: "input",
        message: "What item would you like to purchase? Select using ID.",
        validate: function(value) {
            var valid = value.match(/^[0-9]+$/)
            if (valid) {
                return true
            }
            return 'Please enter a valid Product ID'
        }

    }, {
        name: "stockQuantity",
        type: "input",
        message: "How many would you like to purchase?",
        validate: function(value) {
            var valid = value.match(/^[0-9]+$/)
            if (valid) {
                return true
            }
            return 'Please enter a valid quantity.'
        }

    }]).then(function(answer) {
        connection.query('SELECT * FROM products WHERE itemID = ?', [answer.itemID], function(err, res) {
            console.log(res);
            if (answer.stockQuantity > res[0].stockQuantity) {
                console.log('Not enough in stock');
                console.log('Go on, git!');
                quitBamazon();
            } else {
                priceTotal = res[0].price * answer.stockQuantity;
                currentDepartment = res[0].departmentName;
                console.log('Your Total Amount is $' + priceTotal);
                console.log('Thanks for your order');
                console.log('');
                var math = res[0].stockQuantity - parseInt(answer.stockQuantity);
                connection.query('UPDATE products SET stockQuantity= ' + math + ' WHERE itemID =' + answer.itemID);
                quitBamazon();
            }
        });
    });

};


// Function to quit Bamazon
var quitBamazon = function() {
    connection.end();
}