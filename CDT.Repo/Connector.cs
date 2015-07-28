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
    
    public partial class Connector
    {
        public Connector()
        {
            this.ConnectorMnfs = new HashSet<ConnectorMnf>();
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
        public string Contact_Contact_Type { get; set; }
        public string Contact_Surface { get; set; }
        public string Max___Temperature { get; set; }
        public Nullable<int> No_of___Rows { get; set; }
        public Nullable<int> No_of___Positions { get; set; }
        public string Connector___Orientation { get; set; }
        public string Contact___Rating { get; set; }
        public string Voltage___Rating { get; set; }
        public string Package { get; set; }
        public Nullable<double> Pin_Spacing___or_pitch { get; set; }
        public int Id { get; set; }
    
        public virtual ICollection<ConnectorMnf> ConnectorMnfs { get; set; }
    }
}
