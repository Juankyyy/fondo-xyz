using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.AspNetCore.Mvc;
using fondoxyz.Data;
using fondoxyz.Services;
using fondoxyz.Models;
using System.Security.Claims;

namespace fondoxyz.Controllers
{
    public class AuthController : Controller
    {
        private readonly FondoxyzContext _context;
        private readonly UserRepository _userRepository;

        public AuthController(UserRepository userRepository, FondoxyzContext context)
        {
            _userRepository = userRepository;
            _context = context;
        }
        public IActionResult Index()
        {
            if (User.Identity.IsAuthenticated)
            {
                return RedirectToAction("Index", "Home");
            }
            return View();
        }

        public IActionResult Register()
        {
            if (User.Identity.IsAuthenticated)
            {
                return RedirectToAction("Index", "Home");
            }
            return View();
        }

        [HttpPost]
        public async Task<IActionResult> LoginAsync(Users userLogin)
        {
            try
            {
                var userFound = _context.Users.FirstOrDefault(u => u.Document == userLogin.Document && u.Password == userLogin.Password);

                Console.WriteLine(userFound);
                if (userFound == null)
                {
                    TempData["ErrorMessage"] = "El documento o la contraseña son incorrectos";
                    return RedirectToAction("Index");
                }

                var claims = new List<Claim>
                {
                    new Claim(ClaimTypes.Name, userFound.Name)
                };

                var claimsIdentity = new ClaimsIdentity(claims, CookieAuthenticationDefaults.AuthenticationScheme);

                await HttpContext.SignInAsync(CookieAuthenticationDefaults.AuthenticationScheme, new ClaimsPrincipal(claimsIdentity));

                return RedirectToAction("Index", "Home");
            } catch (Exception e)
            {
                Console.WriteLine(e.Message);
                return RedirectToAction("Index");
            }
        }

        public IActionResult SignUp(Users user)
        {
            try
            {
                if (user != null)
                {
                    _userRepository.CreateUser(user);
                    TempData["ErrorMessage"] = "Usuario registrado correctamente";
                    return RedirectToAction("Index");
                }
                return View("Register");
            } catch (Exception e)
            {
                Console.WriteLine(e.Message);
                return RedirectToAction("Register");
            }
        }

        public IActionResult Logout()
        {
            HttpContext.SignOutAsync(CookieAuthenticationDefaults.AuthenticationScheme);
            return RedirectToAction("Index", "Auth");
        }
    }
}