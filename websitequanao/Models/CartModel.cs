using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace websitequanao.Models
{
    public class CartModel
    {
        public DataClassesDataContext data = new DataClassesDataContext();

        public int MASP { get; set; }
        public string TENSP { get; set; }
        public string HINHANH { get; set; }
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:N0}")]
        public int DONGIA { get; set; }
        public int SOLUONG { get; set; }
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:N0}")]
        public int THANHTIEN { get { return SOLUONG * DONGIA; } }

        public int GIAMGIA { get; set; }

        public CartModel (int masp)
        {
            MASP = masp;
            SanPham sp = data.SanPhams.Single(n => n.ID == MASP);
            TENSP = sp.Ten;
            HINHANH = sp.Hinh;
            DONGIA = int.Parse(sp.DonGia.ToString());
            SOLUONG = 1;
            GIAMGIA = int.Parse(sp.GiamGia.ToString());
        }
    }
}