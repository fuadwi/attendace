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
    public partial class Aattendance : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "Mark Attendance for " + DateTime.Now.ToShortDateString();
        }

        

        protected void Button2_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridView1.Rows)
            {

                int Eids = Convert.ToInt32(row.Cells[0].Text);
                String Enames = row.Cells[1].Text;
                RadioButton rbtn1 = (row.Cells[2].FindControl("RadioButton1") as RadioButton);
                RadioButton rbtn2 = (row.Cells[2].FindControl("RadioButton4") as RadioButton);
                RadioButton rbtn3 = (row.Cells[3].FindControl("RadioButton2") as RadioButton);
                RadioButton rbtn4 = (row.Cells[4].FindControl("RadioButton3") as RadioButton);

                String status1;
                if (rbtn1.Checked)
                {
                    status1 = "Present";

                }
               
                if (rbtn3.Checked)
                {
                    status1 = "onduty";

                }
                
                if (rbtn4.Checked)
                {
                    status1 = "lop";

                }
                else
                {
                    status1 = "Absent";
                }




                String dates = DateTime.Now.ToShortDateString();
                String jobs = DropDownList1.SelectedItem.Text;
                saveattendance(Eids, Enames, dates, status1, jobs);
            }
            Label2.Text = "Attendance Has Been Saved Successfully";
        }

        private void saveattendance(int Eid, String Ename, String date, String status, String job)
        {
            String query = "insert into Eattendance(Eid,Ename,date,status,job) values(@Eid,@Ename,@date,@status,@job)";
            
            SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=msdb;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand(query,con);
           
            cmd.Parameters.AddWithValue("@Eid",Eid);
            cmd.Parameters.AddWithValue("@Ename", Ename);
            cmd.Parameters.AddWithValue("@date", date);
            cmd.Parameters.AddWithValue("@status", status);
            cmd.Parameters.AddWithValue("job", job);



            cmd.ExecuteNonQuery();
            con.Close();
        }

    }
}