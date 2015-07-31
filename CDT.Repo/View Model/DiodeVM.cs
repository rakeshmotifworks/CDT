using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CDT.Repo.View_Model
{
public    class DiodeVM
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
        public string DC_Voltage { get; set; }
        public string Forward_Voltage { get; set; }
        public string Forward_Surge_Current { get; set; }
        public string Power_Dissipation { get; set; }
        public string Mounting_Style { get; set; }
        public string Package { get; set; }
        public string Operating_Temperature { get; set; }
        public string Dimensions { get; set; }
        public int Id { get; set; }

        public virtual ICollection<DiodeMnf> DiodeMnfs { get; set; }
    }
}
