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
    public class JobPositionController : ControllerBase
    {
        public JobPositionController(){
        }

        [HttpGet, HttpPost]
        [Route("Get")]
        public ActionResult GetVTCV()
        {
            return Ok( new JobPosition().getByID());
        }
    }
}
