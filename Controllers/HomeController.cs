using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using fondoxyz.Models;
using fondoxyz.Data;

namespace fondoxyz.Controllers;

public class HomeController : Controller
{
    private readonly ILogger<HomeController> _logger;
    private readonly FondoxyzContext _context;

    public HomeController(ILogger<HomeController> logger, FondoxyzContext context)
    {
        _logger = logger;
        _context = context;
    }

    public IActionResult Index()
    {
        if (!User.Identity.IsAuthenticated)
        {
            return RedirectToAction("Index", "Auth");
        }
        var properties = _context.Properties.ToList();
        return View(properties);
    }

    public IActionResult Reserves()
    {
        if (!User.Identity.IsAuthenticated)
        {
            return RedirectToAction("Index", "Auth");
        }
        return View();
    }

    [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
    public IActionResult Error()
    {
        return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
    }
}
