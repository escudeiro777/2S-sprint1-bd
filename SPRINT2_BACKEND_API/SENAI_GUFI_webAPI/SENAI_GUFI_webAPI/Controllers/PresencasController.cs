﻿using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using SENAI_GUFI_webAPI.Domains;
using SENAI_GUFI_webAPI.Interfaces;
using SENAI_GUFI_webAPI.Repositories;
using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Linq;
using System.Threading.Tasks;

namespace SENAI_GUFI_webAPI.Controllers
{
    [Produces("application/json")]
    [Route("api/[controller]")]
    [ApiController]
    public class PresencasController : ControllerBase
    {
        private IPresencaRepository _presencaRepository { get; set; }

        public PresencasController()
        {
            _presencaRepository = new PresencaRepository();
        }


        [Authorize(Roles = "2")]
        [HttpGet("minhas")]
        public IActionResult ListarMinhas()
        {
            try
            {
                int idUsuario = Convert.ToInt32(HttpContext.User.Claims.First(c => c.Type == JwtRegisteredClaimNames.Jti).Value);
                return Ok(_presencaRepository.ListarMinhas(idUsuario));
            }
            catch (Exception error)
            {
                return BadRequest(new { mensagem = "Não é possível mostrar as presenças se o usuário não estiver logado!", error });
            }
        }

        [Authorize(Roles = "2")]
        [HttpPost("incricao/{idEvento}")]
        public IActionResult Inscrever(int idEvento)
        {
            try
            {
                Presenca novaPresenca = new Presenca()
                {
                    IdUsuario = Convert.ToInt32(HttpContext.User.Claims.First(c => c.Type == JwtRegisteredClaimNames.Jti).Value),
                    IdEvento = idEvento,
                    IdSituacao = 3
                };

                _presencaRepository.Inscrever(novaPresenca);

                return StatusCode(201);
            }
            catch (Exception error)
            {
                return BadRequest(new
                {
                    mensagem = "Não é possível se inscrever em um evento se o usuário não estiver logado!",
                    error
                });
            }
        }
        [Authorize(Roles = "1")]
        [HttpPatch("{idPresenca}")]
        public IActionResult AprovarRecusar(int idPresenca, Presenca status)
        {
            try
            {
                _presencaRepository.AprovarRecusar(idPresenca, status.IdSituacao.ToString());

                return StatusCode(204);
            }
            catch (Exception error)
            {
                return BadRequest(error);
            }
        }
    }
} 
