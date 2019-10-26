using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace staffmanagement
{
    public partial class EEdaily : System.Web.UI.Page
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
                String sq = "insert into Dailywork(name,email,class,branch,year,section,subject,classdes)values(@name,@email,@class,@branch,@year,@section,@subject,@classdes)";
               // String l = "select name from Emp where email='" + Session["E"] + "'";
                //String ll = "select email from Emp where email='" + Session["E"] + "'";


                SqlCommand cmd = new SqlCommand(sq, con);
                cmd.Parameters.AddWithValue("@name", Session["NN"]);
                cmd.Parameters.AddWithValue("@email", Session["E"]);
                cmd.Parameters.AddWithValue("@class", TextBox1.Text);
                cmd.Parameters.AddWithValue("@branch", TextBox2.Text);
                cmd.Parameters.AddWithValue("@year", TextBox6.Text);
                cmd.Parameters.AddWithValue("@section", TextBox3.Text);
                cmd.Parameters.AddWithValue("@subject", TextBox4.Text);
                cmd.Parameters.AddWithValue("@classdes", TextBox5.Text);

                cmd.ExecuteNonQuery();
                cmd.Dispose();
                Label2.Text = "Successfully submitted";
                con.Close();
            }
            catch (Exception ee)
            {
                Response.Write(ee);
            }
        }
    }
}