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
    public partial class Empsalary : System.Web.UI.Page
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
                String a = "select count(*) from Emp where email='"+TextBox1.Text+"'";
               
                SqlCommand cmd = new SqlCommand(a,con);
                int j = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                if (j == 1)
                {
                    String s = "select * from Emp where email='"+TextBox1.Text+"'";
                    SqlCommand c = new SqlCommand(s, con);
                    SqlDataReader r = c.ExecuteReader();
                    if (r.Read())
                    {
                        TextBox2.Text=r["name"].ToString();
                        TextBox3.Text = r["salary"].ToString();
                        r.Close();
                    }
                    String l = "insert into Empsalary(name,email,salary,exam)values('" + TextBox2.Text + "','" + TextBox1.Text + "','" + TextBox3.Text + "','" + 0 + "')";
                    SqlCommand cdv = new SqlCommand(l, con);
                    cdv.ExecuteNonQuery();
                    cdv.Dispose();
                }
                else
                {
                    Label2.Text = "Enter valid Email";
                }


                con.Close();
                
            }
            catch(Exception ex)
            {
                Response.Write(ex);
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=msdb;Integrated Security=True");
                con.Open();
                String h= "select exam from Empsalary where email='" + TextBox1.Text + "'";
                SqlCommand sc = new SqlCommand(h, con);
                int x = Convert.ToInt32(sc.ExecuteScalar().ToString());
                int y = Convert.ToInt32(TextBox6.Text);
                int z = 0;
                z = x + y;
                String l = "update Empsalary set exam='"+z+"' where email='"+TextBox1.Text+"'";
                SqlCommand c = new SqlCommand(l, con);
                c.ExecuteNonQuery();

                //String sr = "selet exam from Empsalary where email='"+TextBox1.Text+"'";
                
                 
                Label3.Text = "Successfully updated";
              
                c.Dispose();
                con.Close();

            }
            catch (Exception x)
            {
                Response.Write(x);
            }
        }

    }
}