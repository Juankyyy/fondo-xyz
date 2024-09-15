using Microsoft.EntityFrameworkCore;
using fondoxyz.Models;

namespace fondoxyz.Data
{
    public class FondoxyzContext : DbContext
    {
        public FondoxyzContext(DbContextOptions<FondoxyzContext> options) : base(options) {}

        public DbSet<Users> Users { get; set; }
    }
}