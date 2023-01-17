using Microsoft.EntityFrameworkCore;
using System.Data.SqlClient;

namespace WebProjeVize3.EF
{
    public class YeniDBEntities : DbContext
    {
        public YeniDBEntities()
        {
        }
        public YeniDBEntities(DbContextOptions<YeniDBEntities> options) : base(options) { }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer("Data Source=localhost\\SQLEXPRESS;Initial Catalog=Webvizeödevi;Integrated Security=True");
        }

        public DbSet<Models.Ders> Ders { get; set; }
    }
}
