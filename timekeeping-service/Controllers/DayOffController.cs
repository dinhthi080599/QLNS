﻿using System;
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
    public class DayOffController : ControllerBase
    {
        public DayOffController(){
        }
        [HttpGet]
        public ActionResult Get(int year, string search)
        {
            DayOff dayOff = new DayOff();
            List<DayOff> dayOffs = dayOff.getByID(year, search);
            //part.Insert();
            return Ok( new {dayOffs});
        }
        [HttpPost]
        public ActionResult Post([FromBody]DayOff value)
        {
            return this.Ok(value.Add());
        }

        [Route("Del")]
        [HttpPost]
        public ActionResult Del([FromBody]DayOff value) 
        {
            return Ok(value.Del());
        }
    }
}
