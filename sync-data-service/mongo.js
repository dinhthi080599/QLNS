const { MongoClient } = require("mongodb");
// Replace the uri string with your MongoDB deployment's connection string.
const uri = 'mongodb://localhost:27011'; //,localhost:27012,localhost:27013/qlns?replicaSet=rs0';
const client = new MongoClient(uri);
let changeStream;
async function run() {
  try {
    await client.connect();
    const database = client.db("qlns");
    const movies = database.collection("tbl_luong");
    // open a Change Stream on the "movies" collection
    changeStream = movies.watch();
    // // set up a listener when change events are emitted
    changeStream.on("change", next => {
    //   // process any change event
      console.log("received a change to the collection: \t", next);
    });
    // // use a timeout to ensure the listener is registered before the insertOne
    // // operation is called.
    await new Promise(resolve => {
      setTimeout(async () => {
        await movies.insertOne({
          test: "sample movie document",
        });
        // wait to close `changeStream` after the listener receives the event
        setTimeout(async () => {
          resolve(await changeStream.close());
        }, 1000);
      }, 1000);
    });
  } finally {
    await client.close();
  }
}
run().catch(console.dir);