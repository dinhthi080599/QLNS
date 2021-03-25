using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using Npgsql;

namespace timekeeping.Models
{
    public class TakeLeave
    {
        public int PK_iDonxinNghiphepID { get; set; }
        public string FK_iNhanvienID { get; set; }
        public string sLydoNghi { get; set; }
        public string dNgayNghi { get; set; }
        public string tThoigianTao { get; set; }
        public string FK_iNguoiDuyetID { get; set; }
        public string dThoigianDuyet { get; set; }
        public int FK_iTrangthaiDonxinNghiphepID  { get; set; }
        public string sGhichuDonxinNghiphep { get; set; }
        public string dNgayKethucNghi { get; set; }
        public string sTenNV { get; set; }
        public string sLydoHuy { get; set; }
        public TakeLeave() { }
        public List<TakeLeave> getByID(string id = "") {
            /**
            *   Id = 0 return all
            *   Id != 0 return by id
            */
            string sql_command = "SELECT * FROM tbl_donxin_nghiphep INNER JOIN tbl_nhanvien ON \"_id\" = \"fk_inhanvienid\"";
            if (id != "") {
                sql_command += " WHERE \"fk_inhanvienid\" = '" + id + "'";
            }
            List<TakeLeave> takeLeaves = new List<TakeLeave>();
            DB db = new DB();
            NpgsqlDataReader dr = db.get(sql_command);
            if (dr.HasRows) { 
                while (dr.Read()) {
                    TakeLeave takeLeave = new TakeLeave();
                    takeLeave.PK_iDonxinNghiphepID = dr.GetInt32(dr.GetOrdinal("PK_iDonxinNghiphepID"));
                    takeLeave.FK_iNhanvienID = dr["fk_inhanvienid"].ToString();
                    takeLeave.sLydoNghi = dr["sLydoNghi"].ToString();
                    takeLeave.dNgayNghi = dr["dNgayNghi"].ToString();
                    takeLeave.dNgayKethucNghi = dr["dNgayKethucNghi"].ToString();
                    takeLeave.tThoigianTao = dr["tThoigianTao"].ToString();
                    takeLeave.FK_iNguoiDuyetID = dr["FK_iNguoiDuyetID"].ToString();
                    takeLeave.dThoigianDuyet = dr["dThoigianDuyet"].ToString();
                    takeLeave.FK_iTrangthaiDonxinNghiphepID = dr.GetInt32(dr.GetOrdinal("FK_iTrangthaiDonxinNghiphepID"));
                    takeLeave.sGhichuDonxinNghiphep = dr["sGhichuDonxinNghiphep"].ToString();
                    takeLeave.sTenNV = dr["sHoten"].ToString() + " " + dr["sTen"].ToString(); 
                    takeLeave.sLydoHuy = dr["sLydoHuy"].ToString(); 
                    takeLeaves.Add(takeLeave);
                }
            }
            db.Close();
            return takeLeaves;
        }
        public int Accept()
        {
            this.dThoigianDuyet = DateTime.Now.ToString("MM/dd/yyyy");
            string sql_command = "";
            // UPDATE
            sql_command = "UPDATE tbl_donxin_nghiphep SET \"FK_iTrangthaiDonxinNghiphepID\" = 1, " +
                                                          "\"dThoigianDuyet\" = '" + dThoigianDuyet + "', " + 
                                                          "\"FK_iNguoiDuyetID\" = '" + this.FK_iNguoiDuyetID + "'" +
                                                          " WHERE \"PK_iDonxinNghiphepID\" = " + this.PK_iDonxinNghiphepID;
            DB db = new DB();
            return db.query(sql_command);
        }
        public int Cancel()
        {
            this.dThoigianDuyet = DateTime.Now.ToString("MM/dd/yyyy");
            string sql_command = "";
            // UPDATE
            sql_command = "UPDATE tbl_donxin_nghiphep SET \"FK_iTrangthaiDonxinNghiphepID\" = 2, \"dThoigianDuyet\" = '" + dThoigianDuyet + 
                                                                                             "', \"sLydoHuy\" = '" + this.sLydoHuy + "', " +
                                                                                            "\"FK_iNguoiDuyetID\" = '" + this.FK_iNguoiDuyetID + "'" +
                                                                                        " WHERE \"PK_iDonxinNghiphepID\" = " + this.PK_iDonxinNghiphepID;
            DB db = new DB();
            return db.query(sql_command);
        }
        public int LuuDon()
        {
            this.tThoigianTao = DateTime.Now.ToString("MM-dd-yyyy");
            if (this.dNgayKethucNghi == null || dNgayKethucNghi == "") {
                this.dNgayKethucNghi = this.dNgayNghi;
            }
            string sql_command = "";
            // INSERT
            sql_command = "INSERT into tbl_donxin_nghiphep" +
                "(\"fk_inhanvienid\", \"sLydoNghi\", \"sGhichuDonxinNghiphep\", \"dNgayKethucNghi\", \"dNgayNghi\", \"FK_iTrangthaiDonxinNghiphepID\", " + 
                "\"tThoigianTao\") VALUES " +
                "('{0}', '{1}', '{2}', '{3}', '{4}', 0, '{5}')";
            sql_command =
                String.Format(
                    sql_command,
                    this.FK_iNhanvienID,
                    this.sLydoNghi,
                    this.sGhichuDonxinNghiphep,
                    this.dNgayKethucNghi,
                    this.dNgayNghi,
                    this.tThoigianTao
                );
            DB db = new DB();
            return db.query(sql_command);
        }
    }
}
