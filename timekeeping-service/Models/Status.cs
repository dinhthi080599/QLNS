using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using Npgsql;

namespace timekeeping.Models
{
    public class Status
    {
        // DXNP
        public int ID { get; set; }
        public string sTenTrangThai { get; set; }
        // End DXNP

        public Status() { }
        public List<Status> GetDXNP() {
            string sql_command = "SELECT * FROM dm_trangthai_donxin_nghiphep";
            List<Status> statuses = new List<Status>();
            DB db = new DB();
            NpgsqlDataReader dr = db.get(sql_command);
            if (dr.HasRows) { 
                while (dr.Read()) {
                    Status st  = new Status();
                    st.ID = dr.GetInt32(dr.GetOrdinal("PK_iTrangthaiDonxinNghiphepID"));
                    st.sTenTrangThai = dr["sTenTrangthaiDonxinNghiphep"].ToString();
                    statuses.Add(st);
                }
            }
            db.Close();
            return statuses;
        }
    }
}
