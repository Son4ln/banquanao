using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using websitequanao.Models;

namespace websitequanao.Controllers
{
    public class HomeController : Controller
    {
        DataClassesDataContext data = new DataClassesDataContext();
        public ActionResult Index()
        {
            var loaisp = data.LoaiSPs.ToList();
            ViewBag.dssp = loaisp;

            var loaibv = data.LoaiBVs.ToList().Take(3);
            ViewBag.dsbv = loaibv;

            var sp_km = data.SanPhams.Where(x => x.GiamGia > 0).OrderByDescending(x => x.GiamGia).ToList().Take(8);
            ViewBag.sp_km = sp_km;

            var sp_mn = data.SanPhams.OrderByDescending(x => x.NgayDang).ToList().Take(8);
            ViewBag.sp_mn = sp_mn;

            var tt_mn = data.BaiViets.OrderByDescending(x => x.NgayDang).ToList().Take(3);
            ViewBag.tt_mn = tt_mn;
            return View();
        }

    }
}