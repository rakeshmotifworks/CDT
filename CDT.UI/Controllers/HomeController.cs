using CDT.Repo.View_Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using CDT.Repo.BAL;
using CDT.Repo;
using CDT.Repo.View_Model.Composite;

namespace CDT.UI.Controllers
{
    public class HomeController : Controller
    {
        CDTEntities db = new CDTEntities();
        private IndexBAL _indexBAL;
        private createBAL _createBAL;

        [Authorize(Roles = "Admin")]
        public ActionResult Index()
        {
            List<ComponentVM> components = new List<ComponentVM>();
            _indexBAL = new IndexBAL();
            components = _indexBAL.GetComponentList();

            return View(components);
        }

        public PartialViewResult IC()
        {
            Session["MnfsCount"] = null;
            CDTEntities db = new CDTEntities();
            ICComposite ic = new ICComposite();
            return PartialView("_ICPartial", ic);
        }

        public PartialViewResult ICMnfsPartial()
        {
            if (Session["MnfsCount"] == null)
            {
                Session["MnfsCount"] = 1;
            }
            else
            {
                Session["MnfsCount"] = Convert.ToInt16(Session["MnfsCount"]) + 1;
            }
            ICComposite icMnfs = new ICComposite();
            return PartialView("_ICMnfsPartial", icMnfs);
        }

        public PartialViewResult ICCreate(ICComposite icVM)
        {
            if(ModelState.IsValid)
            { 
            _createBAL=new createBAL();
            int get = _createBAL.iccrete(icVM);
            }

            return PartialView("_AllSuccessPartial");

        }
        //public PartialViewResult ICMnfsCreate(ICMnf icMnf, string from)
        //{
            
        //    List<ICMnf> icMnfs = new List<ICMnf>();
        //    if (from == "icMnfs")
        //    {
        //        icMnfs.Add(icMnf);
        //        Session["icMnfs"] = icMnfs;
        //    }
        //    else if (from == "icVMMnf")
        //    {



        //    }
        //    //createBAL createBAL = new createBAL();

        //    //int icId = createBAL.iccrete(icVM);

        //    return PartialView("_ICMnfsPartial");

        //}
        public PartialViewResult Connector()
        {
            CDTEntities db = new CDTEntities();
            Connector connector = new Connector();
            return PartialView("_ConnectorPartial", connector);
        }

        public void ConnectorCreate(ConnectorVM connectorVM)
        {
            Connector connector = new Connector();

        }
        public PartialViewResult Transistor()
        {
            CDTEntities db = new CDTEntities();
            Transistor transistor = new Transistor();
            return PartialView("_TransistorPartial", transistor);
        }

        public void TransistorCreate(TransistorVM transistorVM)
        {
            Transistor transistor = new Transistor();

        }
        public PartialViewResult Oscillators()
        {
            CDTEntities db = new CDTEntities();
            Oscillator oscillators = new Oscillator();
            return PartialView("_OscillatorsPartial", oscillators);
        }

        public void OscillatorsCreate(OscillatorsVM oscillatorsVM)
        {
            Oscillator oscillator = new Oscillator();

        }
        public PartialViewResult Relay()
        {
            CDTEntities db = new CDTEntities();
            Relay relay = new Relay();
            return PartialView("_RelayPartial", relay);
        }

        public void RelayCreate(RelayVM relayVM)
        {
            Relay relay = new Relay();

        }
        public PartialViewResult Diode()
        {
            CDTEntities db = new CDTEntities();
            Diode diode = new Diode();
            return PartialView("_DiodePartial", diode);
        }

        public void DiodeCreate(DiodeVM diodeVM)
        {
            Diode diode = new Diode();

        }
        public PartialViewResult Optoelectronics()
        {
            CDTEntities db = new CDTEntities();
            Optoelectronic optoelectronics = new Optoelectronic();
            return PartialView("_OptoelectronicsPartial", optoelectronics);
        }

        public void OptoelectronicsCreate(OptoelectronicsVM optoelectronicsVM)
        {
            Optoelectronic optoelectronic = new Optoelectronic();

        }
        public PartialViewResult Fuse()
        {
            CDTEntities db = new CDTEntities();
            Fuse fuse = new Fuse();
            return PartialView("_FusePartial", fuse);
        }

        public void FuseCreate(FuseVM fuseVM)
        {
            Fuse fuse = new Fuse();

        }
        public PartialViewResult Switch()
        {
            CDTEntities db = new CDTEntities();
            Switch switchNew = new Switch();
            return PartialView("_SwitchPartial", switchNew);
        }

        public void SwitchCreate(SwitchVM switchVM)
        {
            Switch switchNew = new Switch();

        }
        public PartialViewResult Inductor()
        {
            CDTEntities db = new CDTEntities();
            Inductor inductor = new Inductor();
            return PartialView("_InductorPartial", inductor);
        }

        public void InductorCreate(InductorVM inductorVM)
        {
            Inductor inductor = new Inductor();

        }
        public PartialViewResult Transformer()
        {
            CDTEntities db = new CDTEntities();
            Transformer transformer = new Transformer();
            return PartialView("_TransformerPartial", transformer);
        }

        public void TransformerCreate(TransformerVM transformerVM)
        {
            Transformer transformer = new Transformer();

        }
        public PartialViewResult Resistor()
        {
            CDTEntities db = new CDTEntities();
            Resistor resistor = new Resistor();
            return PartialView("_ResistorPartial", resistor);
        }

        public void ResistorCreate(ResistorVM resistorVM)
        {
            Resistor resistor = new Resistor();

        }
        public PartialViewResult Capacitor()
        {
            CDTEntities db = new CDTEntities();
            Capacitor capacitor = new Capacitor();
            return PartialView("_CapacitorPartial", capacitor);
        }

        public void CapacitorCreate(CapacitorVM capacitorVM)
        {
            Capacitor capacitor = new Capacitor();

        }
        public PartialViewResult Mechanical()
        {
            CDTEntities db = new CDTEntities();
            Mechanical mechanical = new Mechanical();
            return PartialView("_MechanicalPartial", mechanical);
        }

        public void MechanicalCreate(MechanicalVM mechanicalVM)
        {
            Mechanical mechanical = new Mechanical();

        }
        public PartialViewResult Misc()
        {
            CDTEntities db = new CDTEntities();
            Misc misc = new Misc();
            return PartialView("_MiscPartial", misc);
        }

        public void MiscCreate(MiscVM miscVM)
        {
            Misc misc = new Misc();

        }
        public PartialViewResult Wires()
        {
            CDTEntities db = new CDTEntities();
            Wire wires = new Wire();
            return PartialView("_WiresPartial", wires);
        }

        public void WiresCreate(WiresVM wiresVM)
        {
            Wire wire = new Wire();

        }
        public PartialViewResult Potentiometer()
        {
            CDTEntities db = new CDTEntities();
            Potentiometer potentiometer = new Potentiometer();
            return PartialView("_PotentiometerPartial", potentiometer);
        }

        public void PotentiometerCreate(PotentiometerVM potentiometerVM)
        {
            Potentiometer potentiometer = new Potentiometer();

        }
        public PartialViewResult Thermistor()
        {
            CDTEntities db = new CDTEntities();
            Thermistor thermistor = new Thermistor();
            return PartialView("_ThermistorPartial", thermistor);
        }

        public void ThermistorCreate(ThermistorVM thermistorVM)
        {
            Thermistor thermistor = new Thermistor();

        }
    }
}