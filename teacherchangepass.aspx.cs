using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class teacherchangepass : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == TextBox2.Text)
        {
            String mycon = "Data Source=NISHANT\\SQLEXPRESS;Initial Catalog=gls;Integrated Security=True";
            String updatedata = "Update teacher_reg set password='" + TextBox1.Text + "', cpass='" + TextBox2.Text + " ' where emailid='" + Session["username"] + "'";
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = updatedata;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Response.Redirect("Teacher'slogin.aspx");

        }
        else
        {
            Response.Write("<script>alert'Password and Confirm Password do not match.'</script>");

        }
    }
}