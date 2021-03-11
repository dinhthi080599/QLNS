using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using Npgsql;

namespace timekeeping.Models
{
    public class DayOff
    {
        public int PK_iNgaynghiTrongnamID { get; set; }
        public string sTenNgaynghi { get; set; }
        public string dNgayBatdau { get; set; }
        public string dNgayKethuc { get; set; }
        public int FK_iNguoitaoID { get; set; }
        public DateTime dThoigianTao { get; set; }
        public DayOff() { }
        public List<DayOff> getByID(int id = 0, string search = "") {
            /**
            *   Id = 0 return all
            *   Id != 0 return by id
            */
            string sql_command = "SELECT * FROM tbl_ngaynghi_trongnam ";
            string where = "";
            if (id != 0) {
                where += "WHERE date_part('year', \"dNgayBatdau\") = " + id;
            }
            if (search != "") {
                if (where == "") {
                    where += "WHERE \"sTenNgaynghi\" like '%" + search + "%'";
                } else {
                    where += " AND \"sTenNgaynghi\" like '%" + search + "%'";
                }
            }
            sql_command += where;
            List<DayOff> dayOffs = new List<DayOff>();
            DB db = new DB();
            NpgsqlDataReader dr = db.get(sql_command);
            if (dr.HasRows) { 
                while (dr.Read()) {
                    DayOff dayOff = new DayOff();
                    dayOff.PK_iNgaynghiTrongnamID = dr.GetInt32(dr.GetOrdinal("PK_iNgaynghiTrongnamID"));
                    dayOff.sTenNgaynghi = dr["sTenNgaynghi"].ToString();
                    dayOff.dNgayBatdau = dr["dNgayBatdau"].ToString();
                    dayOff.dNgayKethuc = dr["dNgayKethuc"].ToString();
                    dayOff.FK_iNguoitaoID = dr.GetInt32(dr.GetOrdinal("FK_iNguoitaoID"));
                    dayOffs.Add(dayOff);
                }
            }
            db.Close();
            return dayOffs;
        }
        public int Add()
        {
            this.dThoigianTao = DateTime.Now;
            string sql_command = "";
            // INSERT
            sql_command = "INSERT INTO tbl_ngaynghi_trongnam " +
                "(\"sTenNgaynghi\", \"FK_iNguoitaoID\", \"dNgayBatdau\", \"dNgayKethuc\", \"dThoigianTao\") VALUES " +
                "('{0}', {1}, '{2}', '{3}', '{4}')";
            sql_command =
                String.Format(
                    sql_command,
                    this.sTenNgaynghi,
                    this.FK_iNguoitaoID,
                    this.dNgayBatdau,
                    this.dNgayKethuc,
                    this.dThoigianTao
                );
            DB db = new DB();
            return db.query(sql_command);
        }
        public int Del()
        {
            this.dThoigianTao = DateTime.Now;
            string sql_command = "";
            // DELETE
            sql_command = "DELETE FROM tbl_ngaynghi_trongnam WHERE \"PK_iNgaynghiTrongnamID\" = " + this.PK_iNgaynghiTrongnamID;
            DB db = new DB();
            return db.query(sql_command);
        }
    }
}
