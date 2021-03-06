using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace SignalRMessenger.ViewModels
{
    public class VmRegister 
    {
        [MaxLength(100)]
        public string Name { get; set; }
        [MaxLength(100)]
        public string Surname { get; set; }
        [MaxLength(100),Required]
        public string Password { get; set; }
        [MaxLength(100), Required]
        public string Email { get; set; }
    }
}
