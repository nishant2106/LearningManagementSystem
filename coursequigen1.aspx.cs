using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class coursequigen1 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=NISHANT\SQLEXPRESS;Initial Catalog=gls;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection(@"Data Source=NISHANT\SQLEXPRESS;Initial Catalog=gls;Integrated Security=True");

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        if (TextBox1.Text == "")
        {
            Label2.Text = "Question field can not be empty.";
        }
        else
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into coursequiz1(question,A,B,C,D,answer) values(@question,@A,@B,@C,@D,@answer)", con);
            cmd.Parameters.AddWithValue(@"question", TextBox1.Text);
            cmd.Parameters.AddWithValue(@"A", TextBox2.Text);
            cmd.Parameters.AddWithValue(@"B", TextBox3.Text);
            cmd.Parameters.AddWithValue(@"C", TextBox4.Text);
            cmd.Parameters.AddWithValue(@"D", TextBox7.Text);
            cmd.Parameters.AddWithValue(@"answer", DropDownList1.Text);
            cmd.ExecuteNonQuery();
            con.Close();

            Response.Redirect("coursequigen1.aspx");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("viewquizcourse1.aspx");
    }
}