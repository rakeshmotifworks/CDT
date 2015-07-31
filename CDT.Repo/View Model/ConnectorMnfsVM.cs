using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CDT.Repo.View_Model
{
    public class ConnectorMnf
    {
        public string Mfr__Name { get; set; }
        public string Mfr__Part_Number { get; set; }
        public string Part_Status { get; set; }
        public string RoHS_Status { get; set; }
        public string Comments { get; set; }
        public string Type { get; set; }
        public int M_Id { get; set; }
        public int Id { get; set; }

        public virtual Connector Connector { get; set; }
    }
}
