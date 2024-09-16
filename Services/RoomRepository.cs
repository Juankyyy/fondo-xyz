using fondoxyz.Data;
using fondoxyz.Models;

namespace fondoxyz.Services
{
    public class RoomRepository
    {
        private readonly FondoxyzContext _context;

        public RoomRepository(FondoxyzContext context)
        {
            _context = context;
        }

        public IEnumerable<Rooms> GetRooms()
        {
            return _context.Rooms.ToList();
        }

        public IEnumerable<Rooms> GetRoomsByPlace(int id)
        {
            return _context.Rooms.Where(r => r.PropertyId == id).ToList();
        }
    }
}