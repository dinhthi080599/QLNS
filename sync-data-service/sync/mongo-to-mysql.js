/** tbl_nhanvien
 *  
 * FK_iDantocID
 * FK_iTongiaoID
 * sMasothue
 * sTrinhdoVanhoa
 * sMotaBanthan
 * sDuongdanSoyeuLylich
 * sNoicapCMND
 * dNgaycapCMND
 * sCMND
 * 
 */

/** tbl_bophan
 *  
 * __v
 * 
 */

// For update
module.exports.Update = function (msg) { 
    const column_not_sync = require('../config/database').column_not_sync;
    var mysql = require('mysql');
    var con = mysql.createConnection({
        host: "localhost",
        user: "root",
        password: "",
        database: "qlns"
    });
    const CHANGE = msg.updateDescription.updatedFields;
    column_not_sync.forEach(
        element => {
            delete CHANGE[element];
        }
    );
    if (Object.keys(CHANGE).length != 0) {
        const table_name = msg.ns.coll;
        const _id = msg.documentKey._id;
        var sql = `UPDATE ${table_name} SET `;
        for (const [col, value] of Object.entries(CHANGE)) {
            sql += `${col} = '${value}' `
        }
        sql += `WHERE _id = '${_id}'`;
        con.connect(function(err) {
            if (err) throw err;
            con.query(sql, function (err, result) {
                if (err) throw err;
                console.log("🤖 _" + result.affectedRows + " Record Update_ 🤖");
            });
        });
    }
};

// For insert
module.exports.Insert = function (msg) { 
    const column_not_sync = require('../config/database').column_not_sync;
    var mysql = require('mysql');
    var con = mysql.createConnection({
        host: "localhost",
        user: "root",
        password: "",
        database: "qlns"
    });
    const INSERT = msg.fullDocument;
    const table_name = msg.ns.coll;
    column_not_sync.forEach(
        element => {
            delete INSERT[element];
        }
    );
    const column_name = Object.keys(INSERT);
    const column_data = Object.values(INSERT);
    const sql = `INSERT INTO ${table_name} (${column_name.join(",")}) VALUES ('${column_data.join("','")}')`;
    con.connect(function(err) {
        if (err) throw err;
        con.query(sql, function (err, result) {
            if (err) throw err;
            console.log("🤖 _" + result.affectedRows + " Record Insert_ 🤖");
        });
    });
};

// For Delete
module.exports.Delete = function (msg) { 
    var mysql = require('mysql');
    var con = mysql.createConnection({
        host: "localhost",
        user: "root",
        password: "",
        database: "qlns"
    });
    const table_name = msg.ns.coll;
    const _id = msg.documentKey._id;
    const sql = `DELETE FROM ${table_name} WHERE _id = '${_id}'`;
    con.connect(function(err) {
        if (err) throw err;
        con.query(sql, function (err, result) {
            if (err) throw err;
            console.log("🤖 _" + result.affectedRows + " Record Delete_ 🤖");
        });
    });
};