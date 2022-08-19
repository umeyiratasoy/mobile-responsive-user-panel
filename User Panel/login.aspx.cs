using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.HtmlControls;

namespace User_Panel
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Baglanti baglantimiz = new Baglanti();
            SqlConnection esasbaglanti = baglantimiz.Baglan();
            SqlDataAdapter da = new SqlDataAdapter("select * from kullanici where eposta=@eposta and sifre=@sifre", esasbaglanti);
            da.SelectCommand.Parameters.Add("@eposta", SqlDbType.NVarChar, 50);
            da.SelectCommand.Parameters.Add("@sifre", SqlDbType.NVarChar, 50);
            da.SelectCommand.Parameters["@eposta"].Value = TextBox1.Text;
            da.SelectCommand.Parameters["@sifre"].Value = TextBox2.Text;
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                HtmlMeta meta = new HtmlMeta();
                meta.HttpEquiv = "Refresh";
                meta.Content = "2;url=router.aspx";
                this.Page.Controls.Add(meta);
                Label1.Text = "Giriş başarılı! Yönlendiriliyorsunuz...";
            }
            else
            {
                Label1.Text = "Kullanıcı adı ya da şifre hatalı!";
            }
        }
    }
}