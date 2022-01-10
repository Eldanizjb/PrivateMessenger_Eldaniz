using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.SignalR;
using SignalRMessenger.Data;
using SignalRMessenger.Models;
using SignalRMessenger.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SignalRMessenger.Hubs
{
    public class ChatHub : Hub
    {
        private readonly AppDbContext _context;
        private readonly UserManager<IdentityUser> _userManager;
        private readonly SignInManager<IdentityUser> _signInManager;
        private readonly IHttpContextAccessor _httpContext;

        public ChatHub(AppDbContext context,
            UserManager<IdentityUser> userManager,
            SignInManager<IdentityUser> signInManager,
            IHttpContextAccessor httpContextAccessor)
        {
            _context = context;
            _userManager = userManager;
            _signInManager = signInManager;
            _httpContext = httpContextAccessor;
        }
        //static List<CustomUser> ConnectedUsers = new List<CustomUser>();
        //static List<Message> CurrentMessage = new List<Message>();
        //public void Connect(string UserName, int UserID)
        //{
        //    var id = Context.ConnectionId;

        //    if (_context.CustomUsers.Count(x => x.ConnectionId == id) == 0)
        //    {
        //        _context.CustomUsers.Add(new CustomUser { ConnectionId = id, UserName = UserName + "-" + UserID, UserID = UserID });
        //    }
        //    CustomUser CurrentUser = _context.CustomUsers.Where(u => u.ConnectionId == id).FirstOrDefault();
        //    // send to caller           
        //    Clients.Caller.onConnected(CurrentUser.UserID.ToString(), CurrentUser.UserName, ConnectedUsers, CurrentMessage, CurrentUser.UserID);
        //    // send to all except caller client           
        //    Clients.AllExcept(CurrentUser.ConnectionId).onNewUserConnected(CurrentUser.UserID.ToString(), CurrentUser.UserName, CurrentUser.UserID);
        //}

        //public async Task SendMessage(string user, string message)
        //{
        //    //await Clients.All.SendAsync("ReceiveMessage", user, message);
        //}

        public async Task SendPrivateMessage(string recieverId, string message)
        {

            IdentityUser loggedInUser = await _userManager.GetUserAsync(_httpContext.HttpContext.User);
            await Clients.User(recieverId).SendAsync("ReceiveMessage", loggedInUser.UserName, message);

            Message newMessage = new Message()
            {
                Text = message,
                RecieverId = recieverId,
                SenderId = loggedInUser.Id,
                CreatedDate = DateTime.Now
            };
            
                //string fromconnectionid = Context.ConnectionId;
                //string strfromUserId = (ConnectedUsers.Where(u => u.ConnectionId == Context.ConnectionId).Select(u => u.UserID).FirstOrDefault()).ToString();
                //int _fromUserId = 0;
                //int.TryParse(strfromUserId, out _fromUserId);
                //int _toUserId = 0;
                //int.TryParse(recieverId, out _toUserId);
                //List<CustomUser> FromUsers = ConnectedUsers.Where(u => u.UserID == _fromUserId).ToList();
                //List<CustomUser> ToUsers = ConnectedUsers.Where(x => x.UserID == _toUserId).ToList();

                //if (FromUsers.Count != 0 && ToUsers.Count() != 0)
                //{
                //    foreach (var ToUser in ToUsers)
                //    {
                //        // send to                                                                                            //Chat Title
                //        Clients.Client(ToUser.ConnectionId).sendPrivateMessage(_fromUserId.ToString(), FromUsers[0].UserName, FromUsers[0].UserName, message);
                //    }


                //    foreach (var FromUser in FromUsers)
                //    {
                //        // send to caller user                                                                                //Chat Title
                //        Clients.Client(FromUser.ConnectionId).sendPrivateMessage(_toUserId.ToString(), FromUsers[0].UserName, ToUsers[0].UserName, message);
                //    }
                //    // send to caller user
                //    //Clients.Caller.sendPrivateMessage(_toUserId.ToString(), FromUsers[0].UserName, message);
                //    //ChatDB.Instance.SaveChatHistory(_fromUserId, _toUserId, message);
                //    Message _Message = new Message { RecieverId = _fromUserId, Reciever = FromUsers[0].UserName, SenderId = _toUserId, Sender = ToUsers[0].UserName, Text = message };
                //    AddMessageinCache(_Message);
                //}
            
            _context.Messages.Add(newMessage);
            _context.SaveChanges();
        }
        //public void RequestLastMessage(int RecieverId, int SenderId)
        //{
        //    List<Message> CurrentChatMessages = (from u in CurrentMessage where ((u.RecieverId == RecieverId && u.SenderId == SenderId) || (u.RecieverId == RecieverId && u.SenderId == SenderId)) select u).ToList();
        //    //send to caller user
        //    Clients.Caller.GetLastMessages(SenderId, CurrentChatMessages);
        //}

        //public void SendUserTypingRequest(string toUserId)
        //{
        //    string strfromUserId = (ConnectedUsers.Where(u => u.ConnectionId == Context.ConnectionId).Select(u => u.UserID).FirstOrDefault()).ToString();

        //    int _toUserId = 0;
        //    int.TryParse(toUserId, out _toUserId);
        //    List<CustomUser> ToUsers = ConnectedUsers.Where(x => x.UserID == _toUserId).ToList();

        //    foreach (var ToUser in ToUsers)
        //    {
        //        // send to                                                                                            
        //        Clients.Client(ToUser.ConnectionId).ReceiveTypingRequest(strfromUserId);
        //    }
        //}

        //public override Task OnDisconnected(bool stopCalled)
        //{
        //    var item = ConnectedUsers.FirstOrDefault(x => x.ConnectionId == Context.ConnectionId);
        //    if (item != null)
        //    {
        //        ConnectedUsers.Remove(item);
        //        if (ConnectedUsers.Where(u => u.UserID == item.UserID).Count() == 0)
        //        {
        //            var id = item.UserID.ToString();
        //            Clients.All.onUserDisconnected(id, item.UserName);
        //        }
        //    }
        //    return base.OnDisconnected(stopCalled);
        //}

        public async Task Typing(string recieverId)
        {
            await Clients.User(recieverId).SendAsync("ShowTyping");
        }

        public async Task HideTyping(string recieverId)
        {
            await Clients.User(recieverId).SendAsync("HideTyping");
        }

        public override async Task OnDisconnectedAsync(Exception exception)
        {
            var Rid = _httpContext.HttpContext.Session.GetString("Rid");
            if (Rid!=null)
            {
                await Clients.User(Rid).SendAsync("HideTyping");
            }
           
        }

        //public override Task OnConnectedAsync()
        //{
        //    return base.OnConnectedAsync();
        //}

        //public override Task OnDisconnectedAsync(Exception exception)
        //{
        //    return base.OnDisconnectedAsync(exception);
        //}

        //private void AddMessageinCache(Message _Message)
        //{
        //    CurrentMessage.Add(_Message);
        //    if (CurrentMessage.Count > 100)
        //        CurrentMessage.RemoveAt(0);
        //}

        //        public async Task AddToGroup(string groupName)
        //{
        //    await Groups.AddToGroupAsync(Context.ConnectionId, groupName);

        //    await Clients.Group(groupName).SendAsync("Send", $"{Context.ConnectionId} has joined the group {groupName}.");
        //}

        //public async Task RemoveFromGroup(string groupName)
        //{
        //    await Groups.RemoveFromGroupAsync(Context.ConnectionId, groupName);

        //    await Clients.Group(groupName).SendAsync("Send", $"{Context.ConnectionId} has left the group {groupName}.");
        //}
    }
}
