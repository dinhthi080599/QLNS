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
    public class TimeWorkingController : ControllerBase
    {
        public TimeWorkingController(){
        }
        [HttpGet]
        public ActionResult Get(string PartID)
        {
            TimeWorking timeWorking = new TimeWorking();
            List<TimeWorking> timeWorkingList = timeWorking.getByID(PartID);
            return Ok( new {timeWorkingList});
        }
        [HttpPost]
        public ActionResult Post([FromBody]TimeWorking value)
        {
            return this.Ok(value.AddUpdateTime());
        }
    }
}
