using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;

namespace timekeeping.Models
{
    public class SendMail
    {
        public string To { get; set; }
        public string Subject { get; set; }
        public string Body { get; set; }
        public string ID { get; set; }
        public string Password { get; set; }
        public SendMail(string To, string Subject, string Body, string id, string password)
        {
            this.To = To;
            this.Subject = Subject;
            this.Body = Body;
            this.ID = id;
            this.Password = password;
            // this.ID = "17A10010250@students.hou.edu.vn";
            // this.Password = "123456789A!";
        }

        public string Send()
        {
            MailMessage mail = new MailMessage();
            mail.To.Add(this.To);
            mail.From = new MailAddress(this.ID);
            mail.Subject = this.Subject;
            mail.Body = this.Body;
            mail.IsBodyHtml = true;
            try
            {
                SmtpClient smtpClient = new SmtpClient();
                smtpClient.EnableSsl = true;
                smtpClient.Host = "smtp.gmail.com";
                smtpClient.Port = 587;
                smtpClient.UseDefaultCredentials = false;
                smtpClient.Credentials = new NetworkCredential(this.ID, this.Password);
                smtpClient.Send(mail);
                return "true";
            }
            catch (SmtpException ex)
            {
                Console.Write(ex);
                return "false";
            }
        }

    }
}