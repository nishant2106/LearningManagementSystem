using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.ComponentModel.DataAnnotations;

public partial class result2 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=NISHANT\SQLEXPRESS;Initial Catalog=gls;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        String s = "Select * from result2";
        SqlDataAdapter da = new SqlDataAdapter(s, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSourceID = null;
        GridView1.DataSource = ds;
        GridView1.DataBind();
        con.Close();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Write("<script>alert('All the data will get deleted.')</script>");
        String query = "delete result2";
        String mycon = "Data Source=NISHANT\\SQLEXPRESS;Initial Catalog=gls;Integrated Security=True";
        SqlConnection con = new SqlConnection(mycon);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = query;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        //Label9.Text = "All contents have been deleted";
        SqlDataSource1.DataBind();
        GridView1.DataSource = SqlDataSource1;
        GridView1.DataBind();
    }
}