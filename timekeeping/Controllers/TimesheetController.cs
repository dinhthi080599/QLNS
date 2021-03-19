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
    public class TimesheetController : ControllerBase
    {
        public TimesheetController(){
        }
        [Route("Get")]
        [HttpGet, HttpPost]
        public ActionResult Get(___Get __Get)
        {
            return Ok(new TimeSheet().get(__Get.year, __Get.month, __Get.ListUserID));
        }
        [Route("ReadData")]
        [HttpGet, HttpPost]
        public ActionResult ReadData(___Get __Get)
        // public ActionResult Get([FromBody] System.Text.Json.JsonElement ListUserID)
        {
            return Ok(new TimeSheet().LoadJson(__Get.year, __Get.month, __Get.ListUserID));
        }
    }
    public class ___Get {
        public int year {get; set;}
        public int month {get; set;}
        public int[] ListUserID {get; set;}
    }
}
