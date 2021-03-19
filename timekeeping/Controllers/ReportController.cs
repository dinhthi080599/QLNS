using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using timekeeping.Models;
using Newtonsoft.Json;
using OfficeOpenXml;
using OfficeOpenXml.Style;
using System.IO;  
namespace timekeeping.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class ReportController : ControllerBase
    {
        public ReportController(){
        }
        [HttpGet]
        public ActionResult Get(int PartID)
        {
            return Ok(123);
        }
        public void DownloadExcel()
        {
        }

        [HttpPost]
        public ActionResult Post([FromBody]TimeWorking value)
        {
            return this.Ok(value.AddUpdateTime());
        }
    }
}
