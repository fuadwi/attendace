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
    public partial class leaveE : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            try
            {
                SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=msdb;Integrated Security=True");
                con.Open();
                String s = "select count(*) from Emp where email='"+Session["E"]+"'";
                SqlCommand c = new SqlCommand(s, con);
                int b = Convert.ToInt32(c.ExecuteScalar().ToString());
                if (b == 1)
                {
                   /* String ss="select * from Emp where email='"+ Session["E"] + "'";
                    SqlCommand cc = new SqlCommand(ss, con);
                    SqlDataReader dr = cc.ExecuteReader();
                    if (dr.Read())
                    {*/
                        TextBox1.Text =(String)Session["I"];
                        TextBox2.Text = (String)Session["NN"];
                        TextBox3.Text = (String)Session["JJ"]; 
                        //TextBox4.Text = dr["@apply"].ToString();
                        TextBox5.Text = (String)Session["BB"]; 
                        TextBox6.Text = (String)Session["YY"];
                        //TextBox11.Text = dr["@nleave"].ToString();
                       // TextBox7.Text = dr["@type"].ToString();
                        //TextBox8.Text = dr["@des"].ToString();
                        //TextBox9.Text = dr["@lfrom"].ToString();

                        //TextBox10.Text = dr["@lto"].ToString();


                       // dr.Close();
                    //}



                }
                

                con.Close();
            }
            catch(Exception ee)
            {
                Response.Write(ee);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=msdb;Integrated Security=True");
                con.Open();

                String tl = "CL";
                String tt = "ML";
                int l = 12,j = 8;
                if (String.Equals(TextBox7.Text, tl))
                {
                    l -= Convert.ToInt32(TextBox4.Text);
                }
                else if (String.Equals(TextBox7.Text, tt))
                {
                    j -= Convert.ToInt32(TextBox4.Text);
                }

                    String s = "insert into leaves(name,Eid,job,branch,typeofleave,fom,tto,countleaves,des,approve)values(@name,@Eid,@job,@branch,@typeofleave,@fom,@tto,@countleaves,@des,@approve)";
                      
                        String sl = "pending";
                        SqlCommand c = new SqlCommand(s, con);
                    c.Parameters.AddWithValue("@name", TextBox2.Text);
                    c.Parameters.AddWithValue("@Eid", Session["I"]);
                    c.Parameters.AddWithValue("@job", TextBox3.Text);
                    //c.Parameters.AddWithValue("@year", TextBox6.Text);
                    c.Parameters.AddWithValue("@branch", TextBox5.Text);
                    c.Parameters.AddWithValue("@typeofleave", TextBox7.Text);
                    c.Parameters.AddWithValue("@fom", TextBox9.Text);
                    c.Parameters.AddWithValue("@tto", TextBox10.Text);
                    c.Parameters.AddWithValue("@countleaves", TextBox4.Text);
                    c.Parameters.AddWithValue("@des", TextBox8.Text);
                    c.Parameters.AddWithValue("@approve", sl);

                    c.ExecuteNonQuery();
                    
               
                con.Close();
            }
            catch(Exception ee)
            {
                Response.Write(ee);
            }


        }
    }
}