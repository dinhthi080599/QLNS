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
var mysql = require('mysql');
var con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "qlns",
    database: "ql_nhansu"
});

// For execute query
var execute = function (query) {
    // UPDATE DATA
    con.connect(function(err) {
        if (err) throw err;
        con.query(sql, function (err, result) {
        if (err) throw err;
            console.log("🤖 _" + result.affectedRows + " Record Update_ 🤖");
        });
    });
}

// For update
module.exports.Update = function (msg) { 
    const CHANGE = msg.updateDescription.updatedFields;
    const table_name = msg.ns.coll;
    const _id = msg.documentKey._id;
    var sql = `UPDATE ${table_name} SET `;
    for (const [col, value] of Object.entries(CHANGE)) {
        sql += `${col} = '${value}' `
    }
    sql += `WHERE _id = '${_id}'`;
};

// For insert
module.exports.Insert = function (msg) { 
    const INSERT = msg.fullDocument;
    const table_name = msg.ns.coll;
    const column_name = Object.keys(INSERT);
    const column_data = Object.values(INSERT);
    const sql = `INSERT INTO ${table_name} (${column_name.join(",")}) VALUES ('${column_data.join("','")}')`;
    console.log(sql)
};