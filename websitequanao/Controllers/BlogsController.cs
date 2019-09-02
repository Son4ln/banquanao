using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using websitequanao.Models;

namespace websitequanao.Controllers
{
    public class BlogsController : Controller
    {
        DataClassesDataContext data = new DataClassesDataContext();
        //
        // GET: /Blogs/


        public ActionResult Index(int id)
        {
            var loaisp = data.LoaiSPs.ToList();
            ViewBag.dssp = loaisp;

            var loaibv = data.LoaiBVs.ToList().Take(3);
            ViewBag.dsbv = loaibv;

            var tt_mn = data.BaiViets.OrderByDescending(x => x.NgayDang).ToList().Take(3);
            ViewBag.tt_mn = tt_mn;

            ViewBag.TitlePage = "Tin tức";
            ViewBag.ImageTitle = "/";

            if(id == 0)
            {
                var tttheoloai = data.BaiViets.Where(x => x.LoaiBV.Ten != "Giới thiệu" ).OrderByDescending(x => x.NgayDang).ToList();
                ViewBag.tttheoloai = tttheoloai;
            }
            else
            {
                var tttheoloai = data.BaiViets.Where(x => x.ID_LoaiBV == id).OrderByDescending(x => x.NgayDang).ToList();
                ViewBag.tttheoloai = tttheoloai;
            }
           
            return View();
        }

        public ActionResult Blog_Detail(int id)
        {
            var loaisp = data.LoaiSPs.ToList();
            ViewBag.dssp = loaisp;

            var loaibv = data.LoaiBVs.ToList().Take(3);
            ViewBag.dsbv = loaibv;

            var tt_mn = data.BaiViets.OrderByDescending(x => x.NgayDang).ToList().Take(3);
            ViewBag.tt_mn = tt_mn;

            ViewBag.TitlePage = "Chi tiết tin tức";
            ViewBag.ImageTitle = "/";

            var chitiettt = data.BaiViets.Where(x => x.ID == id).ToList();

            return View(chitiettt);
        }
	}
}