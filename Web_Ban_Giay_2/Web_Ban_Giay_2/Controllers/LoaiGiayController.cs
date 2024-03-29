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
    public class LoaiGiayController : Controller
    {
        private ShopModel db = new ShopModel();

        // GET: LoaiGiay
        public ActionResult Index(int? page)
        {
            if (Session["username"] == null)
            {
                return View("/Views/Admin/Login.cshtml");
            }
            else
            {
                if (page == null) page = 1;

                var giay = (from l in db.LoaiGiays
                             select l).OrderBy(x => x.Maloaigiay);

                int pageSize = 10;

                int pageNumber = (page ?? 1);

                return View(giay.ToPagedList(pageNumber, pageSize));
            }
            
        }

        // GET: LoaiGiay/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            LoaiGiay loaiGiay = db.LoaiGiays.Find(id);
            if (loaiGiay == null)
            {
                return HttpNotFound();
            }
            return View(loaiGiay);
        }

        // GET: LoaiGiay/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: LoaiGiay/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Maloaigiay,Tenloaigiay")] LoaiGiay loaiGiay)
        {
            if (ModelState.IsValid)
            {
                db.LoaiGiays.Add(loaiGiay);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(loaiGiay);
        }

        // GET: LoaiGiay/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            LoaiGiay loaiGiay = db.LoaiGiays.Find(id);
            if (loaiGiay == null)
            {
                return HttpNotFound();
            }
            return View(loaiGiay);
        }

        // POST: LoaiGiay/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Maloaigiay,Tenloaigiay")] LoaiGiay loaiGiay)
        {
            if (ModelState.IsValid)
            {
                db.Entry(loaiGiay).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(loaiGiay);
        }

        // GET: LoaiGiay/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            LoaiGiay loaiGiay = db.LoaiGiays.Find(id);
            if (loaiGiay == null)
            {
                return HttpNotFound();
            }
            return View(loaiGiay);
        }

        // POST: LoaiGiay/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            LoaiGiay loaiGiay = db.LoaiGiays.Find(id);
            db.LoaiGiays.Remove(loaiGiay);
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
