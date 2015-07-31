using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CDT.Repo.View_Model
{
    public class FuseVM
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
        public string Material { get; set; }
        public string Blow_speed { get; set; }
        public string Rated_Current { get; set; }
        public string Volt { get; set; }
        public string Mounting_Style { get; set; }
        public string Package_size { get; set; }
        public string Dimension { get; set; }
        public Nullable<double> Lead_Spacing_ { get; set; }
        public int Id { get; set; }

        public virtual ICollection<FuseMnf> FuseMnfs { get; set; }
    }
}
