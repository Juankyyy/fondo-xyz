using fondoxyz.Data;
using fondoxyz.Models;

namespace fondoxyz.Services
{
    public class UserRepository
    {
        private readonly FondoxyzContext _context;

        public UserRepository(FondoxyzContext context)
        {
            _context = context;
        }

        public IEnumerable<Users> GetUsers()
        {
            return _context.Users.ToList();
        }

        public void CreateUser(Users user)
        {
            _context.Users.Add(user);
            _context.SaveChanges();
        }
    }
}