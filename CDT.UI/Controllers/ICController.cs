using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using CDT.Repo;
using CDT.Repo.View_Model;

namespace CDT.UI.Controllers
{
    public class ICController : Controller
    {
        private CDTEntities db = new CDTEntities();

        // GET: /IC/
        public ActionResult Index()
        {
            return View(db.ICs.ToList());
        }

        // GET: /IC/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            IC ic = db.ICs.Find(id);
            if (ic == null)
            {
                return HttpNotFound();
            }
            return View(ic);
        }

        // GET: /IC/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: /IC/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "BOM_Number,BU,Product_line,Site,Thermo_Number,Item_Description,Category,Part,Part_Type,Technology,Supply_Voltage,Memory___organisation,Memory___access_Time,Mouting,Package,Lead_Spacing_Inch_,No___of_pins,Operating__Temperature,Id")] ICVM ic)
        {
            if (ModelState.IsValid)
            {
                //Convert ICVM to IC

                IC icNew = new IC();

                db.ICs.Add(icNew);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(ic);
        }

        // GET: /IC/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            IC ic = db.ICs.Find(id);
            if (ic == null)
            {
                return HttpNotFound();
            }
            return View(ic);
        }

        // POST: /IC/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include="BOM_Number,BU,Product_line,Site,Thermo_Number,Item_Description,Category,Part,Part_Type,Technology,Supply_Voltage,Memory___organisation,Memory___access_Time,Mouting,Package,Lead_Spacing_Inch_,No___of_pins,Operating__Temperature,Id")] IC ic)
        {
            if (ModelState.IsValid)
            {
                db.Entry(ic).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(ic);
        }

        // GET: /IC/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            IC ic = db.ICs.Find(id);
            if (ic == null)
            {
                return HttpNotFound();
            }
            return View(ic);
        }

        // POST: /IC/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            IC ic = db.ICs.Find(id);
            db.ICs.Remove(ic);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
