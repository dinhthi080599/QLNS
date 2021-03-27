using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using timekeeping.Models;
using Newtonsoft.Json;
namespace timekeeping.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class SendMailController : ControllerBase
    {
        public SendMailController(){
        }
        [HttpPost]
        public ActionResult Get(string to, string title, string email_body, string password, string email)
        {
            SendMail sendMail = new SendMail(to, title, email_body, email, password);
            return sendMail.Send() == "true" ? Ok("thanhcong") : Ok("thatbai");
        }
    }
}
