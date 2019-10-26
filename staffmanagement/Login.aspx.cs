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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["E"] = TextBox1.Text;
            try
            {
                SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=msdb;Integrated Security=True");
                String s = "select count(*) from Emp where email='" + TextBox1.Text + "'";
                SqlCommand cmd = new SqlCommand(s, con);
                con.Open();
                int k = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                if(TextBox1.Text== "joshithakumar1996@gmail.com"  && TextBox2.Text== "7732038417")
                {
                    Response.Redirect("AHome.aspx");
                }

                if (k == 1)
                {
                    String c = "select password from Emp where email='" + TextBox1.Text + "'";

                    SqlCommand cm = new SqlCommand(c, con);

                    String p = cm.ExecuteScalar().ToString();
                    if(p == TextBox2.Text)
                    {
                        Response.Redirect("EHome.aspx");
                        //Response.Write("login sucess");
                    }
                    else
                    {
                        Label1.Text = "Enter valid password";
                    }

                }
                else
                {
                    Label1.Text = "Enter valid credentials";
                }

                con.Close();
            }
            catch(Exception ee)
            {
                Response.Write(ee);
            }
        }
    }
}