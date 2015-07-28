//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CDT.Repo
{
    using System;
    using System.Collections.Generic;
    
    public partial class Inductor
    {
        public Inductor()
        {
            this.InductorMnfs = new HashSet<InductorMnf>();
        }
    
        public string BOM_Number { get; set; }
        public string BU { get; set; }
        public string Product_line { get; set; }
        public string Site { get; set; }
        public int Thermo_Number { get; set; }
        public string Item_Description { get; set; }
        public string Category { get; set; }
        public string Part { get; set; }
        public string Part_Type { get; set; }
        public string Construction { get; set; }
        public string Operating_Temperature { get; set; }
        public string Impedence { get; set; }
        public string Inductance { get; set; }
        public string Capacitance { get; set; }
        public string Tol { get; set; }
        public string Current_Rating { get; set; }
        public string DC_Resistance { get; set; }
        public string Shielding { get; set; }
        public string Frequency { get; set; }
        public string Mounting { get; set; }
        public string Package_for_SMD { get; set; }
        public string Dimensions { get; set; }
        public int Id { get; set; }
    
        public virtual ICollection<InductorMnf> InductorMnfs { get; set; }
    }
}
