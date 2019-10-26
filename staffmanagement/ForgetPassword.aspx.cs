using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;

namespace staffmanagement
{
    public partial class ForgetPassword : System.Web.UI.Page
    {
        static String otp;
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void Button1_Click(object sender, EventArgs e)

        {
            SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=msdb;Integrated Security=True");
            String s = "select count(*) from Emp where email='" + TextBox1.Text + "'";
            con.Open();
            SqlCommand cmd = new SqlCommand(s, con);
            int k=Convert.ToInt32(cmd.ExecuteScalar().ToString());
            if (TextBox1.Text== "joshithakumar1996@gmail.com")
            {
               
                Random r = new Random();
                otp = r.Next(100000, 999999).ToString();
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.Credentials = new System.Net.NetworkCredential("joshithakumar1996@gmail.com", "sureka143");
                smtp.EnableSsl = true;
                MailMessage msg = new MailMessage();
                msg.Subject = "Hello " + TextBox1.Text;
                msg.Body = "your otp is" + otp;
                string toaddress = TextBox1.Text;
                msg.To.Add(toaddress);
                string fromaddress = "Staff Management <joshithakumar1996@gmail.com>";
                msg.From = new MailAddress(fromaddress);
                try
                {

                    smtp.Send(msg);

                }
                catch
                {
                    throw;
                }

            }
            if (k==1)
            {
               
                Random r = new Random();
                otp = r.Next(100000, 999999).ToString();
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.Credentials = new System.Net.NetworkCredential("joshithakumar1996@gmail.com", "7732038417");
                smtp.EnableSsl = true;
                MailMessage msg = new MailMessage();
                msg.Subject = "Hello " + TextBox1.Text;
                msg.Body = "your otp is" + otp;
                string toaddress = TextBox1.Text;
                msg.To.Add(toaddress);
                string fromaddress = "Staff Management <joshithakumar1996@gmail.com>";
                msg.From = new MailAddress(fromaddress);
                try
                {

                    smtp.Send(msg);

                }
                catch
                {
                    throw;
                }
                
            }

            else
            {
                Label1.Text = "Enter Register Email Id";
            }
            cmd.Dispose();
            con.Close();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (otp == TextBox2.Text)
            {
                Session["mail"] = TextBox1.Text;
                Response.Redirect("change.aspx");
            }
            else
            {
                Response.Write("invalid otp");
            }
        }
    }
}