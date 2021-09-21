using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using senai_inlock_aula_webAPI.Domains;
using senai_inlock_aula_webAPI.Interfaces;
using senai_inlock_aula_webAPI.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace senai_inlock_aula_webAPI.Controllers
{
    [Produces("application/json")]
    [Route("api/[controller]")]
    [ApiController]
    public class EstudiosController : ControllerBase
    {
        private IEstudioRepositorycs _estudioRepository { get; set; }

        public EstudiosController()
        {
            _estudioRepository = new EstudioRepository();
        }

        [HttpGet]
        public IActionResult Listar()
        {
            List<Estudio> listaEstudios = _estudioRepository.Listar();

            return Ok(listaEstudios);
        }

        [HttpGet("{id}")]
        public IActionResult BuscarPorId(int idEstudio)
        {
            return Ok(_estudioRepository.BuscarPorId(idEstudio));
        }

        [HttpPost]
        public IActionResult Cadastrar (Estudio novoEstudio)
        {
            _estudioRepository.Cadastrar(novoEstudio);

            return StatusCode(201);
        }
    }
}
