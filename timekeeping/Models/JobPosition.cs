using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using Npgsql;

namespace timekeeping.Models
{
    public class JobPosition
    {
        public int PK_iVitriCongviecID { get; set; }
        public string sTenVitriCongviec { get; set; }
        public int FK_iBophanID { get; set; }
        public int iThutuVitriCongviec { get; set; }
        public JobPosition() { }
        public List<JobPosition> getByID() {
            string sql_command = "SELECT * FROM tbl_vitri_congviec ORDER BY \"iThutuVitriCongviec\"";
            List<JobPosition> jobPositions = new List<JobPosition>();
            DB db = new DB();
            NpgsqlDataReader dr = db.get(sql_command);
            if (dr.HasRows) { 
                while (dr.Read()) {
                    JobPosition job = new JobPosition();
                    job.PK_iVitriCongviecID = dr.GetInt32(dr.GetOrdinal("PK_iVitriCongviecID"));
                    job.sTenVitriCongviec = dr["sTenVitriCongviec"].ToString();
                    job.FK_iBophanID = dr.GetInt32(dr.GetOrdinal("FK_iBophanID"));
                    job.iThutuVitriCongviec = dr.GetInt32(dr.GetOrdinal("iThutuVitriCongviec"));
                    jobPositions.Add(job);
                }
            }
            db.Close();
            return jobPositions;
        }
    }
}
