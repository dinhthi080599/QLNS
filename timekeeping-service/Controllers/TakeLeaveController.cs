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
    public class TakeLeaveController : ControllerBase
    {
        public TakeLeaveController(){
        }

        [HttpGet]
        public ActionResult Get(string userID = "")
        {
            TakeLeave takeLeave = new TakeLeave();
            List<TakeLeave> takeLeaves = takeLeave.getByID(userID);
            return Ok( new {takeLeaves});
        }

        [Route("Accept")]
        [HttpPost]
        public ActionResult Accept([FromBody]TakeLeave value)
        {
            return this.Ok(value.Accept());
        }

        [Route("Cancel")]
        [HttpPost]
        public ActionResult Cancel([FromBody]TakeLeave value)
        {
            return this.Ok(value.Cancel());
        }

        [Route("luu-don")]
        [HttpPost]
        public ActionResult LuuDon([FromBody]TakeLeave value)
        {
            return this.Ok(value.LuuDon());
        }
    }
}
