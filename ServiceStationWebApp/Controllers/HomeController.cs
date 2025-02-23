using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using ServiceStationWebApp.Data;
using ServiceStationWebApp.Models;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;

namespace ServiceStationWebApp.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly ApplicationDbContext _context;
        private readonly UserManager<IdentityUser> _userManager;

        public HomeController(ApplicationDbContext context, UserManager<IdentityUser> userManager, ILogger<HomeController> logger)
        {
            _logger = logger;
            _context = context;
            _userManager = userManager;
        }

        public async Task<IActionResult> Index()
        {
            return View(await _context.Services.ToListAsync());
        }

        public async Task<IActionResult> ViewPackages(int? id)
        {
            var service = await _context.Services.FindAsync(id);
            ViewData["ServiceName"] = "None";
            if (service != null)
            {
                ViewData["ServiceName"] = service.ServiceName;
            }
            var applicationDbContext = _context.Packages
                .Include(j => j.Service)
                .Where(m => m.ServiceID == id);
            return View(await applicationDbContext.ToListAsync());
        }

        public async Task<IActionResult> ViewPackageDetails(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var package = await _context.Packages
                .Include(i => i.Service)
                .FirstOrDefaultAsync(m => m.PackageID == id);
            if (package == null)
            {
                return NotFound();
            }

            return View(package);
        }

        public async Task<IActionResult> AllPackages()
        {
            return View(await _context.Services.Include(m => m.Packages).ToListAsync());
        }

        public async Task<IActionResult> AllCars()
        {
            return View(await _context.Brands.Include(m => m.CarModels).ToListAsync());
        }

        [Authorize]
        public IActionResult BookPackage()
        {
            var carmodels = from s in _context.CarModels.Include(m => m.Brand)
                            select new { s.CarModelID, CarModelName = s.CarModelName + "(" + s.Brand.BrandName + ")"  };
            var packages = from s in _context.Packages.Include(m => m.Service)
                            select new { s.PackageID, PackageName = s.PackageName + "(" + s.Service.ServiceName + ")" };
            ViewData["CarModelID"] = new SelectList(carmodels, "CarModelID", "CarModelName");
            ViewData["PackageID"] = new SelectList(packages, "PackageID", "PackageName");
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> BookPackage([Bind("BookingID,ContactNo,BookingDate,PackageID,CarModelID")] Booking booking)
        {
            ModelState.Remove("UserName");
            ModelState.Remove("Status");
            if (ModelState.IsValid)
            {
                booking.Status = "Pending";
                booking.UserName = _userManager.GetUserName(this.User);
                _context.Add(booking);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(MyBookings));
            }
            var carmodels = from s in _context.CarModels.Include(m => m.Brand)
                            select new { s.CarModelID, CarModelName = s.CarModelName + "(" + s.Brand.BrandName + ")" };
            var packages = from s in _context.Packages.Include(m => m.Service)
                           select new { s.PackageID, PackageName = s.PackageName + "(" + s.Service.ServiceName + ")" };
            ViewData["CarModelID"] = new SelectList(carmodels, "CarModelID", "CarModelName", booking.CarModelID);
            ViewData["PackageID"] = new SelectList(packages, "PackageID", "PackageName", booking.PackageID);
            return View(booking);
        }

        [Authorize]
        public async Task<IActionResult> MyBookings()
        {
            string userid = _userManager.GetUserName(this.User);
            var bookings = _context.Bookings
                .Include(m => m.CarModel)
                .Include(m => m.Package)
                .Where(m => m.UserName == userid);
            return View(await bookings.OrderByDescending(m => m.BookingID).ToListAsync());
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
