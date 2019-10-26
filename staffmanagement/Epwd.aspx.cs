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
    public partial class pwdE : System.Web.UI.Page
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
                con.Open();
                String a = "select count(*) from Emp where password='" + TextBox1.Text + "'";
                SqlCommand cmd = new SqlCommand(a, con);
                int j = Convert.ToInt32(cmd.ExecuteScalar().ToString());

                if (j == 1)
                {
                    String r = "update Emp set password='" + TextBox3.Text + "' where password='" + TextBox1.Text + "'";
                    SqlCommand cm = new SqlCommand(r, con);
                    cm.ExecuteNonQuery();

                    Label1.Text = "Successfully updated";
                    cm.Dispose();
                    //Response.Write("lol");
                }
                else
                {
                    Label2.Text = "Enter correct password";
                }
                cmd.Dispose();
                con.Close();
            }
            catch (Exception ee)
            {
                Response.Write(ee);
            }
        }
    }
}