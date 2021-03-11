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
    public class StatusController : ControllerBase
    {
        public StatusController(){
        }

        [HttpGet, HttpPost]
        [Route("DXNP")]
        public ActionResult GetDXNP()
        {
            return Ok( new Status().GetDXNP());
        }
    }
}
