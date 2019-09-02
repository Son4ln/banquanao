using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using websitequanao.Models;

namespace websitequanao.Controllers
{
    public class BrandsController : Controller
    {
        DataClassesDataContext data = new DataClassesDataContext();
        //
        // GET: /Brands/
        public ActionResult Index(int id)
        {

            var loaisp = data.LoaiSPs.ToList();
            ViewBag.dssp = loaisp;

            var loaibv = data.LoaiBVs.ToList().Take(3);
            ViewBag.dsbv = loaibv;

            var sp_mn = data.SanPhams.OrderByDescending(x => x.NgayDang).ToList().Take(8);
            ViewBag.sp_mn = sp_mn;

            ViewBag.TitlePage = "Sản phẩm";
            ViewBag.ImageTitle = "/";

            if(id == 0)
            {
                var sptheoloai = data.SanPhams.OrderByDescending(x => x.DonGia).ToList();
                ViewBag.sptheoloai = sptheoloai;
            }
            else
            {
                var sptheoloai = data.SanPhams.Where(x => x.ID_LoaiSP == id).ToList();
                ViewBag.sptheoloai = sptheoloai;
            }  
         
            return View();
        }

	}
}