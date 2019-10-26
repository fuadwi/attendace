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
    public partial class salaryE : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            try
            {
                SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=msdb;Integrated Security=True");
                con.Open();
                String s = "select count(*) from Emp where email='"+Session["E"]+"'";
                String ss = "select count(*) from Empsalary where email='" + Session["E"] + "'";
                SqlCommand c = new SqlCommand(s, con);
                SqlCommand cc = new SqlCommand(ss, con);
                int k = Convert.ToInt32(c.ExecuteScalar().ToString());
                int kk = Convert.ToInt32(cc.ExecuteScalar().ToString());
                if (k == 1&& kk>=1 )
                {
                    //String r = "select * from Emp where email='" + Session["E"] + "'";
                    String p = "select * from Empsalary where email='" + Session["E"] + "'";
                   // SqlCommand n = new SqlCommand(r, con);
                    SqlCommand m = new SqlCommand(p, con);

                    //SqlDataReader dr = n.ExecuteReader();
                    SqlDataReader dp = m.ExecuteReader();

                    /* if (dr.Read())
                     {
                         Label1.Text = dr["Id"].ToString();
                         Label2.Text = dr["name"].ToString();
                         Label3.Text = dr["email"].ToString();

                         //Label6.Text = dr["Remaining"].ToString();
                         //Label7.Text = dr["pending"].ToString();
                         dr.Close();
                         n.Dispose();
                     }*/
                    Label1.Text = (String)Session["I"];
                    Label2.Text = (String)Session["NN"];
                    Label3.Text = (String)Session["E"];
                    if (dp.Read())
                    {
                        Label4.Text = dp["salary"].ToString();

                        Label5.Text = dp["exam"].ToString();
                        dp.Close();
                        
                    }

                }
                else
                {
                    Label6.Text = "Sorry your payment details are not available";
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