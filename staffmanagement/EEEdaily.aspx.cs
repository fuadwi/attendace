using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace staffmanagement
{
    public partial class EEEdaily : System.Web.UI.Page
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
                String sq = "insert into daily(name,email,mrngtype,mrngdes,aftertype,afterdes)values(@name,@email,@mrngtype,@mrngdes,@aftertype,@afterdes)";
                //String l = "select name from Emp where email='" + Session["E"] + "'";
                //String ll = "select email from Emp where email='" + Session["E"] + "'";


                SqlCommand cmd = new SqlCommand(sq, con);
                cmd.Parameters.AddWithValue("@name", Session["NN"]);
                cmd.Parameters.AddWithValue("@email", Session["E"]);
                cmd.Parameters.AddWithValue("@mrngtype", TextBox1.Text);
                cmd.Parameters.AddWithValue("@mrngdes", TextBox2.Text);
                cmd.Parameters.AddWithValue("@aftertype", TextBox3.Text);
                cmd.Parameters.AddWithValue("@afterdes", TextBox4.Text);
                //cmd.Parameters.AddWithValue("@subject", TextBox4.Text);
                //cmd.Parameters.AddWithValue("@classdes", TextBox5.Text);

                cmd.ExecuteNonQuery();
                cmd.Dispose();
                Label1.Text = "Successfully submitted";
                con.Close();
            }
            catch (Exception ee)
            {
                Response.Write(ee);
            }
        }
    }
}