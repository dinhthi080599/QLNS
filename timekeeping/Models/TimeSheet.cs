using System;
using System.Text;
using System.Collections;
using System.IO;
using System.Collections.Generic;
using Npgsql;
using Newtonsoft.Json;

namespace timekeeping.Models
{
    public class TimeSheet
    {
        public string PK_sBangChamcongID { get; set; }
        public int FK_iNhanvienID { get; set; }
        public string tThoigianVaolamSang { get; set; }
        public string tThoigianNghiSang { get; set; }
        public string tThoigianVaolamChieu { get; set; }
        public string tThoigianNghiChieu { get; set; }
        public string tThoigianVaolamToi { get; set; }
        public string tThoigianNghiToi { get; set; }
        public string dNgayChamcong { get; set; }
        public TimeSheet() { }
        public List<TimeSheet> get(int year, int month, int[] id) {
            string sql_command = "SELECT * FROM tbl_bangchamcong ";
            string date = month + "-" + year;
            string where = "";
            where += "WHERE \"dNgayChamcong\" like '%" + date + "'";
            if (id.Length != 0) {
                where += " AND \"FK_iNhanvienID\" IN ('";
                foreach (var item in id)
                {
                    where += item + "','";
                }
                where = where.Remove(where.Length - 1);
                where = where.Remove(where.Length - 1);
                where += ")";
            } else {
                return new List<TimeSheet>();
            }
            sql_command += where;
            List<TimeSheet> timeSheets = new List<TimeSheet>();
            DB db = new DB();
            NpgsqlDataReader dr = db.get(sql_command);
            if (dr.HasRows) { 
                while (dr.Read()) {
                    TimeSheet timeSheet = new TimeSheet();
                    timeSheet.PK_sBangChamcongID = dr["PK_sBangChamcongID"].ToString();
                    timeSheet.FK_iNhanvienID = dr.GetInt32(dr.GetOrdinal("FK_iNhanvienID"));
                    timeSheet.tThoigianVaolamSang = dr["tThoigianVaolamSang"].ToString();
                    timeSheet.tThoigianNghiSang = dr["tThoigianNghiSang"].ToString();
                    timeSheet.tThoigianVaolamChieu = dr["tThoigianVaolamChieu"].ToString();
                    timeSheet.tThoigianNghiChieu = dr["tThoigianNghiChieu"].ToString();
                    timeSheet.tThoigianVaolamToi = dr["tThoigianVaolamToi"].ToString();
                    timeSheet.tThoigianNghiToi = dr["tThoigianNghiToi"].ToString();
                    timeSheet.dNgayChamcong = dr["dNgayChamcong"].ToString();
                    timeSheets.Add(timeSheet);
                }
            }
            db.Close();
            return timeSheets;
        }

        // public List<TimeSheet> LoadJson(int year, int month, int[] id)
        public int LoadJson(int year, int month, int[] id)
        {
            DirectoryInfo d = new DirectoryInfo(@"./Data/ChamCong/" + year + "/" + month);
            FileInfo[] Files = d.GetFiles("*.json");
            List<TimeSheet> items = new List<TimeSheet>();
            List<TimeSheet> datontai = get(year, month, id);
            List<string> id_datontai = new List<string>();
            foreach (TimeSheet dtt in datontai) {
                id_datontai.Add(dtt.PK_sBangChamcongID);
            }
            string sql = "INSERT INTO tbl_bangchamcong " + 
            "(\"PK_sBangChamcongID\", \"FK_iNhanvienID\", \"tThoigianVaolamSang\", \"tThoigianNghiSang\", \"tThoigianVaolamChieu\", \"tThoigianNghiChieu\", \"tThoigianVaolamToi\", \"tThoigianNghiToi\", \"dNgayChamcong\") VALUES ";
            string value = "";
            int i = 0;
            foreach(FileInfo file in Files)
            {
                i++;
                using (StreamReader r = new StreamReader("./Data/ChamCong/" + year + "/" + month + "/" + file.Name))
                {
                    var json = r.ReadToEnd();
                    items = JsonConvert.DeserializeObject<List<TimeSheet>>(json);
                    foreach(TimeSheet ts in items) {
                        foreach (int ID in id) {
                            if (ID == ts.FK_iNhanvienID) {
                                ts.PK_sBangChamcongID = "" + year + "_" + month + "_" + i + "_" + ts.FK_iNhanvienID;
                                if (!id_datontai.Contains(ts.PK_sBangChamcongID)) {
                                    value = "('{0}', {1}, '{2}', '{3}', '{4}', '{5}', '{6}', '{7}', '{8}'),";
                                    value = String.Format(
                                        value,
                                        ts.PK_sBangChamcongID,
                                        ts.FK_iNhanvienID,
                                        ts.tThoigianVaolamSang,
                                        ts.tThoigianNghiSang,
                                        ts.tThoigianVaolamChieu,
                                        ts.tThoigianNghiChieu,
                                        ts.tThoigianVaolamToi,
                                        ts.tThoigianNghiToi,
                                        ts.dNgayChamcong
                                    );
                                    sql += value;
                                }
                            }
                        }
                    }
                }
            }
            sql = sql.Remove(sql.Length - 1);
            DB db = new DB();
            return db.query(sql);
        }
    }
}
