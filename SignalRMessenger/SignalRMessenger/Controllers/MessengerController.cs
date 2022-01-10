using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using SignalRMessenger.Data;
using SignalRMessenger.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SignalRMessenger.Controllers
{
    public class MessengerController : Controller
    {
        private readonly AppDbContext _context;
        private readonly UserManager<IdentityUser> _userManager;
        private readonly SignInManager<IdentityUser> _signInManager;
        private readonly IHttpContextAccessor _httpcontextAccessor;

        public MessengerController(AppDbContext context, UserManager<IdentityUser> userManager, SignInManager<IdentityUser> signInManager, IHttpContextAccessor httpcontextAccessor)
        {
            _context = context;
            _userManager = userManager;
            _signInManager = signInManager;
            _httpcontextAccessor = httpcontextAccessor;
        }
        public IActionResult Index()
        {
            string callerId = _userManager.GetUserId(User);
            return View(_context.CustomUsers.Where(cu => cu.Id != callerId).ToList());
        }

        public IActionResult Chat(string recieverId)
        {
            string senderId = _userManager.GetUserId(User);
            VmMessage model = new VmMessage();
            model.User = _context.CustomUsers.Find(recieverId);
            model.Messages = _context.Messages.Where(m => (m.SenderId == senderId && m.RecieverId == recieverId) || (m.SenderId == recieverId && m.RecieverId == senderId)).ToList();
            model.SenderId = senderId;

            _httpcontextAccessor.HttpContext.Session.SetString("Rid", model.User.Id);
            return View(model);
        }
    }
}
