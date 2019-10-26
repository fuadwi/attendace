using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace staffmanagement
{
    public partial class change : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=msdb;Integrated Security=True");
                if(Session["mail"] == "joshithakumar1996@gmail.com")
                {
                    String s = "update Admin set pass='" + TextBox2.Text + "' where email='" + Session["mail"] + "'";
                    con.Open();
                    SqlCommand cmd = new SqlCommand(s, con);
                    cmd.ExecuteNonQuery();
                    Response.Redirect("Login.aspx");

                    con.Close();
                }
                else { 
                String s = "update Emp set password='"+TextBox2.Text+"' where email='"+Session["mail"]+"'";
                con.Open();
                SqlCommand cmd = new SqlCommand(s, con);
                cmd.ExecuteNonQuery();
                Response.Redirect("Login.aspx");

                con.Close();
                }

            }
            catch(Exception ee)
            {
                Response.Write(ee);
            }
        }
    }
}