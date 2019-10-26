using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace staffmanagement
{
    public partial class Esd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=msdb;Integrated Security=True");
                con.Open();
                String s = "select count(*) from Empsalary where email='"+TextBox1.Text+"'";
                String t = "select count(*) from pay where email='" + TextBox1.Text + "'";
                SqlCommand c = new SqlCommand(s, con);
                SqlCommand d = new SqlCommand(t, con);
                int x = Convert.ToInt32(c.ExecuteScalar().ToString());
                int y = Convert.ToInt32(d.ExecuteScalar().ToString());
                if (x == 1 && y==1)
                {
                    String p = "select * from  Empsalary where email='"+ TextBox1.Text + "'";
                    String q = "select * from  pay where email='" + TextBox1.Text + "'";
                    SqlCommand f =new SqlCommand(p, con);
                    SqlCommand h = new SqlCommand(q, con);
                    SqlDataReader r = f.ExecuteReader();
                    SqlDataReader dr = h.ExecuteReader();
                    if (r.Read())
                    {
                        Label1.Text = r["name"].ToString();
                        Label2.Text = r["email"].ToString();
                        Label3.Text = r["salary"].ToString();
                        Label4.Text = r["exam"].ToString();
                        if (dr.Read())
                        { 
                        Label5.Text = r["salarypaid"].ToString();
                        Label6.Text = r["date"].ToString();
                        Label8.Text = r["exampaid"].ToString();
                        //Label8.Text = r["examdate"].ToString();
                            dr.Close();
                        }
                        r.Close();
                    }



                }
                else
                {
                    Label9.Text = "No Payments in his Account";
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