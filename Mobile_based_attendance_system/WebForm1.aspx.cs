using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Mobile_based_attendance_system
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}
/*using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using FreeGeoIPCore;
using MetOfficeDataPoint;
using MetOfficeDataPoint.Models;
using MetOfficeDataPoint.Models.GeoCoordinate;

namespace bitScry.Controllers.Projects
{
    [Route("Projects/[controller]")]
    public class WeatherController : Controller
    {
        private readonly IHttpContextAccessor _httpContextAccessor;
        private readonly IConfiguration _config;

        public WeatherController(IConfiguration config, IHttpContextAccessor httpContextAccessor)
        {
            _config = config;
            _httpContextAccessor = httpContextAccessor;
        }

        public IActionResult Index(double longitude, double latitude)
        {
            FreeGeoIPClient ipClient = new FreeGeoIPClient();

            string ipAddress = AppCode.Projects.Weather.GetRequestIP(_httpContextAccessor);

            FreeGeoIPCore.Models.Location location = ipClient.GetLocation(ipAddress).Result;

            GeoCoordinate coordinate = new GeoCoordinate();

            // If location is provided then use over IP address
            if (longitude == 0 && latitude == 0)
            {
                coordinate.Longitude = location.Longitude;
                coordinate.Latitude = location.Latitude;
            }
            else
            {
                coordinate.Longitude = longitude;
                coordinate.Latitude = latitude;
            }
            
            return View();
        }
    }
}
*/