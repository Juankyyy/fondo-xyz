using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using fondoxyz.Models;
using fondoxyz.Data;
using fondoxyz.Services;
using System.Security.Claims;

namespace fondoxyz.Controllers;

public class HomeController : Controller
{
    private readonly ILogger<HomeController> _logger;
    private readonly FondoxyzContext _context;
    private readonly ReserveRepository _reserveRepository;

    public HomeController(ILogger<HomeController> logger, FondoxyzContext context, ReserveRepository reserveRepository)
    {
        _logger = logger;
        _context = context;
        _reserveRepository = reserveRepository;
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

        var userId = int.TryParse(User.Claims.FirstOrDefault(c => c.Type == "UserId")?.Value, out var result) ? result : (int?)null;
        var reserves = _reserveRepository.GetReserves(userId);
        return View(reserves);
    }

    [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
    public IActionResult Error()
    {
        return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
    }
}
