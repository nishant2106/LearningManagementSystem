using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class studentchangepass : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
    }
   
protected void Button1_Click(object sender, EventArgs e)
{
    if (TextBox1.Text == TextBox2.Text)
    {
        String mycon = "Data Source=NISHANT\\SQLEXPRESS;Initial Catalog=gls;Integrated Security=True";
        String updatedata = "Update student_regi set password='" + TextBox1.Text + "', cpass='" + TextBox2.Text + " ' where emailid='" + Session["username"] + "'";
        SqlConnection con = new SqlConnection(mycon);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = updatedata;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        Response.Redirect("Student'slogin.aspx");


    }
    else {
        Label1.Text = "Password and Confirm Password do not match.";

    }
}
}