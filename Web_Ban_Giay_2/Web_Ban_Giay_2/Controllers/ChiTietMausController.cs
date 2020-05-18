﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Web_Ban_Giay_2.Models.Entities;
using PagedList;

namespace Web_Ban_Giay_2.Controllers
{
    public class ChiTietMausController : Controller
    {
        private ShopModel db = new ShopModel();

        // GET: ChiTietMaus
        public ActionResult Index(int maGiay)
        {
            var chiTietMaus = db.ChiTietMaus.Include(c => c.Giay).Include(c => c.Mau).Where(mg=>mg.Magiay == maGiay).ToList();
            return View(chiTietMaus);
        }

        // GET: ChiTietMaus/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ChiTietMau chiTietMau = db.ChiTietMaus.Find(id);
            if (chiTietMau == null)
            {
                return HttpNotFound();
            }
            return View(chiTietMau);
        }

        // GET: ChiTietMaus/Create
        public ActionResult Create(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ChiTietMau chiTietMau = db.ChiTietMaus.Find(id);
            if (chiTietMau == null)
            {
                return HttpNotFound();
            }
            ViewBag.Magiay = new SelectList(db.Giays, "Magiay", "Tengiay", chiTietMau.Magiay);
            ViewBag.Mamau = new SelectList(db.Maus, "Mamau", "Tenmau", chiTietMau.Mamau);
            return View(chiTietMau);
        }

        // POST: ChiTietMaus/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "MachitietMau,Mamau,Magiay,Ghichu")] ChiTietMau chiTietMau)
        {
            if (ModelState.IsValid)
            {
                db.ChiTietMaus.Add(chiTietMau);
                db.SaveChanges();
                return RedirectToAction("Index", "SanPham");
            }

            ViewBag.Magiay = new SelectList(db.Giays, "Magiay", "Tengiay", chiTietMau.Magiay);
            ViewBag.Mamau = new SelectList(db.Maus, "Mamau", "Tenmau", chiTietMau.Mamau);
            return View(chiTietMau);
        }

        // GET: ChiTietMaus/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ChiTietMau chiTietMau = db.ChiTietMaus.Find(id);
            if (chiTietMau == null)
            {
                return HttpNotFound();
            }
            ViewBag.Magiay = new SelectList(db.Giays, "Magiay", "Tengiay", chiTietMau.Magiay);
            ViewBag.Mamau = new SelectList(db.Maus, "Mamau", "Tenmau", chiTietMau.Mamau);
            return View(chiTietMau);
        }

        // POST: ChiTietMaus/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "MachitietMau,Mamau,Magiay,Ghichu")] ChiTietMau chiTietMau)
        {
            if (ModelState.IsValid)
            {
                db.Entry(chiTietMau).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.Magiay = new SelectList(db.Giays, "Magiay", "Tengiay", chiTietMau.Magiay);
            ViewBag.Mamau = new SelectList(db.Maus, "Mamau", "Tenmau", chiTietMau.Mamau);
            return View(chiTietMau);
        }

        // GET: ChiTietMaus/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ChiTietMau chiTietMau = db.ChiTietMaus.Find(id);
            if (chiTietMau == null)
            {
                return HttpNotFound();
            }
            return View(chiTietMau);
        }

        // POST: ChiTietMaus/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            ChiTietMau chiTietMau = db.ChiTietMaus.Find(id);
            db.ChiTietMaus.Remove(chiTietMau);
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
