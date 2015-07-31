using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CDT.Repo.View_Model
{
    public class ICVM
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
        public string Supply_Voltage { get; set; }
        public string Memory___organisation { get; set; }
        public string Memory___access_Time { get; set; }
        public string Mouting { get; set; }
        public string Package { get; set; }
      //  public Nullable<double> Lead_Spacing_Inch_ { get; set; }
        public double? Lead_Spacing_Inch_ { get; set; }
        public Nullable<int> No___of_pins { get; set; }
        public string Operating__Temperature { get; set; }
        public int Id { get; set; }

        public virtual ICollection<ICMnf> ICMnfs { get; set; }
    }
}
