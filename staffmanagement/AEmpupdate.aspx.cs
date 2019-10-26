using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace staffmanagement
{
    public partial class Echange : System.Web.UI.Page
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
                String s="select count(*) from Emp where email='"+TextBox1.Text+"'";
                con.Open();
                SqlCommand cmd = new SqlCommand(s, con);
                int i = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                if (i == 1)
                {
                    String ch = "select * from Emp where email='" + TextBox1.Text.Trim() + "'";

                    SqlCommand c = new SqlCommand(ch, con);

                    SqlDataReader r = c.ExecuteReader();

                    if (r.Read())
                    {
                        TextBox2.Text = r["name"].ToString();
                        TextBox3.Text = r["email"].ToString();
                        TextBox4.Text = r["contact"].ToString();
                        TextBox5.Text = r["qual"].ToString();

                        DateTime doj = DateTime.Now;
                         TextBox6.Text= String.Format("{0:dd/MM/yyyy}",doj);
                        //TextBox6.Text = r["doj"].ToString();
                        TextBox7.Text = r["job"].ToString();
                        TextBox8.Text = r["branch"].ToString();
                        TextBox9.Text = r["salary"].ToString();


                        r.Close();
                        c.Dispose();
                    }

                }
                else
                {
                    Label1.Text = "Enter valid Email";
                }

                cmd.Dispose();
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
                String rr="select eyear from Emp where email='"+TextBox1.Text+"'";
                String rrr = "select sec from Emp where email='" + TextBox1.Text + "'";
                SqlCommand d = new SqlCommand(rr, con);
                SqlCommand dd = new SqlCommand(rrr, con);
                /*SqlDataReader er = d.ExecuteReader();
               
               //String z, y="";
                if (er.Read())
                {
                   Session["z"]=er["eyear"].ToString();
                    
                    er.Close();
                    d.Dispose();
                }
                SqlDataReader err = dd.ExecuteReader();
                if (err.Read())
                {
                    Session["y"] = err["sec"].ToString();
                    err.Close();
                    dd.Dispose();
                }*/
                int x = Convert.ToInt32(d.ExecuteScalar().ToString());
                int y = Convert.ToInt32(dd.ExecuteScalar().ToString());
                int v = Convert.ToInt32(TextBox10.Text);
                int u = Convert.ToInt32(TextBox11.Text);
                if (x!=v&&y!=u)
                {

                    Stream ss = FileUpload1.PostedFile.InputStream;
                    BinaryReader r = new BinaryReader(ss);
                    byte[] im = r.ReadBytes((Int32)ss.Length);

                    


                    SqlCommand cc = new SqlCommand("update Emp set name='" + TextBox2.Text + "',email='" + TextBox3.Text + "',contact='" + TextBox4.Text + "',qual='" + TextBox5.Text + "',doj='" + TextBox6.Text + "',job='" + TextBox7.Text + "',branch='" + TextBox8.Text + "',salary='" + TextBox9.Text + "',Timetable='" + im + "',eyear='" + TextBox10.Text + "',sec='" + TextBox11.Text + "' where email='" + TextBox1.Text + "'", con);


                    cc.ExecuteNonQuery();


                    Label2.Text = "update Success";
                    cc.Dispose();



                    con.Close();
                }
                else
                {
                    Label2.Text = "Already assigned to some engineering year and section";
                }

            }
            catch(Exception ex)
            {

                Response.Write(ex);
            }
        }
    }
}