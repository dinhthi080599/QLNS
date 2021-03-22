const mysql = require('mysql');
const MySQLEvents = require('@rodrigogs/mysql-events');
const ora = require('ora'); // cool spinner
const spinner = ora({
  text: '🛸 Waiting for database events... 🛸',
  color: 'blue',
  spinner: 'dots2'
});

const program = async () => {
  const { MongoClient } = require("mongodb");
// Replace the uri string with your MongoDB deployment's connection string.
const uri = 'mongodb://localhost:27011'; //,localhost:27012,localhost:27013/qlns?replicaSet=rs0';
const client = new MongoClient(uri);
let changeStream;
    await client.connect();
    const database = client.db("qlns");
    const movies = database.collection("tbl_luong");
    changeStream = movies.watch();
    changeStream.on("change", next => {
      console.log("received a change to the collection: \t", next);
    });
};

program()
  .then(spinner.start.bind(spinner))
  .catch(console.error);