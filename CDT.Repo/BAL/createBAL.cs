using CDT.Repo.View_Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CDT.Repo.BAL
{
    public class createBAL
    {
        public int iccrete(ICVM icVM)
        {
            using (var db = new CDTEntities())
            {

                IC ic = new IC()
                {
                    BOM_Number = icVM.BOM_Number,
                    BU = icVM.BU,
                    Product_line = icVM.Product_line,
                    Site = icVM.Site,
                    Thermo_Number = icVM.Thermo_Number,
                    Item_Description = icVM.Item_Description,
                    Category = icVM.Category,
                    Part = icVM.Part,
                    Part_Type = icVM.Part_Type,
                    Technology = icVM.Technology,
                    Supply_Voltage = icVM.Supply_Voltage,
                    Memory___organisation = icVM.Memory___organisation,
                    Memory___access_Time = icVM.Memory___access_Time,
                    Mouting = icVM.Mouting,
                    Package = icVM.Package,
                    Lead_Spacing_Inch_ = icVM.Lead_Spacing_Inch_,
                    No___of_pins = icVM.No___of_pins,
                    Operating__Temperature = icVM.Operating__Temperature,
                };

                db.ICs.Add(ic);
                db.SaveChanges();

                return ic.Id;

                //ICMnfs = GetICMnfs(icVM)
            };
        }

        public List<ICMnf> GetICMnfs(ICVM icVM)
        {
            List<ICMnf> icVMs = new List<ICMnf>();

            foreach (var item in icVM.ICMnfs)
            {

            }

            return icVMs;
        }
    }
}
