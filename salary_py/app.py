from flask import Flask, jsonify
from pymongo import MongoClient
import json
from bson.json_util import dumps, loads 
import requests
from flask import request
from datetime import date
from datetime import datetime
import time

URLLLL = 'https://localhost:5001/'
app = Flask(__name__)
client = MongoClient(port=27017)
db=client.salary
HDLD = db.tbl_hopdong_laodong
KTKL = db.tbl_khenthuong_kyluat
StatusKTKL = db.dm_trangthai_khenthuong_kyluat
TypeKTKL = db.dm_loaikhenthuong_kyluat
LUONG = db.tbl_luong

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

@app.route('/Payroll', methods = ['GET', 'POST'])
def Payroll():
    # Get Request
    data = request.json
    id = data['ListUserID']
    nam = data['year']
    thang = data['month']
    bophan = data['bophan']

    data = json.dumps(data)
    headers={'Content-type':'application/json', 'Accept':'application/json'}
    
    # GET DATA
    hdld = HDLD.find({"FK_iNhanvienID":{"$in":id}, "dNgayHetHan": ""})
    ts = requests.post(URLLLL + "Timesheet/Get", data=data, verify=False, headers=headers)
    tw = requests.get(URLLLL + "TimeWorking?PartID=" + str(bophan), verify=False, headers=headers)
    
    chamcong = ts.content
    lichlamviec = tw.content
    
    DayOfWeak = ['T2', 'T3', 'T4', 'T5', 'T6', 'T7', 'CN']
    dict_chamcong = json.loads(chamcong.decode("UTF-8"))
    d_lichlamviec = json.loads(lichlamviec.decode("UTF-8"))
    d_lichlamviec = d_lichlamviec['timeWorkingList']

    list_hdld = list(hdld)
    # Calculator
    # Tính tiền phạt
    time_late = {}
    workdays = {}
    dict_lichlamviec = {}
    for x in d_lichlamviec:
        dict_lichlamviec[x['sNgayTrongTuan']] = x

    for x in dict_chamcong:
        if int(x['fK_iNhanvienID']) in workdays.keys(): 
            workdays[int(x['fK_iNhanvienID'])] += 1
        else: 
            workdays[int(x['fK_iNhanvienID'])] = 1
        date_time_obj = datetime.strptime(x['dNgayChamcong'], '%d-%m-%Y')
        dayofweek = date_time_obj.weekday()
        llv = dict_lichlamviec[str(dayofweek)]
        if llv['tThoigianBatdauSang'] != "00:00:00":
            vl = to_integer(datetime.strptime(x['tThoigianVaolamSang'], '%H:%M:%S').timetuple())
            bd = to_integer(datetime.strptime(llv['tThoigianBatdauSang'], '%H:%M:%S').timetuple())
            _time_late = vl - bd
            if _time_late > 0:
                if int(x['fK_iNhanvienID']) in time_late.keys(): 
                    time_late[int(x['fK_iNhanvienID'])] += _time_late
                else: 
                    time_late[int(x['fK_iNhanvienID'])] = _time_late


    # Tính lương 
    # Ngày công mặc định: 24
    # 1k/1p tiền phạt đi muộn
    salary = {}
    for x in list_hdld:
        # Tiền lương 1 ngày công
        _salary_per_day = x['iLuongCoban']/24
        _salary = _salary_per_day * workdays[x['FK_iNhanvienID']] - int(time_late[x['FK_iNhanvienID']]/6)*100
        salary[x['FK_iNhanvienID']] = int(_salary)

    # Lưu lương
    list_luong = LUONG.find({"iNam": nam, "iThang": thang}, {"PK_iLuongID": 1})
    dict_id_luong = {}
    for x in list_luong: 
        dict_id_luong[x['PK_iLuongID']] = 1

    aff = 0
    for x in salary:
        # Check exit -> not insert
        if str(nam) + "_" + str(thang) + "_" + str(x) not in dict_id_luong.keys(): 
            data_add = {
                "PK_iLuongID": str(nam) + "_" + str(thang) + "_" + str(x),
                "FK_iNhanvienID": x,
                "FK_iNguoiLapID": 1,
                "tThoigianLap": date.today().strftime("%d-%m-%Y"),
                "iThang": thang,
                "iNam": nam,
                "iPhanhoi": "",
                "iTongluong": salary[x],
                "iTienphat": int(time_late[x]/6)*100
            }
            # INSERT
            x = LUONG.insert_one(data_add)
            aff += 1

    return str(aff)

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
    # data = {
    #     "PK_iKhenthuongKyluatID": 1,
    #     "sTieude": 1,
    #     "sNoidung": 2,
    #     "FK_iLoaiKhenthuongKyluatID": 1,
    #     "FK_iNguoiLapID": 1,
    #     "tThoigianLap": "13/03/2021",
    #     "FK_iNguoiduyetID": 2,
    #     "tThoigianDuyet": "13/03/2021",
    #     "iKinhphi": 80000,
    #     "sGhichu": ""
    # }
    # Parse To Json
    # x = KTKL.insert_one(data)
    # return x.inserted_id
    return "123123"


@app.route('/GetPayroll', methods = ['GET', 'POST'])
def GetPayroll():
    # Get Request
    data = request.json
    nam = data['year']
    thang = data['month']
    luong = LUONG.find({"iNam": nam, "iThang": thang})
    # Parse To Json
    # Parse To Json
    list_ktkl = list(luong)
    json_data = dumps(list_ktkl)
    return json_data

def to_integer(dt_time):
    return dt_time.tm_hour * 3600 + dt_time.tm_min * 60 + dt_time.tm_sec

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=4900)