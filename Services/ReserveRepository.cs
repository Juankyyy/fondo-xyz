using System.Security.Claims;
using fondoxyz.Data;
using fondoxyz.Models;

namespace fondoxyz.Services
{
    public class ReserveRepository
    {
        private readonly FondoxyzContext _context;

        public ReserveRepository(FondoxyzContext context)
        {
            _context = context;
        }

        public IEnumerable<Reserves> GetReserves(int? userId)
        {
            var reserves = _context.Reserves.Where(r => r.UserId == userId).ToList();
            return reserves;
        }
    }
}