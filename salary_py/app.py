from flask import Flask, jsonify
from pymongo import MongoClient
import json
from bson.json_util import dumps, loads 
import requests
from flask import request
from datetime import date

URLLLL = 'https://localhost:5001/'
app = Flask(__name__)
client = MongoClient(port=27017)
db=client.salary
HDLD = db.tbl_hopdong_laodong
KTKL = db.tbl_khenthuong_kyluat
StatusKTKL = db.dm_trangthai_khenthuong_kyluat
TypeKTKL = db.dm_loaikhenthuong_kyluat

@app.route('/UpdateSalary', methods = ['GET', 'POST'])
def UpdateSalary():
    # Get Request
    data = request.json
    id = data['id']
    new_salary = data['salary']
    endtime = data['endtime']

    # Get Data
    last_hd = HDLD.find_one({}, {"PK_iHopdongLaodongID": 1}, sort=[("PK_iHopdongLaodongID", -1)])
    hd = HDLD.find_one({"PK_iHopdongLaodongID": int(id)})

    # Config Data
    hd['PK_iHopdongLaodongID'] = int(last_hd["PK_iHopdongLaodongID"]) + 1
    hd['iLuongCoban'] = int(new_salary)
    hd.pop('_id', None)

    # Insert New
    x = HDLD.insert_one(hd)
    
    # Update
    query = { "PK_iHopdongLaodongID": int(id) }
    newvalues = { "$set": { "dNgayHetHan": endtime } }
    HDLD.update_one(query, newvalues)

    return str(x.inserted_id)

@app.route('/SalaryProcess', methods = ['GET', 'POST'])
def SalaryProcess():
    # Get Request
    data = request.json
    id = data['id']

    # Get Data
    if id != 0:
        hd = HDLD.find({"FK_iNhanvienID": int(id)})
    else:
        hd = HDLD.find({"dNgayHetHan": ""})

    # Parse To Json
    list_hd = list(hd)
    json_data = dumps(list_hd)
    return json_data

@app.route('/GetKTKL', methods = ['GET', 'POST'])
def GetKTKL():
    # Get Request
    # data = request.json
    # id = data['id']
    id = 0
    # Get Data
    if id != 0:
        ktkl = KTKL.find({"FK_iNhanvienID": int(id)})
    else:
        ktkl = KTKL.find()

    # Parse To Json
    list_ktkl = list(ktkl)
    json_data = dumps(list_ktkl)
    return json_data

@app.route('/GetStatusKTKL', methods = ['GET', 'POST'])
def GetStatusKTKL():
    # Get Data
    ktkl = StatusKTKL.find()

    # Parse To Json
    list_ktkl = list(ktkl)
    json_data = dumps(list_ktkl)
    return json_data

@app.route('/GetTypeKTKL', methods = ['GET', 'POST'])
def GetTypeKTKL():
    # Get Data
    ktkl = TypeKTKL.find()

    # Parse To Json
    list_ktkl = list(ktkl)
    json_data = dumps(list_ktkl)
    return json_data

@app.route('/DuyetKTKL', methods = ['GET', 'POST'])
def DuyetKTKL():
    # Get Request
    data = request.json
    id = data['id']
    
    # Update
    query = { "PK_iKhenthuongKyluatID": int(id) }
    newvalues = { "$set": { "iTrangthai": 2 } }
    KTKL.update_one(query, newvalues)

    return "true"

@app.route('/AddKTKL', methods = ['GET', 'POST'])
def AddKTKL():
    # Get Request
    data = request.json
    tieude = data['tieude']
    kinhphi = data['kinhphi']
    loai = data['loai']
    noidung = data['noidung']
    nguoilap = data['nguoilap']
    today = date.today()
    d1 = today.strftime("%d/%m/%Y")

    # Get Data
    last_KTKL = KTKL.find_one({}, {"PK_iKhenthuongKyluatID": 1}, sort=[("PK_iKhenthuongKyluatID", -1)])
    last_ID = last_KTKL['PK_iKhenthuongKyluatID']

    # Config data
    data_add = {
        "PK_iKhenthuongKyluatID": int(last_ID) + 1,
        "sTieude": tieude,
        "sNoidung": noidung,
        "FK_iLoaiKhenthuongKyluatID": loai,
        "FK_iNguoiLapID": nguoilap,
        "tThoigianLap": d1,
        "FK_iNguoiduyetID": 0,
        "tThoigianDuyet": "",
        "iKinhphi": kinhphi,
        "sGhichu": "",
        "iTrangthai": 1
    }

    # INSERT
    x = KTKL.insert_one(data_add)
    return str(x.inserted_id)

@app.route('/Insert', methods = ['GET', 'POST'])
def Insert():
    data = {
        "PK_iKhenthuongKyluatID": 1,
        "sTieude": 1,
        "sNoidung": 2,
        "FK_iLoaiKhenthuongKyluatID": 1,
        "FK_iNguoiLapID": 1,
        "tThoigianLap": "13/03/2021",
        "FK_iNguoiduyetID": 2,
        "tThoigianDuyet": "13/03/2021",
        "iKinhphi": 80000,
        "sGhichu": ""
    }

    # Parse To Json
    x = KTKL.insert_one(data)
    return x.inserted_id

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=4900)