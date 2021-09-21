using SENAI_GUFI_webAPI.Context;
using SENAI_GUFI_webAPI.Domains;
using SENAI_GUFI_webAPI.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SENAI_GUFI_webAPI.Repositories
{
    public class UsuarioRepository : IUsuarioRepository

    {
        GufiContext ctx = new GufiContext();
        public Usuario Login(string email, string senha)
        {
            return ctx.Usuarios.FirstOrDefault(u => u.Email == email && u.Senha == senha);
        }
    }
}
