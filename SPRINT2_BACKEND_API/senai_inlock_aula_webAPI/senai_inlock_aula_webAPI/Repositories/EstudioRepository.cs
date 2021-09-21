using senai_inlock_aula_webAPI.Contexts;
using senai_inlock_aula_webAPI.Domains;
using senai_inlock_aula_webAPI.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace senai_inlock_aula_webAPI.Repositories
{
    public class EstudioRepository : IEstudioRepositorycs
    {
        InLockContext ctx = new InLockContext();
        public void AtualizarUrl(int idEstudio, Estudio estudioAtualizado)
        {
            throw new NotImplementedException();
        }

        public Estudio BuscarPorId(int idEstudio)
        {
           
            return ctx.Estudios.FirstOrDefault(e => e.IdEstudio == idEstudio);
        }

        public void Cadastrar(Estudio novoEstudio)
        {
            ctx.Estudios.Add(novoEstudio);
            ctx.SaveChanges();
        }

        public void Deletar(int idEstudio)
        {
            throw new NotImplementedException();
        }

        public List<Estudio> Listar()
        {
            return ctx.Estudios.ToList();
        }

        public List<Estudio> ListarComJogos()
        {
            throw new NotImplementedException();
        }
    }
}
