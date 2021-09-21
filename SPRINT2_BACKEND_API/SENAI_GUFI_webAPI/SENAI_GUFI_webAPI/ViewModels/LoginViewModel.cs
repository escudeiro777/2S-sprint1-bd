﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace SENAI_GUFI_webAPI.ViewModels
{
    public class LoginViewModel
    {
        [Required(ErrorMessage = "Informe o e-mail do usuário!")]
        public string Email { get; set; }
        [Required(ErrorMessage = "Informe a senha do usuário!")]
        public string Senha { get; set; }
        
    }
}
