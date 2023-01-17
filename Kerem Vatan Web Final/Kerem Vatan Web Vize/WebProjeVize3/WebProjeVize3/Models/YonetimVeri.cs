namespace WebProjeVize3.Models
{
    public class YonetimVeri
    {
        public static List<Yonetim> Yöneticiler = new List<Yonetim>()
        {
            new Yonetim()
            {
                Id = 1,
                Ad_Soyad = "Emrah Sarıçiçek",
                Gorevi = "Ögretmen",
                YonetimTip11 ="yok",
                YonetimTip12 ="Ögretmen",
                YonetimTip13 ="yok",

            },
            new Yonetim()
            {
                Id = 2,
                Ad_Soyad = "Kerem Vatan",
                Gorevi = "Calısan",
                YonetimTip11 ="yok",
                YonetimTip12 ="yok",
                YonetimTip13 ="Ögrenci isleri" ,
            },
            new Yonetim()
            {
                Id = 3,
                Ad_Soyad = "Batu Yılmaz",
                Gorevi = "Calısan",
                YonetimTip11 ="yok",
                YonetimTip12 ="yok",
                YonetimTip13 ="Ögrenci isleri" ,
            },
            new Yonetim()
            {
                Id = 4,
                Ad_Soyad = "Ali Berkay Demir",
                Gorevi = "Calısan",
                YonetimTip11 ="İdare",
                YonetimTip12 ="yok",
                YonetimTip13 ="yok" ,
            },
        };
    }
}
