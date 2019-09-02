using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using websitequanao.Models;

namespace websitequanao.Controllers
{
    public class CartController : Controller
    {
        // GET: Cart
        public DataClassesDataContext data = new DataClassesDataContext();
        public ActionResult Index()
        {
            var loaisp = data.LoaiSPs.ToList();
            ViewBag.dssp = loaisp;

            var loaibv = data.LoaiBVs.ToList().Take(3);
            ViewBag.dsbv = loaibv;

            var tt_mn = data.BaiViets.OrderByDescending(x => x.NgayDang).ToList().Take(3);
            ViewBag.tt_mn = tt_mn;

            ViewBag.TitlePage = "Giỏ Hàng";
            ViewBag.ImageTitle = "/";
            List<CartModel> lscart = GioHang();
            return View(lscart);
        }

        public ActionResult Checkout()
        {
            var loaisp = data.LoaiSPs.ToList();
            ViewBag.dssp = loaisp;

            var loaibv = data.LoaiBVs.ToList().Take(3);
            ViewBag.dsbv = loaibv;

            var tt_mn = data.BaiViets.OrderByDescending(x => x.NgayDang).ToList().Take(3);
            ViewBag.tt_mn = tt_mn;

            List<CartModel> lscart = GioHang();

            int total = 0;

            foreach (var item in lscart)
            {
                total += item.THANHTIEN;
            }

            ViewBag.TitlePage = "Thanh toán";
            ViewBag.ImageTitle = "/";
            System.Globalization.NumberFormatInfo nfi = new System.Globalization.NumberFormatInfo();

            nfi.CurrencyDecimalDigits = 0;

            nfi.CurrencySymbol = "";
            ViewBag.total = String.Format(nfi, "{0:c}", total);
            return View(lscart);
        }


        public ActionResult CheckoutComplete()
        {
            var loaisp = data.LoaiSPs.ToList();
            ViewBag.dssp = loaisp;

            var loaibv = data.LoaiBVs.ToList().Take(3);
            ViewBag.dsbv = loaibv;

            var tt_mn = data.BaiViets.OrderByDescending(x => x.NgayDang).ToList().Take(3);
            ViewBag.tt_mn = tt_mn;
            return View();
        }

        
        [HttpPost]
        public ActionResult CheckoutAction()
        {

            string hoten = Request["hoten"];
            string email = Request["email"];
            string phone = Request["phone"];
            string addr = Request["addr"];
            List<CartModel> lscart = GioHang();

            int total = 0;

            foreach (var item in lscart)
            {
                total += item.THANHTIEN;
            }
            var customer = new KhachHang { HoTen = hoten, Email = email, SDT = phone, DiaChi = addr };
            data.KhachHangs.InsertOnSubmit(customer);
            data.SubmitChanges();
            var hoadon = new HoaDon { ID_KH = customer.ID, NgayDat = DateTime.Now, NgayGiao = DateTime.Now.AddDays(7), TinhTrang = false, TongTien = total };
            data.HoaDons.InsertOnSubmit(hoadon);
            data.SubmitChanges();
            foreach (var item in lscart)
            {
                var cthd = new ChiTietHD { ID_HD = hoadon.ID, ID_SP = item.MASP, DonGia = item.DONGIA, GiamGia = item.GIAMGIA, SoLuong = item.SOLUONG };
                data.ChiTietHDs.InsertOnSubmit(cthd);
            }

            data.SubmitChanges();

            Session["gio_hang"] = null;

            return RedirectToAction("CheckoutComplete");
        }

        public List <CartModel> GioHang()
        {
            List<CartModel> lscart = Session["gio_hang"] as List<CartModel>;
            if(lscart == null)
            {
                lscart = new List<CartModel>();
                Session["gio_hang"] = lscart;
            }

            return lscart;
        }


        public ActionResult addCart(int masp)
        {
            List<CartModel> lscart = GioHang();
            CartModel sp = lscart.Find(n => n.MASP == masp);
            if(sp == null)
            {
                sp = new CartModel(masp);
                lscart.Add(sp);
            } else
            {
                sp.SOLUONG += 1;
            }

            return RedirectToAction("Index");
        }
    }
}