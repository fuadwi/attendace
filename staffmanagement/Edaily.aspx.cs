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
    public partial class dailyE : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=msdb;Integrated Security=True");
            con.Open();

           /* String l = "select * from Emp where email='" + Session["E"] + "'";

            SqlCommand cb = new SqlCommand(l, con);
            SqlDataReader re = cb.ExecuteReader();
            if (re.Read())
            {
                Session["nn"] = re["name"].ToString();
                Session["Ebranch"] = re["branch"].ToString();
                Session["Eyear"] = re["eyear"].ToString();
                Session["Esec"] = re["sec"].ToString();
                Session["j"] = re["job"].ToString();
                re.Close();
            }*/
            Label2.Text = (String)Session["NN"];
            
            /* String s = "select job from Emp where email='"+Session["E"]+"'";
             SqlCommand c = new SqlCommand(s, con);
             SqlDataReader er = c.ExecuteReader();

             if (er.Read())
             {
                 Session["j"] = er["job"].ToString();
                 er.Close();
             }*/
            String sg = "CT";
            if (String.Equals((String)Session["JJ"], sg))
            {
                Button1.Enabled = true;
            }
            String sr = "EMPLOYEE";
            String srs = "HOD";
            String str = "PRINCIPAL";
            if (String.Equals((String)Session["JJ"], sr)|| String.Equals((String)Session["JJ"], srs) || String.Equals((String)Session["JJ"], str))
            {
                Response.Redirect("EEdaily.aspx");
            }
            String ot = "OTHERSTAFF";
            if (String.Equals((String)Session["JJ"], ot))
            {
                Response.Redirect("EEEdaily.aspx");
            }


            //cb.Dispose();

            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try { 
            SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=msdb;Integrated Security=True");
            con.Open();
            String sq = "insert into Dailywork(name,email,class,branch,year,section,classdes)values(@name,@email,@class,@branch,@year,@section,@classdes)";
           
                

                SqlCommand cmd = new SqlCommand(sq, con);
            cmd.Parameters.AddWithValue("@name", Session["NN"]);
            cmd.Parameters.AddWithValue("@email",Session["E"]);
            cmd.Parameters.AddWithValue("@class",TextBox1.Text);
            cmd.Parameters.AddWithValue("@branch",TextBox2.Text);
            cmd.Parameters.AddWithValue("@year",TextBox6.Text);
            cmd.Parameters.AddWithValue("@section",TextBox3.Text);
            //cmd.Parameters.AddWithValue("@subject",TextBox4.Text);
            cmd.Parameters.AddWithValue("@classdes",TextBox5.Text);

            cmd.ExecuteNonQuery();
            cmd.Dispose();
                Label1.Text = "Successfully submitted";
            con.Close();
            }
            catch(Exception ee)
            {
                Response.Write(ee);
            }
        }

        
    }
}