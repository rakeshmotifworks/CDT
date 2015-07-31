using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CDT.Repo.View_Model
{
    public class RelayVM
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
        public string Form___Factor { get; set; }
        public double Current___Rating_A { get; set; }
        public string Coil___Rating { get; set; }
        public Nullable<double> Coil___Resistance { get; set; }
        public string Contact___Configuration { get; set; }
        public string Operating___Temperature { get; set; }
        public string Mounting___Style { get; set; }
        public string Dimensions { get; set; }
        public int Id { get; set; }

        public virtual ICollection<RelayMnf> RelayMnfs { get; set; }
    }
}
