using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication1
{
    public partial class login : System.Web.UI.Page
    {
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(TextBox1.Text) && string.IsNullOrWhiteSpace(TextBox2.Text))
                return;

            string constr = ConfigurationManager.ConnectionStrings["myConn"].ConnectionString;

            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand("select * from kullanici where kullanici=@kullanici and password=@password", con);
            cmd.Parameters.AddWithValue("@kullanici", TextBox1.Text);
            cmd.Parameters.AddWithValue("@password", TextBox2.Text);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            if (dt.Rows.Count > 0)
            {
                System.Web.Security.FormsAuthentication.RedirectFromLoginPage(TextBox1.Text, false);

                //Session["objectid"] = TextBox1.Text;
                //Response.Redirect("WebForm1.aspx");
                //Session.RemoveAll();
            }
            else
            {
                //Response.Redirect("login.aspx");
                Label2.Text = "user ve password u kontrol ediniz !!!";
                //Label3.ForeColor = System.Drawing.Color.Red;
            }
        }



    }
}