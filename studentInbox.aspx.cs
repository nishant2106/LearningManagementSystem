using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class studentInbox : System.Web.UI.Page
{
    SqlCommand cmd = new SqlCommand();
    string mycon = @"Data Source=NISHANT\SQLEXPRESS;Initial Catalog=gls;Integrated Security=True";
    SqlConnection con = new SqlConnection(@"Data Source=NISHANT\SQLEXPRESS;Initial Catalog=gls;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=NISHANT\SQLEXPRESS;Initial Catalog=gls;Integrated Security=True");
        if (!Page.IsPostBack)
        {

            getData();
        }

    }
    private void getData()
    {
        //string eid = Request.Cookies["userInfo"].Value;
        DataTable dt = new DataTable();
        SqlConnection con = new SqlConnection(@"Data Source=NISHANT\SQLEXPRESS;Initial Catalog=gls;Integrated Security=True");
        con.Open();
        SqlCommand cmd = new SqlCommand("SELECT * from student_regi WHERE emailid='" + Session["username"] + "'", con);
        SqlDataAdapter sqlda = new SqlDataAdapter(cmd);
        //cmd.Parameters.AddWithValue("@username",eid);
        sqlda.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Session["name"] = dt.Rows[0]["fname"].ToString();

        }
        con.Close();
        PopulateGridview();
    }
    void PopulateGridview()
    {
        DataTable dtbl = new DataTable();
        using (SqlConnection sqlCon = new SqlConnection(mycon))
        {
            sqlCon.Open();
            SqlDataAdapter sqlDa = new SqlDataAdapter("SELECT * FROM chathub1", sqlCon);
            sqlDa.Fill(dtbl);
        }
        if (dtbl.Rows.Count > 0)
        {
            GridView1.DataSource = dtbl;
            GridView1.DataSourceID = null;
            GridView1.DataBind();
        }
        else
        {
            dtbl.Rows.Add(dtbl.NewRow());
            GridView1.DataSource = dtbl;
            GridView1.DataSourceID = null;
            GridView1.DataBind();
            GridView1.Rows[0].Cells.Clear();
            GridView1.Rows[0].Cells.Add(new TableCell());
            GridView1.Rows[0].Cells[0].ColumnSpan = dtbl.Columns.Count;
            GridView1.Rows[0].Cells[0].Text = "No Data Found ..!";
            GridView1.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
        }
    }
   
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=NISHANT\SQLEXPRESS;Initial Catalog=gls;Integrated Security=True");
        con.Open();
        String query = "insert into chathub1(emailid,Name,Messages)values('" + Session["username"] + "','" + Session["name"] + "','" + TextBox1.Text + "')";
        cmd.CommandText = query;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        con.Close();//Label9.Text = "New Row Inserted Successfully";
        DataTable dtbl = new DataTable();
        using (SqlConnection sqlCon = new SqlConnection(mycon))
        {
            sqlCon.Open();
            SqlDataAdapter sqlDa = new SqlDataAdapter("SELECT * FROM chathub1", sqlCon);
            sqlDa.Fill(dtbl);
        }
        if (dtbl.Rows.Count > 0)
        {
            GridView1.DataSource = dtbl;
            GridView1.DataSourceID = null;
            GridView1.DataBind();
        }
        else
        {
            dtbl.Rows.Add(dtbl.NewRow());
            GridView1.DataSource = dtbl;
            GridView1.DataSourceID = null;
            GridView1.DataBind();
            GridView1.Rows[0].Cells.Clear();
            GridView1.Rows[0].Cells.Add(new TableCell());
            GridView1.Rows[0].Cells[0].ColumnSpan = dtbl.Columns.Count;
            GridView1.Rows[0].Cells[0].Text = "No Data Found ..!";
            GridView1.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
        }
        TextBox1.Text = "";
    }
}