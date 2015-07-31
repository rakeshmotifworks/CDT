﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CDT.Repo.View_Model
{
    public class OscillatorsVM
    {
        public string BOM_Number { get; set; }
        public string BU { get; set; }
        public string Product_line { get; set; }
        public string Site { get; set; }
        public int Thermo_Number { get; set; }
        public string Item_Description { get; set; }
        public string Category { get; set; }
        public string Part { get; set; }
        public string Part_Type { get; set; }
        public string Frequency { get; set; }
        public string Freq____Tolerance { get; set; }
        public string Frequency___Stability { get; set; }
        public string Load___Capacitance { get; set; }
        public string Mounting { get; set; }
        public string Operating___Temp { get; set; }
        public string Dimensions { get; set; }
        public int Id { get; set; }

        public virtual ICollection<OscillatorsMnf> OscillatorsMnfs { get; set; }
    }
}