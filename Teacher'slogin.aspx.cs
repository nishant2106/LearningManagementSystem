using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;


public partial class Instructor_s_login : System.Web.UI.Page
{
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
    }
   
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=NISHANT\SQLEXPRESS;Initial Catalog=gls;Integrated Security=True");
        con.Open();
        String query = "Select emailid,password from teacher_reg where emailid='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'";
        cmd.CommandText = query;
        SqlDataReader dr;
        cmd.Connection = con;

        cmd.ExecuteNonQuery();
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Session["username"] = TextBox1.Text;
            Response.Redirect("Teacher'sdashboard.aspx");
        }
        else
        {
            Response.Write("<script>alert('Entered credentials are incorrect.')</script>");
        }
        con.Close();
           
    }
}