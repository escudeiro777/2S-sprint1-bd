﻿using System;
using System.Collections.Generic;

#nullable disable

namespace SENAI_GUFI_webAPI.Domains
{
    public partial class Situacao
    {
        public Situacao()
        {
            Presencas = new HashSet<Presenca>();
        }

        public byte IdSituacao { get; set; }
        public string Descricao { get; set; }

        public virtual ICollection<Presenca> Presencas { get; set; }
    }
}
