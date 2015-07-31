using CDT.Repo.View_Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CDT.Repo.BAL
{
    
    public class IndexBAL
    {
        public List<ComponentVM> GetComponentList()
        {
            List<ComponentVM> components = new List<ComponentVM>();

            using (var db = new CDTEntities())
            {
                components = (from c in db.Components
                              select new ComponentVM
                              {
                                  Id = c.Id,
                                  Component1 = c.Component1
                              }).ToList();
            }

            return components;
        }
    }
}
