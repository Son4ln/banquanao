using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using websitequanao.Models;

namespace websitequanao.Controllers
{
    public class ProductsController : Controller
    {
        DataClassesDataContext data = new DataClassesDataContext();
        //
        // GET: /Products/
        public ActionResult Index(int id)
        {
            var loaisp = data.LoaiSPs.ToList();
            ViewBag.dssp = loaisp;

            var loaibv = data.LoaiBVs.ToList().Take(3);
            ViewBag.dsbv = loaibv;

            var sp_mn = data.SanPhams.OrderByDescending(x => x.NgayDang).ToList().Take(8);
            ViewBag.sp_mn = sp_mn;

            ViewBag.TitlePage = "Chi tiết sản phẩm";
            ViewBag.ImageTitle = "/";

            var chitietsp = data.SanPhams.Where(x => x.ID == id).ToList();
            return View(chitietsp);
        }

	}
}