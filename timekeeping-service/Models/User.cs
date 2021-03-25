using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using Npgsql;

namespace timekeeping.Models
{
    public class User
    {
        public long PK_iNhanvienID { get; set; }
        public string sHoten { get; set; }
        public string sTen { get; set; }
        public string dNgaysinh { get; set; }
        public string bGioitinh { get; set; }
        public string sDiachi { get; set; }
        public string sDienthoai { get; set; }
        public string sCMND  { get; set; }
        public string sTenNV { get; set; }
        public string FK_iBophanID { get; set; }
        public string FK_iVitriCongviecID { get; set; }
        public string _id { get; set; }
        public User() { }
        public List<User> getByID(int id = 0) {
            /**
            *   Id = 0 return all
            *   Id != 0 return by id
            */
            string sql_command = "SELECT *, tbl_nhanvien._id AS _id_nv FROM tbl_nhanvien " +
            "JOIN tbl_quatrinh_lamviec ON \"fk_inhanvienid\" = tbl_nhanvien._id " +
            "JOIN tbl_vitri_congviec ON tbl_vitri_congviec._id = \"fk_ivitricongviecid\" " + 
            "WHERE \"dngaykethuc\" IS NULL";
            List<User> Users = new List<User>();
            DB db = new DB();
            NpgsqlDataReader dr = db.get(sql_command);
            if (dr.HasRows) { 
                while (dr.Read()) {
                    User user = new User();
                    user.PK_iNhanvienID = dr.GetInt64(dr.GetOrdinal("PK_iNhanvienID"));
                    user.sHoten = dr["sHoten"].ToString();
                    user.sTen = dr["sTen"].ToString();
                    user.dNgaysinh = dr["dNgaysinh"].ToString();
                    user.bGioitinh = dr["bGioitinh"].ToString();
                    user.sDiachi = dr["sDiachi"].ToString();
                    user.sDienthoai = dr["sDienthoai"].ToString();
                    user.sCMND = dr["sHoten"].ToString() + " " + dr["sTen"].ToString(); 
                    user.sTenNV = dr["sHoten"].ToString() + " " + dr["sTen"].ToString(); 
                    user.FK_iBophanID = dr["fk_ibophanid"].ToString();
                    user.FK_iVitriCongviecID = dr["fk_ivitricongviecid"].ToString();
                    user._id = dr["_id_nv"].ToString();
                    Users.Add(user);
                }
            }
            db.Close();
            return Users;
        }
    }
}
