const cors = require('cors')
const express = require('express');
const bodyParser = require('body-parser');
const jwt = require('jsonwebtoken');
const router = express.Router();
const config = require('./config');
const utils = require('./utils');
const tokenList = {};
const app = express();
const MongoClient = require('mongodb').MongoClient;
const mongoose = require('mongoose')
const assert = require('assert');
const url = 'mongodb://localhost:27018';
const dbName = 'qlns';
const crypto = require('crypto');
const http = require('http');
const https = require('https');
const { json } = require('body-parser');


app.use(cors())
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
router.get('/', (req, res) => {
    res.render('index', {});
});

/**
 * Login User Interface
 * Author: Thi Nguyễn
 */
// app.get('/', (req, res) => {
//     // Check token
//     // Exist token
//         // redirect time.my
//     // Not exist token 
//         // Login
//     res.sendFile('public/index.html', { root: __dirname });
// })

/**
 * Login
 * Author: Thi Nguyễn
 * Req: {
 *      'UserName',
 *      'Password'
 * }
 */
app.post('/', function(req, res) {
    // Get Parameter
    const UserName = req.body.uname;
    const Password = req.body.pass

    // Check login
    const client = new MongoClient(url);
    client.connect(function(err) {
        console.log("👽 _Connected_ 👽");
        var hash = crypto.createHash('sha256')
                            .update(Password)
                            .digest("hex");
        const db = client.db(dbName);
        db.collection('tbl_taikhoan',  { useUnifiedTopology: true }, function (err, collection) {
            collection.aggregate([
                { 
                    $lookup: {
                        from: 'dm_quyen',
                        localField: 'FK_iQuyenID',
                        foreignField: '_id',
                        as: 'quyen'
                    }
                },
                {
                    $unwind: "$quyen"
                },
                { 
                    $lookup:{
                        from: "dm_trangthai_taikhoan", 
                        localField: "FK_iTrangthaiTaikhoan", 
                        foreignField: "_id",
                        as: "taikhoan"
                    }
                },
                {
                    $unwind: "$taikhoan"
                },
                { 
                    $lookup:{
                        from: "tbl_nhanvien", 
                        localField: "FK_iNhanvienID", 
                        foreignField: "_id",
                        as: "nhanvien"
                    }
                },
                {
                    $unwind: "$nhanvien"
                },
                {
                    $match: {
                        "sTenTaikhoan": UserName,
                        "sMatkhau": hash,
                    }
                }
                ]).toArray(function(err, items) {
                if(err) throw err;    
                if (items.length > 0){
                    it = items[0];
                    var query = {
                        'PK_iTaikhoanID': it._id,
                        'sTenTaikhoan': UserName,
                        'FK_iQuyenID': it.FK_iQuyenID,
                        'FK_iTrangthaiTaikhoan': it.taikhoan.PK_iTrangthaiTaikhoanID,
                    }
                    console.log("👽 _User: " + UserName + " logged_ 👽");
                    const token = jwt.sign(query, config.secret, {
                        expiresIn: config.tokenLife,
                    });
                    // Tạo một mã token khác - Refresh token
                    const refreshToken = jwt.sign(query, config.refreshTokenSecret, {
                        expiresIn: config.refreshTokenLife
                    });
                    // Lưu lại mã Refresh token, kèm thông tin của user để sau này sử dụng lại
                    tokenList[refreshToken] = query;
                
                    // Trả lại cho user thông tin mã token kèm theo mã Refresh token
                    query.sTenTrangthaiTaikhoan = it.taikhoan.sTenTrangthaiTaikhoan;
                    query.quyen = it.quyen.sTenQuyen;
                    query.sHoten = it.nhanvien.sHoten;
                    query.PK_iNhanvienID = it.nhanvien._id;

                    const response = {
                        token,
                        refreshToken,
                        query
                    }
                    res.json(response);
                } else {
                    console.log("💀 _Login false_ 💀");
                    console.log("💀💀💀💀💀💀💀💀💀💀");
                    res.json(false);
                }
            });
        });
        client.close();
    });
})

/**
 * Login
 * Author: Thi Nguyễn
 */
app.post('/Request', (req, _res) => {
    if (!check_token(req.body.token)) {
        console.log("💀 _token invalid_ 💀");
        _res.send("token invalid");
        return;
    }
    // Get Parameter
    const url = req.body.url;
    const data = req.body.data
    const method = req.body.method
    var request = require('request');
    process.env["NODE_TLS_REJECT_UNAUTHORIZED"] = 0;
    if (method == 'GET') {
        request.get({url: encodeURI(url)}, function(err, response, body) {
            if(err) { 
                _res.send('error_request');
                console.log(err);
                console.log('💀 _Error Request_ 💀'); return; 
            }
            _res.send(body);
        });
    } else {
        var options = {
            uri: url,
            method: 'POST',
            json: data
        };
        request(options, function(err, response, body) {
            if(err) { 
                console.log('💀 _Error Request_ 💀'); return; 
            }
            const parsed = parseInt(body);
            if (isNaN(parsed)) { 
                _res.send(body);
            } else {
                _res.send(body + "");
            }
        });
    }
})

/**
 * Login
 * Author: Thi Nguyễn
 */
function check_token(token) {
    if(typeof(tokenList[token]) !== 'undefined')
    {  
        return true;
    } else {
        return false;
    }
}


/**
 * Đăng nhập
 * POST /login
 */
router.post('/login', (req, res) => {
    const postData = req.body;
    const user = postData

    // Thực hiện việc kết nối cơ sở dữ liệu (hay tương tự) để kiểm tra thông tin username and password
    // Đăng nhập thành công, tạo mã token cho user
    const token = jwt.sign(user, config.secret, {
        expiresIn: config.tokenLife,
    });

    // Tạo một mã token khác - Refresh token
    const refreshToken = jwt.sign(user, config.refreshTokenSecret, {
        expiresIn: config.refreshTokenLife
    });

    // Lưu lại mã Refresh token, kèm thông tin của user để sau này sử dụng lại
    tokenList[refreshToken] = user;

    // Trả lại cho user thông tin mã token kèm theo mã Refresh token
    const response = {
        token,
        refreshToken,
    }

    res.json(response);
})

/**
 * Lấy mã token mới sử dụng Refresh token
 * POST /refresh_token
 */
router.post('/refresh_token', async (req, res) => {
    // User gửi mã Refresh token kèm theo trong body
    const { refreshToken } = req.body;

    // Kiểm tra Refresh token có được gửi kèm và mã này có tồn tại trên hệ thống hay không
    if ((refreshToken) && (refreshToken in tokenList)) {

        try {
            // Kiểm tra mã Refresh token
            await utils.verifyJwtToken(refreshToken, config.refreshTokenSecret);

            // Lấy lại thông tin user
            const user = tokenList[refreshToken];

            // Tạo mới mã token và trả lại cho user
            const token = jwt.sign(user, config.secret, {
                expiresIn: config.tokenLife,
            });
            const response = {
                token,
            }
            res.status(200).json(response);
        } catch (err) {
            console.error(err);
            res.status(403).json({
                message: 'Invalid refresh token',
            });
        }
    } else {
        res.status(400).json({
            message: 'Invalid request',
        });
    }
});

/**
 * Middleware xác thực người dùng dựa vào mã token
 * @param {*} req 
 * @param {*} res 
 * @param {*} next 
 */
const TokenCheckMiddleware = async (req, res, next) => {
    // Lấy thông tin mã token được đính kèm trong request
    const token = req.body.token || req.query.token || req.headers['x-access-token'];
    // decode token
    if (token) {
        // Xác thực mã token và kiểm tra thời gian hết hạn của mã
        try {
            const decoded = await utils.verifyJwtToken(token, config.secret);

            // Lưu thông tin giã mã được vào đối tượng req, dùng cho các xử lý ở sau
            req.decoded = decoded;
            next();
        } catch (err) {
            // Giải mã gặp lỗi: Không đúng, hết hạn...
            console.error(err);
            return res.status(401).json({
                message: 'Unauthorized access.',
            });
        }
    } else {
        // Không tìm thấy token trong request
        return res.status(403).send({
            message: 'No token provided.',
        });
    }
}

router.use(TokenCheckMiddleware);

router.get('/profile', (req, res) => {
    // all secured routes goes here
    res.json(req.decoded)
})

app.use('/api/authentication', router);
app.use(express.static(__dirname + '/public'));

const listener = app.listen(config.port || process.env.PORT || 3080, () => {
    console.log('Start at: http://localhost:' + listener.address().port);
});