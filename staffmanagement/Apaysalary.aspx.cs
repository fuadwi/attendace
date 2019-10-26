using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace staffmanagement
{
    public partial class paysalary : System.Web.UI.Page
    {
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=msdb;Integrated Security=True");
                con.Open();
                String a = "select count(*) from Empsalary where email='" + TextBox5.Text + "'";

                SqlCommand cmd = new SqlCommand(a, con);
                int j = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                if (j >= 1)
                {
                    String s = "select * from Empsalary where email='" + TextBox5.Text + "'";
                    SqlCommand c = new SqlCommand(s, con);
                    SqlDataReader r = c.ExecuteReader();
                    if (r.Read())
                    {
                        TextBox1.Text = r["name"].ToString();
                        TextBox6.Text = r["salary"].ToString();
                        TextBox7.Text = r["exam"].ToString();

                        r.Close();
                    }
                }
                else
                {
                    Label2.Text = "Enter valid Email";
                }

                con.Close();
            }
            catch (Exception ex)
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
              
                String r = "insert into pay(name,email,salarypaid,exampaid,date)values('"+TextBox1.Text+"','"+TextBox5.Text+"','"+TextBox3.Text+"','"+TextBox4.Text+"','"+TextBox2.Text+"')";
               
                SqlCommand cc = new SqlCommand(r, con);
                cc.ExecuteNonQuery();

                String s = "select exam from Empsalary where email='" + TextBox5.Text + "'";
                SqlCommand ca = new SqlCommand(s, con);
                int m = Convert.ToInt32(ca.ExecuteScalar().ToString());

                int a = Convert.ToInt32(TextBox4.Text);

                int z = m - a; 
                
                String ss = "update Empsalary set exam='"+z+"' where email='" + TextBox5.Text + "'";
                SqlCommand cas = new SqlCommand(ss, con);
                cas.ExecuteNonQuery();

                Label3.Text = "Successfully Enterd" ;


                con.Close();
            }
            catch (Exception ee)
            {
                Response.Write(ee);
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}