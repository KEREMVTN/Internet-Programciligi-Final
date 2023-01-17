namespace WebFinal.Models
{
    public class DersVeri
    {
        public static List<Ders> Dersler = new List<Ders>()
        {
            new Ders()
            {
                Id = 1,
                Ad = "İnternet Progamcılıgı",
                Kredisi = "2",
                OkulYönetimId = "3",

            },
            new Ders()
            {
                Id = 2,
                Ad = "Görsel Progamlama",
                Kredisi = "2",
                OkulYönetimId = "3",
            },
            new Ders()
            {
                Id = 3,
                Ad = "Bilgi Güvenligi",
                Kredisi = "2",
                OkulYönetimId = "3",
            },
            new Ders()
            {
                Id = 4,
                Ad = "Deniz liman islemeciligi",
                Kredisi = "2",
                OkulYönetimId = "3",
            },
        };
    }
}
