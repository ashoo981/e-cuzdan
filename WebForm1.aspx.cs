using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DropDownList.Items.Add("MARKET-GIDA");
            DropDownList.Items.Add("SAĞLIK");
            DropDownList.Items.Add("GİYİM");
            DropDownList.Items.Add("PETROL");
            DropDownList.Items.Add("SU");
            DropDownList.Items.Add("ELEKTRİK");
            DropDownList.Items.Add("DOĞALGAZ");
            DropDownList.Items.Add("TELEFON");
            DropDownList.Items.Add("İNTERNET");
            DropDownList.Items.Add("PAZAR");
            DropDownList.Items.Add("HARŞLIK");
            DropDownList.Items.Add("LOKANTA");
            DropDownList.Items.Add("GÜN PARASI");
            DropDownList.Items.Add("EFT");
            DropDownList.Items.Add("AİDAT");
            DropDownList.Items.Add("VERGİ");
            DropDownList.Items.Add("ULAŞIM");
            DropDownList.Items.Add("MAXIMUM");
            DropDownList.Items.Add("BAKIM");
            DropDownList.Items.Add("DİĞER");



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
          
            
            hrc.Harcamalar service = new hrc.Harcamalar();
            service.Insert(DropDownList.Text.Trim(), TextBox2.Text.Trim(), Convert.ToDouble(TextBox3.Text.Trim()), TextBox4.Text.Trim());
            
                    }

        protected void Button2_Click(object sender, EventArgs e)
        {
            DropDownList.Text="MARKET-GIDA";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            GridView1.DataSource = null;
            GridView1.DataBind();
            GridView2.DataSource = null;
            GridView2.DataBind();
            GridView3.DataSource = null;
            GridView3.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            hrc.Harcamalar srv = new hrc.Harcamalar();
            GridView1.DataSource = srv.Select();
            GridView1.DataBind();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            GridView1.DataSource = null;
            GridView1.DataBind();
            hrc.Harcamalar srv = new hrc.Harcamalar();
            GridView2.DataSource = srv.AylikHarcama();
            GridView2.DataBind();
            //Label5.Text = srv.AylikHarcama().ToString();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            System.Web.Security.FormsAuthentication.SignOut();
            Session.RemoveAll(); 
            Session.Abandon();            
            System.Web.Security.FormsAuthentication.RedirectToLoginPage();

        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            GridView3.DataSource = null;
            GridView3.DataBind();
            GridView1.DataSource = null;
            GridView1.DataBind();
            GridView2.DataSource = null;
            GridView2.DataBind();
            hrc.Harcamalar srv = new hrc.Harcamalar();
            GridView3.DataSource = srv.AylikHarcamaDagilim();
            GridView3.DataBind();
        }
        
       
    }
}