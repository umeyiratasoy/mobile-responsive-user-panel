using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace User_Panel
{
    public class Baglanti
    {
        public SqlConnection Baglan()
        {
            SqlConnection baglanti2 = new SqlConnection(@"Data Source=LOCALHOST;Initial Catalog=veritabanıadı;Integrated Security=True");
            baglanti2.Open();
            return baglanti2;
        }
    }
}