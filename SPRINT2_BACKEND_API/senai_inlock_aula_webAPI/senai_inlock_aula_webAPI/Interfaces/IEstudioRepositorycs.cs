using senai_inlock_aula_webAPI.Domains;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace senai_inlock_aula_webAPI.Interfaces
{
    interface IEstudioRepositorycs
    {
        List <Estudio> Listar();
        Estudio BuscarPorId(int idEstudio);

        void Cadastrar(Estudio novoEstudio);

        void AtualizarUrl(int idEstudio, Estudio estudioAtualizado);

        void Deletar(int idEstudio);

        List<Estudio> ListarComJogos();
    }
}
