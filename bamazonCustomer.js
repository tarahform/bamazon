var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
    host: "localhost",

    port: 3306,

    user: "root",

    password: "root",
    database: "bamazondb"
});

connection.connect(function (err) {
    if (err) throw err;
    console.log("connected as id " + connection.threadId);
    start();
});

function start() {
    connection.query("SELECT * FROM products", function (err, data) {
        for (var i = 0; i < data.length; i++) {
            // console.log(data[i]);
            console.log(`${data[i].item_id} | ${data[i].product_name} | ${data[i].department_name} | ${data[i].price} | ${data[i].stock_quantity}`);
        };

        inquirer.prompt([
            {
                type: "input",
                name: "productid",
                message: "What is the ID of the product you would like to purchase?"
            },
            {
                type: "input",
                name: "quantity",
                message: "Please input a quantity?"
            }
        ]).then(function (response) {
            connection.query("SELECT * FROM products WHERE item_id = ?", [response.productid], function (err, data) {
                // console.log(response);
                if (err) {
                    throw err;
                }
                if (response.quantity > data[0].stock_quantity) {
                    console.log("Insufficient quantity!");
                    start
                } else {
                    var newStock = data[0].stock_quantity - response.quantity;
                    var total = (data[0].price * response.quantity).toFixed(2);
                    connection.query("UPDATE products SET stock_quantity = ? WHERE item_id = ?", [newStock, response.productid], function (err, data) {
                        if (err) {
                            console.log("update");
                            throw err;
                        }
                        console.log("Purchase Successful.");
                        console.log("Total Purchase: " + total);
                        start()
                    });
                }
            });
        });
    })
};

