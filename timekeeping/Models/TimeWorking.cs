using System;
using System.Collections;
using System.Collections.Generic;
using Npgsql;

namespace timekeeping.Models
{
    public class TimeWorking
    {
        public int PK_iThoigianLamviecID { get; set; }
        public int FK_iBophanID  { get; set; }
        public TimeSpan tThoigianBatdauSang  { get; set; }
        public TimeSpan tThoigianKethucSang  { get; set; }
        public TimeSpan tThoigianBatdauChieu  { get; set; }
        public TimeSpan tThoigianKethucChieu  { get; set; }
        public TimeSpan tThoigianBatdauToi  { get; set; }
        public TimeSpan tThoigianKethucToi  { get; set; }
        public string sNgayTrongTuan  { get; set; }
        public DateTime dNgayApdung   { get; set; }
        public int FK_iNguoiTao  { get; set; }
        public DateTime tThoigianTao { get; set; } 
        public TimeWorking() { }
        public List<TimeWorking> getByID(int PartID = 0) {
            /**
            *   Id = 0 return all
            *   Id != 0 return by id
            */
            string sql_command = "select * from tbl_thoigian_lamviec";
            if (PartID != 0) {
                sql_command += " where fk_ibophanid =";
                sql_command += PartID;
            }
            Console.WriteLine(sql_command);
            List<TimeWorking> timeWorkingList = new List<TimeWorking>();
            DB db = new DB();
            NpgsqlDataReader dr = db.get(sql_command);
            if (dr.HasRows) { 
                while (dr.Read()) {
                    TimeWorking tw = new TimeWorking();
                    tw.PK_iThoigianLamviecID = dr.GetInt32(dr.GetOrdinal("PK_iThoigianLamviecID"));
                    tw.FK_iBophanID = dr.GetInt32(dr.GetOrdinal("FK_iBophanID"));
                    tw.tThoigianBatdauSang = ((NpgsqlDataReader)dr).GetTimeSpan(dr.GetOrdinal("tThoigianBatdauSang"));
                    tw.tThoigianKethucSang = ((NpgsqlDataReader)dr).GetTimeSpan(dr.GetOrdinal("tThoigianKethucSang"));
                    tw.tThoigianBatdauChieu = ((NpgsqlDataReader)dr).GetTimeSpan(dr.GetOrdinal("tThoigianBatdauChieu"));
                    tw.tThoigianKethucChieu = ((NpgsqlDataReader)dr).GetTimeSpan(dr.GetOrdinal("tThoigianKethucChieu"));
                    tw.tThoigianBatdauToi = ((NpgsqlDataReader)dr).GetTimeSpan(dr.GetOrdinal("tThoigianBatdauToi"));
                    tw.tThoigianKethucToi = ((NpgsqlDataReader)dr).GetTimeSpan(dr.GetOrdinal("tThoigianKethucToi"));
                    tw.sNgayTrongTuan = dr["sNgayTrongTuan"].ToString();
                    tw.dNgayApdung = dr.GetFieldValue<DateTime>(dr.GetOrdinal("dNgayApdung"));
                    tw.FK_iNguoiTao = dr.GetInt32(dr.GetOrdinal("FK_iNguoiTao"));
                    tw.tThoigianTao = dr.GetFieldValue<DateTime>(dr.GetOrdinal("tThoigianTao"));
                    timeWorkingList.Add(tw);
                }
            }
            db.Close();
            return timeWorkingList;
        }
    }
}
