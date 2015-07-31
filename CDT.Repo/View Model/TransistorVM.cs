using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CDT.Repo.View_Model
{
    public class TransistorVM
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
        public string Technology { get; set; }
        public Nullable<double> Gain_Band___width_MhZ_ { get; set; }
        public string Material { get; set; }
        public string VCE___Volts_ { get; set; }
        public string Current___Amps_ { get; set; }
        public string Power___Watts_ { get; set; }
        public string Application { get; set; }
        public string Mounting { get; set; }
        public string Package { get; set; }
        public string Temperature { get; set; }
        public int Id { get; set; }

        public virtual ICollection<TransistorMnf> TransistorMnfs { get; set; }
    }
}
