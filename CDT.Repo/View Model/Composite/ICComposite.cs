using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CDT.Repo.View_Model.Composite
{
    public class ICComposite
    {
        public IC ICMain { get; set; }
        public List<ICMnf> ICMainMnf { get; set; }
    }
}
