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
    public partial class sattendance : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            Label1.Text =  (String)Session["NN"];
           

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridView1.Rows)
            {

                int Eids = Convert.ToInt32(row.Cells[0].Text);
                
                RadioButton rbtn1 = (row.Cells[1].FindControl("RadioButton1") as RadioButton);
                RadioButton rbtn2 = (row.Cells[1].FindControl("RadioButton2") as RadioButton);
                String status1;
                if (rbtn1.Checked)
                {
                    status1 = "Present";

                }
                else
                {
                    status1 = "Absent";
                }

               


                /* String names = (String)Session["NN"] ;
                 int years = Convert.ToInt32(Session["YY"].ToString());
                 int secs = Convert.ToInt32(Session["SS"].ToString());
                 String branchs = Session["BB"].ToString();*/

                notworking(Eids, status1);
            }
            Label3.Text = "Attendance Has Been Saved Successfully";
        }
       private void notworking(int stdId,String status)
        {
            SqlConnection n = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=msdb;Integrated Security=True");
            n.Open();
            
            

            String s = "insert into classattendance(stdId,CTT,eyear,sec,status,date,branch)values(@stdId,@CTT,@eyear,@sec,@status,@date,@branch)";
            SqlCommand dm = new SqlCommand(s, n);
            dm.Parameters.AddWithValue("@stdId",stdId);
            dm.Parameters.AddWithValue("@CTT",Session["E"]);
            dm.Parameters.AddWithValue("@eyear",Convert.ToInt32(Session["YY"].ToString()));
            dm.Parameters.AddWithValue("@sec",Convert.ToInt32(Session["SS"].ToString()));
            dm.Parameters.AddWithValue("@status",status);
            dm.Parameters.AddWithValue("@date", TextBox1.Text);
            dm.Parameters.AddWithValue("@branch",Session["BB"]);

            dm.ExecuteNonQuery();
            n.Close();
        }
        
    }
}