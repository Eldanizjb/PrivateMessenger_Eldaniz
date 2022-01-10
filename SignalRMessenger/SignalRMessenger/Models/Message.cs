using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace SignalRMessenger.Models
{
    public class Message
    {
        [Key]
        public int Id { get; set; }
        [MaxLength(2500)]
        public string Text { get; set; }
        public DateTime CreatedDate { get; set; }

        //public int FromUserID { get; set; }
        //public string FromUserName { get; set; } //resiver
        //public int ToUserID { get; set; }
        //public string ToUserName { get; set; } //sender


        [ForeignKey("Sender")]
        public string SenderId { get; set; }
        public CustomUser Sender { get; set; }

        [ForeignKey ("Reciever")]
        public string RecieverId { get; set; }
        public CustomUser Reciever { get; set; }
    }
}
