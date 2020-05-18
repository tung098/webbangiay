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
    public class SizeController : Controller
    {
        private ShopModel db = new ShopModel();

        // GET: Size
        public ActionResult Index(int? page)
        {
            if (Session["username"] == null)
            {
                return View("/Views/Admin/Login.cshtml");
            }
            else
            {
                if (page == null) page = 1;

                var giay = (from l in db.Sizes
                             select l).OrderBy(x => x.Masize);

                int pageSize = 10;

                int pageNumber = (page ?? 1);

                return View(giay.ToPagedList(pageNumber, pageSize));
            }
            
        }

        // GET: Size/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Size size = db.Sizes.Find(id);
            if (size == null)
            {
                return HttpNotFound();
            }
            return View(size);
        }

        // GET: Size/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Size/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Masize,Sosize")] Size size)
        {
            if (ModelState.IsValid)
            {
                db.Sizes.Add(size);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(size);
        }

        // GET: Size/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Size size = db.Sizes.Find(id);
            if (size == null)
            {
                return HttpNotFound();
            }
            return View(size);
        }

        // POST: Size/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Masize,Sosize")] Size size)
        {
            if (ModelState.IsValid)
            {
                db.Entry(size).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(size);
        }

        // GET: Size/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Size size = db.Sizes.Find(id);
            if (size == null)
            {
                return HttpNotFound();
            }
            return View(size);
        }

        // POST: Size/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Size size = db.Sizes.Find(id);
            db.Sizes.Remove(size);
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
