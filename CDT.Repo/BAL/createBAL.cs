using CDT.Repo.View_Model;
using CDT.Repo.View_Model.Composite;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CDT.Repo.BAL
{
    public class createBAL
    {
        public int iccrete(ICComposite icVM)
        {
            using (var db = new CDTEntities())
            {
                
                IC ic = new IC()
                {
                    BOM_Number = icVM.ICMain.BOM_Number,
                    BU = icVM.ICMain.BU,
                    Product_line = icVM.ICMain.Product_line,
                    Site = icVM.ICMain.Site,
                    Thermo_Number = icVM.ICMain.Thermo_Number,
                    Item_Description = icVM.ICMain.Item_Description,
                    Category = icVM.ICMain.Category,
                    Part = icVM.ICMain.Part,
                    Part_Type = icVM.ICMain.Part_Type,
                    Technology = icVM.ICMain.Technology,
                    Supply_Voltage = icVM.ICMain.Supply_Voltage,
                    Memory___organisation = icVM.ICMain.Memory___organisation,
                    Memory___access_Time = icVM.ICMain.Memory___access_Time,
                    Mouting = icVM.ICMain.Mouting,
                    Package = icVM.ICMain.Package,
                    Lead_Spacing_Inch_ = icVM.ICMain.Lead_Spacing_Inch_,
                    No___of_pins = icVM.ICMain.No___of_pins,
                    Operating__Temperature = icVM.ICMain.Operating__Temperature,
                    ICMnfs = GetICMnfs(icVM)
                };
                
                db.ICs.Add(ic);
                db.SaveChanges();

                return ic.Id;


            };
        }

        public List<ICMnf> GetICMnfs(ICComposite icVM)
        {
            List<ICMnf> icVMs = new List<ICMnf>();

            foreach (var item in icVM.ICMainMnf)
            {
                icVMs.Add(new ICMnf()
                {
                    Mfr__Name=item.Mfr__Name,
                    Mfr__Part_Number=item.Mfr__Part_Number,
                    Part_Status=item.Part_Status,
                    RoHS_Status=item.RoHS_Status,
                    Comments=item.Comments,
                    M_Id=1,
                    Type=item.Type

                });
            }

            return icVMs;
        }
    }
}
