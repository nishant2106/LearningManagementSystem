using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Configuration;
using System.Data.SqlClient;


public partial class Teacher_sreg : System.Web.UI.Page
{
    SqlCommand cmd=new SqlCommand();

    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox7.Text == "babuzava")
        {
            if (TextBox4.Text == TextBox6.Text)
            {
                SqlConnection con = new SqlConnection(@"Data Source=NISHANT\SQLEXPRESS;Initial Catalog=gls;Integrated Security=True");
                con.Open();
                Session["name"] = TextBox1.Text;
                String query = "insert into teacher_reg(fname,lname,emailid,password,num,cpass)values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "')";
                cmd.CommandText = query;
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                /*  String query1 = "insert into chathub(emailid,Name)values('" + TextBox3.Text + "','" + TextBox1.Text + "')";
                  cmd.CommandText = query1;
                  cmd.Connection = con;
                  cmd.ExecuteNonQuery();*/
                Response.Write("<script>alert('New Registration Successfully Saved.')</script>");
             //   Label7.Text = "New Registration Successfully Saved.";
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";
                Response.Redirect("Teacher'slogin.aspx");
            }
            else
            {
                Response.Write("<script>alert('Passwords do not match.')</script>");
              //  Label8.Text = "Passwords do not match.";
            }
        }
        else
        {
            Response.Write("<script>alert('Master password in not correct.')</script>");

        }
    }
}



   