using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CDT.Repo.View_Model
{
    public class OptoelectronicsVM
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
        public string Function { get; set; }
        public string Detectable__light_Color { get; set; }
        public string Voltage { get; set; }
        public string Forward___Current { get; set; }
        public string Power { get; set; }
        public string Luminous___Intensity { get; set; }
        public string Peak_Wave__length { get; set; }
        public string Dominant___Wavelength { get; set; }
        public string Reverse___Voltage { get; set; }
        public Nullable<double> Viewing_Angle { get; set; }
        public string Mounting_Style { get; set; }
        public string Package { get; set; }
        public string Operating__Temperature { get; set; }
        public int Id { get; set; }

        public virtual ICollection<OptoelectronicsMnf> OptoelectronicsMnfs { get; set; }
    }
}
