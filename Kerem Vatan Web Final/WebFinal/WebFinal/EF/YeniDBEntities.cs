using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Reflection;
//SqlConnection baglantı = new SqlConnection("Data Source=localhost\SQLEXPRESS;Initial Catalog=WVO;User ID=sa");
namespace WebFinal.EF
{
    public class YeniDBEntities : DbContext
    {
        public YeniDBEntities()
        {
        }
        public YeniDBEntities(DbContextOptions<YeniDBEntities> options) : base(options) { }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer("Data Source=DESKTOP-D0CPGFQ\\SQLEXPRESS01;Initial Catalog=Final;User ID=DESKTOP-D0CPGFQ\\kerem");
        }

        public DbSet<Models.Ders> Ders { get; set; }

    }



}