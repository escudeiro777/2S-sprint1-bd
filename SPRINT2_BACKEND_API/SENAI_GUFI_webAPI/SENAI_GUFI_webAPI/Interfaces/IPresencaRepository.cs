using SENAI_GUFI_webAPI.Domains;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SENAI_GUFI_webAPI.Interfaces
{
    interface IPresencaRepository
    {
        List<Presenca> ListarMinhas(int idUsuario);

        void Inscrever(Presenca inscricao);

        void AprovarRecusar(int idPresenca, string status);

    }
}
