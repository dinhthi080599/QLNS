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
    public class UserController : ControllerBase
    {
        public UserController(){
        }
        [HttpGet]
        public ActionResult Get()
        {
            User user = new User();
            List<User> Users = user.getByID();
            //part.Insert();
            return Ok( new {Users});
        }
        [HttpPost]
        public ActionResult Post()
        {
            User user = new User();
            List<User> Users = user.getByAll();
            //part.Insert();
            return Ok( new {Users});
        }
    }
}
