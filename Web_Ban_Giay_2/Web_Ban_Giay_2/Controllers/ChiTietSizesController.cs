using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Web_Ban_Giay_2.Models.Entities;

namespace Web_Ban_Giay_2.Controllers
{
    public class ChiTietSizesController : Controller
    {
        private ShopModel db = new ShopModel();

        // GET: ChiTietSizes
        public ActionResult Index(int maGiay)
        {
            var chiTietSizes = db.ChiTietSizes.Include(c => c.Giay).Include(c => c.Size).Where(mg=>mg.Magiay == maGiay ).ToList();
            return View(chiTietSizes);
        }

        // GET: ChiTietSizes/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ChiTietSize chiTietSize = db.ChiTietSizes.Find(id);
            if (chiTietSize == null)
            {
                return HttpNotFound();
            }
            return View(chiTietSize);
        }

        // GET: ChiTietSizes/Create
        public ActionResult Create(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ChiTietSize chiTietSize = db.ChiTietSizes.Find(id);
            if (chiTietSize == null)
            {
                return HttpNotFound();
            }
            ViewBag.Magiay = new SelectList(db.Giays, "Magiay", "Tengiay", chiTietSize.Magiay);
            ViewBag.Masize = new SelectList(db.Sizes, "Masize", "Sosize", chiTietSize.Masize);
            return View(chiTietSize);
        }

        // POST: ChiTietSizes/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "MachitietSize,Masize,Magiay,Ghichu")] ChiTietSize chiTietSize)
        {
            if (ModelState.IsValid)
            {
                db.ChiTietSizes.Add(chiTietSize);
                db.SaveChanges();
                return RedirectToAction("Index", "SanPham");
            }

            ViewBag.Magiay = new SelectList(db.Giays, "Magiay", "Tengiay", chiTietSize.Magiay);
            ViewBag.Masize = new SelectList(db.Sizes, "Masize", "Masize", chiTietSize.Masize);
            return View(chiTietSize);
        }

        // GET: ChiTietSizes/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ChiTietSize chiTietSize = db.ChiTietSizes.Find(id);
            if (chiTietSize == null)
            {
                return HttpNotFound();
            }
            ViewBag.Magiay = new SelectList(db.Giays, "Magiay", "Tengiay", chiTietSize.Magiay);
            ViewBag.Masize = new SelectList(db.Sizes, "Masize", "Masize", chiTietSize.Masize);
            return View(chiTietSize);
        }

        // POST: ChiTietSizes/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "MachitietSize,Masize,Magiay,Ghichu")] ChiTietSize chiTietSize)
        {
            if (ModelState.IsValid)
            {
                db.Entry(chiTietSize).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.Magiay = new SelectList(db.Giays, "Magiay", "Tengiay", chiTietSize.Magiay);
            ViewBag.Masize = new SelectList(db.Sizes, "Masize", "Masize", chiTietSize.Masize);
            return View(chiTietSize);
        }

        // GET: ChiTietSizes/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ChiTietSize chiTietSize = db.ChiTietSizes.Find(id);
            if (chiTietSize == null)
            {
                return HttpNotFound();
            }
            return View(chiTietSize);
        }

        // POST: ChiTietSizes/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            ChiTietSize chiTietSize = db.ChiTietSizes.Find(id);
            db.ChiTietSizes.Remove(chiTietSize);
            db.SaveChanges();
            return RedirectToAction("Index", "SanPham");
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
