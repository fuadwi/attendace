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
    public partial class leave : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (!IsPostBack)
            {
                GridView1.DataSource = SqlDataSource1;
                GridView1.DataBind();
            }
        }

       /* protected void Button1_Click(object sender, EventArgs e)
        {
            Session["no"] = TextBox3.Text;
            try
            {
                SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=msdb;Integrated Security=True");
                con.Open();
                String s = "select count(*) from Emp where email='"+TextBox1.Text+"'";
                SqlCommand cc = new SqlCommand(s, con);
                int g = Convert.ToInt32(cc.ExecuteScalar().ToString());
                if (g == 1)
                {
                    String ch = "select * from Emp where email='" + TextBox1.Text.Trim() + "'";

                    SqlCommand cmd = new SqlCommand(ch, con);

                    SqlDataReader r = cmd.ExecuteReader();

                    if (r.Read())
                    {
                        TextBox2.Text = r["nleave"].ToString();
                        TextBox3.Text = r["working"].ToString();
                        TextBox4.Text = r["lleaves"].ToString();
                        

                        r.Close();
                        
                    }

                }

                else
                {
                    Label1.Text = "Enter valid Email";
                }

                cc.Dispose();
                con.Close();
            }
            catch(Exception ee)
            {
                Response.Write(ee);
            }





        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=msdb;Integrated Security=True");
                con.Open();
                String h = "update Emp set nleave='" + TextBox2.Text + "',working='" + TextBox3.Text + "',lleaves='" + TextBox4.Text + "'where email='" + TextBox1.Text + "'";
                SqlCommand c = new SqlCommand(h, con);
                c.ExecuteNonQuery();
                Label2.Text = "Successfully updated";
                c.Dispose();
                con.Close();
            }
            catch(Exception ee)
            {
                Response.Write(ee);
            }
        }
        */
        protected void Button1_Click1(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridView1.Rows)
            {
                int applicationid = Convert.ToInt32(row.Cells[0].Text);
                RadioButton rbtn1 = (row.Cells[2].FindControl("RadioButton1") as RadioButton);
                CheckBox status = (row.Cells[3].FindControl("CheckBox1") as CheckBox);
                


                if (rbtn1.Checked)
                {

                    if (status.Checked)
                    {
                        updaterow(applicationid, "Rejected");
                    }
                    else 
                    {
                        updaterow(applicationid, "Rejected");

                    }
                }

                else
                {
                    if (status.Checked)
                    {
                        updaterow(applicationid, "Approve");
                    }
                    else
                    {
                        updaterow(applicationid, "pending");

                    }
                }



            }
            Label1.Text = "Leave Has Been Approved Successfully";
            SqlDataSource1.DataBind();
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
        }
        private void updaterow(int applicationid, String approval)
        {
            String mycon = "Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=msdb;Integrated Security=True";
            String updatedata = "Update leaves set approve='" + approval + "' where Eid=" + applicationid;
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = updatedata;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
        }

    }
}