using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Net;
using System.Net.Mail;


public partial class studentforgot : System.Web.UI.Page
{
    public string otp;
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=NISHANT\SQLEXPRESS;Initial Catalog=gls;Integrated Security=True");
        con.Open();
        SqlCommand cmd = new SqlCommand("Select emailid from student_regi where emailid='" + TextBox1.Text + "'", con);
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        if (!dr.Read())
        {
            Response.Write("The email-id does not exist.");

        }
        else
        {

            String sb = '_'.ToString();
            String uname = "gpmlearningsystem@gmail.com";
            String pwd = "gtaddh78";


            try
            {

                Session["Name"] = TextBox1.Text;
                Random rmd = new Random();
                string str, str2, str3;
                str2 = chartop();
                str = rmd.Next(000, 999).ToString();
                str3 = String.Concat(str2, str);
                otp=str3;
                SmtpClient smc = new SmtpClient("smtp.gmail.com", 587);
                smc.EnableSsl = true;
                smc.DeliveryMethod = SmtpDeliveryMethod.Network;
                smc.UseDefaultCredentials = false;
                smc.Credentials = new NetworkCredential(uname, pwd);
                MailMessage msg = new MailMessage();
                msg.To.Add(TextBox1.Text);
                msg.From = new MailAddress(uname);


                msg.Subject = "Verification by OTP";
                msg.Body = "This otp for verification is \n" + str3+".";
                smc.Send(msg);
                String query = "insert into student_regi(otp)values('" + str3 + "'where emailid='"+TextBox1.Text+"')";
                cmd.CommandText = query;
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                     
                con.Close();
            }
            catch (Exception ex)
            {

                Response.Write(ex.Message);
            }
        }
    }
    protected String chartop()
    {
        int i;
        String sb = '_'.ToString();
        string sb1;
        Random rd = new Random();
        int n = rd.Next(3, 3);
        for (i = 0; i < n; i++)
        {
            int x = rd.Next(0, 25);
            char let = (char)('a' + x);
            sb += let.ToString();
        }
        sb = sb.Substring(1);
        sb1 = sb.ToString();
        return sb1;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
        if (TextBox2.Text==otp)
        {
            Session["username"] = TextBox1.Text;

            Response.Redirect("studentchangepass.aspx");
        }
        else
        {
            Response.Write("Not Matched.");
        }
       
    }
}