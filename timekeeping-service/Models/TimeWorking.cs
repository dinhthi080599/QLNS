using System;
using System.Collections;
using System.Collections.Generic;
using Npgsql;

namespace timekeeping.Models
{
    public class TimeWorking
    {
        public int PK_iThoigianLamviecID { get; set; }
        public string FK_iBophanID { get; set; }
        public string tThoigianBatdauSang { get; set; }
        public string tThoigianKethucSang { get; set; }
        public string tThoigianBatdauChieu { get; set; }
        public string tThoigianKethucChieu { get; set; }
        public string tThoigianBatdauToi { get; set; }
        public string tThoigianKethucToi { get; set; }
        public string sNgayTrongTuan { get; set; }
        public string dNgayApdung { get; set; }
        public string FK_iNguoiTao { get; set; }
        public DateTime tThoigianTao { get; set; }
        public int ca { get; set; }
        public TimeWorking() { }
        public List<TimeWorking> getByID(string PartID = "", string sNgayTrongTuan = "")
        {
            /**
            *   Id = 0 return all
            *   Id != 0 return by id
            */
            string sql_command = "select * from tbl_thoigian_lamviec";
            if (PartID != "0")
            {
                Console.WriteLine(PartID);
                sql_command += " where fk_ibophanid = '" + PartID + "'";
                if (sNgayTrongTuan != "")
                {
                    sql_command += " and sNgayTrongTuan = '" + sNgayTrongTuan + "'";
                }
            }
            sql_command += " ORDER BY sNgayTrongTuan";
            List<TimeWorking> timeWorkingList = new List<TimeWorking>();
            DB db = new DB();
            NpgsqlDataReader dr = db.get(sql_command);
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    TimeWorking tw = new TimeWorking();
                    tw.PK_iThoigianLamviecID = dr.GetInt32(dr.GetOrdinal("PK_iThoigianLamviecID"));
                    tw.FK_iBophanID = dr["FK_iBophanID"].ToString();
                    tw.tThoigianBatdauSang = dr["tThoigianBatdauSang"].ToString();
                    tw.tThoigianKethucSang = dr["tThoigianKethucSang"].ToString();
                    tw.tThoigianBatdauChieu = dr["tThoigianBatdauChieu"].ToString();
                    tw.tThoigianKethucChieu = dr["tThoigianKethucChieu"].ToString();
                    tw.tThoigianBatdauToi = dr["tThoigianBatdauToi"].ToString();
                    tw.tThoigianKethucToi = dr["tThoigianKethucToi"].ToString();
                    tw.sNgayTrongTuan = dr["sNgayTrongTuan"].ToString();
                    tw.dNgayApdung = dr["dNgayApdung"].ToString();
                    tw.FK_iNguoiTao = dr["FK_iNguoiTao"].ToString();
                    tw.tThoigianTao = dr.GetFieldValue<DateTime>(dr.GetOrdinal("tThoigianTao"));
                    timeWorkingList.Add(tw);
                }
            }
            db.Close();
            return timeWorkingList;
        }

        public int AddUpdateTime()
        {
            this.tThoigianTao = DateTime.Now;
            string sql_command = "";
            // Tồn tại thì UPDATE
            List<TimeWorking> t = this.getByID(this.FK_iBophanID, this.sNgayTrongTuan);
            if (t.Count > 0)
            {
                string default_time = "00:00:00";
                sql_command = "UPDATE tbl_thoigian_lamviec SET " +
                    "tThoigianBatdauSang = '{1}', tThoigianKethucSang = '{2}', tThoigianBatdauChieu = '{3}'," +
                    "tThoigianKethucChieu = '{4}', tThoigianBatdauToi = '{5}', tThoigianKethucToi = '{6}'," +
                    "dNgayApdung = '{8}', FK_iNguoiTao = '{9}', tThoigianTao = '{10}' WHERE FK_iBophanID = '{0}' and  sNgayTrongTuan = '{7}'";
                if (this.ca != 0) {
                    this.tThoigianBatdauSang = this.tThoigianBatdauSang == default_time ? t[0].tThoigianBatdauSang : this.tThoigianBatdauSang;
                    this.tThoigianKethucSang = this.tThoigianKethucSang == default_time ? t[0].tThoigianKethucSang : this.tThoigianKethucSang;
                }
                if (this.ca != 1) {
                    this.tThoigianBatdauChieu = this.tThoigianBatdauChieu == default_time ? t[0].tThoigianBatdauChieu : this.tThoigianBatdauChieu;
                    this.tThoigianKethucChieu = this.tThoigianKethucChieu == default_time ? t[0].tThoigianKethucChieu : this.tThoigianKethucChieu;
                }
                if (this.ca != 2) {
                    this.tThoigianBatdauToi = this.tThoigianBatdauToi == default_time ? t[0].tThoigianBatdauToi : this.tThoigianBatdauToi;
                    this.tThoigianKethucToi = this.tThoigianKethucToi == default_time ? t[0].tThoigianKethucToi : this.tThoigianKethucToi;
                }
            }
            else
            { // INSERT
                sql_command = "insert into tbl_thoigian_lamviec" +
                    "(FK_iBophanID, tThoigianBatdauSang, tThoigianKethucSang, tThoigianBatdauChieu," +
                    "tThoigianKethucChieu, tThoigianBatdauToi, tThoigianKethucToi, sNgayTrongTuan, dNgayApdung," +
                    "fk_inguoitao, tThoigianTao) values " +
                    "('{0}', '{1}', '{2}', '{3}', '{4}', '{5}', '{6}', '{7}', '{8}', '{9}', '{10}')";
            }
            sql_command =
                String.Format(
                    sql_command,
                    this.FK_iBophanID,
                    this.tThoigianBatdauSang,
                    this.tThoigianKethucSang,
                    this.tThoigianBatdauChieu,
                    this.tThoigianKethucChieu,
                    this.tThoigianBatdauToi,
                    this.tThoigianKethucToi,
                    this.sNgayTrongTuan,
                    this.dNgayApdung,
                    this.FK_iNguoiTao,
                    this.tThoigianTao.ToString("MM/dd/yyyy HH:mm:ss")
                );
            DB db = new DB();
            return db.query(sql_command);
        }
        private string TimeSpanToString(TimeSpan t)
        {
            return t.Hours + ":" + t.Minutes + ":" + t.Seconds;
        }
    }
}
