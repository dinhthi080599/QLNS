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
    public class PartController : ControllerBase
    {
        public PartController(){
        }
        [HttpGet]
        public ActionResult Get(int Part_ID)
        {
            Part part = new Part();
            List<Part> partList = part.getByID(Part_ID);
            //part.Insert();
            return Ok( new {partList});
        }
        [HttpPost]
        public ActionResult Post([FromBody]dynamic value)
        {
            dynamic data = JsonConvert.DeserializeObject<dynamic>(value.ToString());
            return this.Ok(value);
        }

        [HttpGet, HttpPost]
        [Route("NV_PB")]
        public ActionResult NV_PB() {
            return Ok(new Part().get_sonhanvien());
        }
    }
}
