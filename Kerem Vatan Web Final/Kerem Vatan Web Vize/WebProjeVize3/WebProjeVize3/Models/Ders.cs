using Microsoft.Data.SqlClient;
using System.Data.SqlClient;

namespace WebProjeVize3.Models
{
    public class Ders
    {
        public int Id { get; set; }
        public String Ders_Adı { get; set; }
        public String Ders_Kredisi { get; set; }
        public String Okul_Yönetim_Id { get; set; }

    }
}
