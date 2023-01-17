

namespace WebProjeVize3.Models
{
    public class DersVeri
    {
        public static List<Ders> Dersler = new List<Ders>()
        {
            new Ders()
            {
                Id = 1,
                Ders_Adı = "İnternet Progamcılıgı",
                Ders_Kredisi = "2",
                Okul_Yönetim_Id = "3",

            },
            new Ders()
            {
                Id = 2,
                Ders_Adı = "Görsel Progamlama",
                Ders_Kredisi = "3,5",
                Okul_Yönetim_Id = "3",
            },
            new Ders()
            {
                Id = 3,
                Ders_Adı = "Bilgi Güvenligi",
                Ders_Kredisi = "2",
                Okul_Yönetim_Id = "3",
            },
            new Ders()
            {
                Id = 4,
                Ders_Adı = "Deniz liman islemeciligi",
                Ders_Kredisi = "2",
                Okul_Yönetim_Id = "3",
            },
        };
    }
}
