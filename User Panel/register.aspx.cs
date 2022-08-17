using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.UI.HtmlControls;

namespace User_Panel
{
    public partial class register : System.Web.UI.Page
    {
        SqlConnection baglan = new SqlConnection(@"Data Source=ATASOY;Initial Catalog=userpanel;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            baglan.Open();
            SqlCommand cmd = new SqlCommand(@"insert into kullanici (ad,soyad,eposta,sifre,cinsiyet) values(@ad,
            @soyad,@eposta,@sifre,@cinsiyet)", baglan);
            cmd.Parameters.AddWithValue("ad", TextBox1.Text);
            cmd.Parameters.AddWithValue("soyad", TextBox2.Text);
            cmd.Parameters.AddWithValue("eposta", TextBox3.Text);
            cmd.Parameters.AddWithValue("sifre", TextBox5.Text);
            cmd.Parameters.AddWithValue("cinsiyet", DropDownList1.Text);
            cmd.ExecuteNonQuery();
            baglan.Close();
            Label2.Visible = true;
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox5.Text = "";
            HtmlMeta meta = new HtmlMeta();
            meta.HttpEquiv = "Refresh";
            meta.Content = "2;url=login.aspx";
            this.Page.Controls.Add(meta);
        }
    }
}