// [Require Library]
const mysql = require('mysql');
const MySQLEvents = require('@rodrigogs/mysql-events');
const ora = require('ora'); // cool spinner
const { MongoClient } = require("mongodb");
const SyncMoTMy = require("./sync/mongo-to-mysql")
// [End require library]

// [Define parameter]
const spinner = ora({
    text: '🛸 Waiting for database events... 🛸',
    color: 'blue',
    spinner: 'dots2'
});
const uri = 'mongodb://localhost:27018'; //,localhost:27019,localhost:27020/qlns?replicaSet=rs0';
// [End define parameter]

const program = async () => {
    // [Sync Mysql]
    const connection = mysql.createConnection({
        host: 'localhost',
        user: 'root',
        password: 'qlns'
    });

    const instance = new MySQLEvents(connection, {
        startAtEnd: true // to record only the new binary logs, if set to false or you didn'y provide it all the events will be console.logged after you start the app
    });

    await instance.start();

    instance.addTrigger({
        name: 'monitoring all statments',
        expression: 'db_qlns.*', // listen to TEST database !!!
        statement: MySQLEvents.STATEMENTS.ALL, // you can choose only insert for example MySQLEvents.STATEMENTS.INSERT, but here we are choosing everything
        onEvent: e => {
            console.log(e.affectedRows);
            spinner.succeed('👽 _EVENT_ 👽');
            spinner.start();
        }
    });

    instance.on(MySQLEvents.EVENTS.CONNECTION_ERROR, console.error);
    instance.on(MySQLEvents.EVENTS.ZONGJI_ERROR, console.error);
    // [End sync Mysql]

    // [Sync MongoDB]
    const client = new MongoClient(uri);
    await client.connect();
    const database = client.db("qlns");
    // Define table for sync 
    const tbl_nhanvien = database.collection("tbl_nhanvien");
    const tbl_bophan = database.collection("tbl_bophan");
    const tbl_quatrinh_lamviec = database.collection("tbl_quatrinh_lamviec");
    const tbl_vitri_congviec = database.collection("tbl_vitri_congviec");

    // Listen event change
    NVStream = tbl_nhanvien.watch();
    BPStream = tbl_bophan.watch();
    QTLVStream = tbl_quatrinh_lamviec.watch();
    VTCVStream = tbl_vitri_congviec.watch();
    
    // Handling
    NVStream.on("change", change => {
        console.log(`\n\n🙄 _NV ${change.operationType} 🙄`);
        switch (change.operationType) {
            case 'update': {
                SyncMoTMy.Update(change);
                break;
            }
            case 'insert': {
                SyncMoTMy.Insert(change);
                break;
            }
        }
        console.log(`\nEnd NV ${change.operationType}!`);
    });
    BPStream.on("change", next => {
        console.log("\nBP change\n", next);
    });
    QTLVStream.on("change", next => {
        console.log("\nQTLV change: \n", next);
    });
    VTCVStream.on("change", next => {
        console.log("\nVTCV change: \n", next);
    });
    // [End sync Mongodb]
};

program()
  .then(spinner.start.bind(spinner))
  .catch(console.error);