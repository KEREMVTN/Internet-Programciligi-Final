namespace WebFinal.Models
{
    public class OgrenciVeri
    {
        public static List<Ogrenci> Ogrenciler = new List<Ogrenci>()
        {
            new Ogrenci()
            {
                Id = 1,
                Ad = "Kerem",
                Soyad = "Vatan",
                KayitTarih = "15/09/2019",
                ÖgrenciNo = "20200108012",
                DTarih = "14 / 02 / 2001",
                Bolum = "bilgisayar Progamciligi",
            },
            new Ogrenci()
            {
                Id = 2,
                Ad = "Ahmet Burak",
                Soyad = "Durmuş",
                KayitTarih = "18/09/2019",
                ÖgrenciNo = "20200108011",
                DTarih = "01 / 01 / 2000",
                Bolum = "bilgisayar Progamciligi",
            },
            new Ogrenci()
            {
                Id = 3,
                Ad = "Sadettin",
                Soyad = "Dursun",
                KayitTarih = "14/09/2019",
                ÖgrenciNo = "20200108010",
                DTarih = "01 / 01 / 2001",
                Bolum = "bilgisayar Progamciligi",
            },
            new Ogrenci()
            {
                Id = 4,
                Ad = "Eray",
                Soyad = "Karadeniz",
                KayitTarih = "16/09/2019",
                ÖgrenciNo = "20200108009",
                DTarih = "01 / 01 / 2001",
                Bolum = "bilgisayar Progamciligi",
            }
        };

    }
}
