using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using Npgsql;

namespace timekeeping.Models
{
    public class JobPosition
    {
        public string PK_iVitriCongviecID { get; set; }
        public string sTenVitriCongviec { get; set; }
        public string FK_iBophanID { get; set; }
        public int iThutuVitriCongviec { get; set; }
        public string _id {get; set;}
        public JobPosition() { }
        public List<JobPosition> getByID() {
            string sql_command = "SELECT * FROM tbl_vitri_congviec ORDER BY \"ithutuvitricongviec\"";
            List<JobPosition> jobPositions = new List<JobPosition>();
            DB db = new DB();
            NpgsqlDataReader dr = db.get(sql_command);
            if (dr.HasRows) { 
                while (dr.Read()) {
                    JobPosition job = new JobPosition();
                    job.PK_iVitriCongviecID = dr["PK_iVitriCongviecID"].ToString();
                    job.sTenVitriCongviec = dr["sTenVitriCongviec"].ToString();
                    job.FK_iBophanID = dr["FK_iBophanID"].ToString();
                    job._id = dr["_id"].ToString();
                    job.iThutuVitriCongviec = dr.GetInt32(dr.GetOrdinal("ithutuvitricongviec"));
                    jobPositions.Add(job);
                }
            }
            db.Close();
            return jobPositions;
        }
    }
}
