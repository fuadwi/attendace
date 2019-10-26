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
    public partial class HomeE : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=msdb;Integrated Security=True");
                con.Open();
                String s = "select count(*) from Emp where email='" + Session["E"] + "'";
                SqlCommand cmd = new SqlCommand(s, con);
                int j = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                if (j == 1)
                {
                    String ss = "select * from Emp where email='" + Session["E"] + "'";
                    SqlCommand c = new SqlCommand(ss, con);
                    SqlDataReader r = c.ExecuteReader();
                    if (r.Read())
                    {
                        Session["I"] = r["Id"].ToString();
                        Label1.Text = (String)Session["I"];
                        Session["NN"]=  r["name"].ToString();
                        Label2.Text = r["email"].ToString();
                        // Label3.Text = r["password"].ToString();
                        Label4.Text = (String)Session["NN"]; ;
                        Label5.Text = r["father"].ToString();
                        Label6.Text = r["dob"].ToString();
                        Label8.Text = r["doj"].ToString();
                        Label9.Text = r["qual"].ToString();

                        Session["BB"] = r["branch"].ToString();
                        Label10.Text = r["branch"].ToString();

                        Session["YY"]= r["eyear"].ToString();
                       Session["SS"] = r["sec"].ToString();



                        Session["JJ"] = r["job"].ToString();

                        Label11.Text = r["job"].ToString();
                        Label12.Text = r["contact"].ToString();
                        Label13.Text = r["address"].ToString();
                        Label14.Text = r["salary"].ToString();
                        Label15.Text = r["eyear"].ToString();
                         Label16.Text = r["sec"].ToString();
                        /*Label17.Text = r["Remaining"].ToString();
                        Label18.Text = r["pending"].ToString();
                        Label19.Text = r["nleave"].ToString();
                        Label20.Text = r["working"].ToString();
                        Label21.Text = r["apply"].ToString();
                        Label22.Text = r["lleaves"].ToString();*/
                        //Label23.Text = r["salary"].ToString();
                        byte[] imagedata = (byte[])r["Timetable"];
                        //String img = Convert.ToBase64String(imagedata, 0, imagedata.Length);
                        Image1.ImageUrl = "data:image/jpg;base64," + Convert.ToBase64String(imagedata);
                        r.Close();

                    }

                }
            }
            catch (Exception ee)
            {
                Response.Write(ee);
            }
        }
    }
    }