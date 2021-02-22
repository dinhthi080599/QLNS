using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using Npgsql;

namespace timekeeping.Models
{
    public class Part
    {
        public int PK_iBophanID { get; set; }
        public string sTenBophan { get; set; }
        public Part() { }
        public List<Part> getByID(int id = 0) {
            /**
            *   Id = 0 return all
            *   Id != 0 return by id
            */
            string sql_command = "select * from tbl_bophan";
            if (id != 0) {
                sql_command += " where pk_ibophanid =";
                sql_command += id;
            }
            List<Part> part = new List<Part>();
            DB db = new DB();
            NpgsqlDataReader dr = db.get(sql_command);
            if (dr.HasRows) { 
                while (dr.Read()) {
                    Part p = new Part();
                    p.PK_iBophanID = dr.GetInt32(dr.GetOrdinal("PK_iBophanID"));
                    Console.WriteLine(dr["sTenBophan"]);
                    p.sTenBophan = dr["sTenBophan"].ToString();
                    part.Add(p);
                }
            }
            db.Close();
            return part;
        }

        public void Insert() {
            // string sql_command = "insert into tbl_bophan (pK_iBophanID, sTenBophan, iThutuBoPhan) values (1, 'Tuyển dụng', 1), (2, 'Lương thưởng & phúc lợi', 2), (3, 'Hành chính', 3), (4, 'Kế hoạch', 4), (5, 'Kế toán', 5), (6, 'Marketing', 6), (7, 'Sale', 7), (8, 'Kho', 8), (9, 'Chăm sóc khách hàng', 9)";
            string sql_command = "insert into tbl_thoigian_lamviec" + 
            "(FK_iBophanID, tThoigianBatdauSang, tThoigianKethucSang, tThoigianBatdauChieu, tThoigianKethucChieu, tThoigianBatdauToi, tThoigianKethucToi, sNgayTrongTuan, dNgayApdung, FK_iNguoiTao, tThoigianTao) values " +
            "(1, '08:00:00', '12:00:00', '13:30:00', '17:30:00', '00:00:00', '00:00:00', '0', '2021-02-22 00:01:38', 0, '2021-02-23 00:01:38')," +
            "(1, '08:00:00', '12:00:00', '13:30:00', '17:30:00', '00:00:00', '00:00:00', '1', '2021-02-22 00:01:38', 0, '2021-02-23 00:01:38')," +
            "(1, '08:00:00', '12:00:00', '13:30:00', '17:30:00', '00:00:00', '00:00:00', '2', '2021-02-22 00:01:38', 0, '2021-02-23 00:01:38')," +
            "(1, '08:00:00', '12:00:00', '13:30:00', '17:30:00', '00:00:00', '00:00:00', '3', '2021-02-22 00:01:38', 0, '2021-02-23 00:01:38')," +
            "(1, '08:00:00', '12:00:00', '13:30:00', '17:30:00', '00:00:00', '00:00:00', '4', '2021-02-22 00:01:38', 0, '2021-02-23 00:01:38')," +
            "(1, '09:00:00', '12:30:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '5', '2021-02-22 00:01:38', 0, '2021-02-23 00:01:38')," +
            "(1, '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '6', '2021-02-22 00:01:38', 0, '2021-02-23 00:01:38')," +
            "(2, '08:00:00', '12:00:00', '13:30:00', '17:30:00', '00:00:00', '00:00:00', '0', '2021-02-22 00:01:38', 0, '2021-02-23 00:01:38')," +
            "(2, '08:00:00', '12:00:00', '13:30:00', '17:30:00', '00:00:00', '00:00:00', '1', '2021-02-22 00:01:38', 0, '2021-02-23 00:01:38')," +
            "(2, '08:00:00', '12:00:00', '13:30:00', '17:30:00', '00:00:00', '00:00:00', '2', '2021-02-22 00:01:38', 0, '2021-02-23 00:01:38')," +
            "(2, '08:00:00', '12:00:00', '13:30:00', '17:30:00', '00:00:00', '00:00:00', '3', '2021-02-22 00:01:38', 0, '2021-02-23 00:01:38')," +
            "(2, '08:00:00', '12:00:00', '13:30:00', '17:30:00', '00:00:00', '00:00:00', '4', '2021-02-22 00:01:38', 0, '2021-02-23 00:01:38')," +
            "(2, '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '5', '2021-02-22 00:01:38', 0, '2021-02-23 00:01:38')," +
            "(2, '00:00:00', '00:00:00', '13:30:00', '16:30:00', '00:00:00', '00:00:00', '6', '2021-02-22 00:01:38', 0, '2021-02-23 00:01:38')";
            DB db = new DB();
            db.query(sql_command);
            db.Close();
        }
    }
}
