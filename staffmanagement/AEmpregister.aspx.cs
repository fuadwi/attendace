
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
    public partial class Empregister : System.Web.UI.Page
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
                con.Open();
                String s = "insert into Emp(email,password,name,father,dob,doj,qual,branch,job,salary,contact,address,cl,ml,exam) values(@email,@password,@name,@father,@dob,@doj,@qual,@branch,@job,@salary,@contact,@address,@cl,@ml,@exam)";
                String sql = "insert into  Empsalary(email,name,salary,exam)values(@email,@name,@salary,@exam)";

                SqlCommand cmd = new SqlCommand(s, con);
                SqlCommand sqc = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("@email", TextBox3.Text);
                cmd.Parameters.AddWithValue("@password", TextBox5.Text);
                cmd.Parameters.AddWithValue("@name", TextBox1.Text);
                cmd.Parameters.AddWithValue("@father", TextBox2.Text);
                cmd.Parameters.AddWithValue("@dob", TextBox6.Text);
                cmd.Parameters.AddWithValue("@doj", TextBox7.Text);
                cmd.Parameters.AddWithValue("@qual", TextBox8.Text);
                cmd.Parameters.AddWithValue("@branch", TextBox9.Text);
                cmd.Parameters.AddWithValue("@job", DropDownList1.Text);
                cmd.Parameters.AddWithValue("@salary", TextBox11.Text);
                cmd.Parameters.AddWithValue("@contact", TextBox12.Text);
                cmd.Parameters.AddWithValue("@address", TextBox13.Text);
                cmd.Parameters.AddWithValue("@cl", TextBox14.Text);
                cmd.Parameters.AddWithValue("@ml", TextBox15.Text);
                cmd.Parameters.AddWithValue("@exam", TextBox16.Text);
                Session["sal"] = TextBox11.Text;



                sqc.Parameters.AddWithValue("@name", TextBox1.Text);
                sqc.Parameters.AddWithValue("@email", TextBox3.Text);
                sqc.Parameters.AddWithValue("@salary", TextBox11.Text);
                sqc.Parameters.AddWithValue("@exam",TextBox16.Text);

               

                Label1.Text = "Successfully inserted";

                cmd.ExecuteNonQuery();
                cmd.Dispose();
                sqc.ExecuteNonQuery();
                sqc.Dispose();
                con.Close();
               
            }
            catch(Exception ex)
            {
                Response.Write(ex);
            }
        }
    }
}