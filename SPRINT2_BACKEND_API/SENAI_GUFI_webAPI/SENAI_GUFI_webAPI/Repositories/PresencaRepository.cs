using Microsoft.EntityFrameworkCore;
using SENAI_GUFI_webAPI.Context;
using SENAI_GUFI_webAPI.Domains;
using SENAI_GUFI_webAPI.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SENAI_GUFI_webAPI.Repositories
{
    public class PresencaRepository : IPresencaRepository
    {
        GufiContext ctx = new();
        public void AprovarRecusar(int idPresenca, string status)
        {
            Presenca presencaBuscada = ctx.Presencas.FirstOrDefault(p => p.IdPresenca == idPresenca);
            switch (status)
            {
                case "1":
                    presencaBuscada.IdSituacao = 1;
                    break;
                case "2":
                    presencaBuscada.IdSituacao = 2;
                    break;
                case "3":
                    presencaBuscada.IdSituacao = 3;
                    break;

                default:
                    presencaBuscada.IdSituacao = presencaBuscada.IdSituacao;
                    break;
            }
           
        }

        public void Inscrever(Presenca inscricao)
        {
            ctx.Presencas.Add(inscricao);
            ctx.SaveChanges();
        }

        public List<Presenca> ListarMinhas(int idUsuario)
        {
            return ctx.Presencas
               .Include(p => p.IdUsuarioNavigation)
               .Include(p => p.IdEventoNavigation.IdTipoEventoNavigation)
               .Include(p => p.IdEventoNavigation.IdInstituicaoNavigation)
               .Include("IdSituacaoNavigation")
               .Where(p => p.IdUsuario == idUsuario)
               .ToList();
        }


    }
}
