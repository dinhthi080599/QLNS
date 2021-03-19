using System;
using System.Text;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using Npgsql;

namespace timekeeping.Models
{
    public class DB
    {
        // private string Host = "ec2-3-216-181-219.compute-1.amazonaws.com";
        // private string User = "pxabwtixrbnrgi";
        // private string DBname = "ddrh7mbq23smfp";
        // private string Password = "758b1065853c62c0762c41854fac9271875059ca656a9b9ca448617e7efd64e5";
        // private string Port = "5432";

        private string Host = "127.0.0.1";
        private string User = "postgres";
        private string DBname = "qlns";
        private string Password = "1";
        private string Port = "5432";
        NpgsqlConnection conn;
        public void Connect()
        {
            try {
                // string config = "SslMode=Require;Trust Server Certificate=true;";
                string config = "Trust Server Certificate=true;";
                string connetionString = 
                String.Format(
                    "Server={0};Username={1};Database={2};Port={3};Password={4};SSLMode=Prefer;{5}",
                    Host,
                    User,
                    DBname,
                    Port,
                    Password,
                    config);
                conn = new NpgsqlConnection(connetionString);
                conn.Open();
            }
            catch (Exception msg)
            {
                Console.WriteLine(msg);
                throw;
            }
        }
        public void Close(){
            conn.Close();
        }
        public NpgsqlDataReader get(string sql_command) {
            Connect();
            NpgsqlDataReader dr = null;
            try {
                NpgsqlCommand command = new NpgsqlCommand(sql_command, conn);
                Console.ForegroundColor = ConsoleColor.DarkGreen;
                Console.WriteLine(sql_command);
                Console.ForegroundColor = ConsoleColor.White;
                dr = command.ExecuteReader();
            } catch (Exception msg) {
                Console.WriteLine(msg);
            }
            return dr;
        }

        public int query(string sql_command) {
            Console.OutputEncoding = Encoding.UTF8;
            Connect();
            try {
                NpgsqlCommand command = new NpgsqlCommand(sql_command, conn);
                Console.ForegroundColor = ConsoleColor.DarkGreen;
                Console.WriteLine(sql_command);
                Console.ForegroundColor = ConsoleColor.White;
                return command.ExecuteNonQuery();
            } catch (Exception msg) {
                Console.WriteLine(msg);
            }
            return 0;
        }
    }
}
