using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class teacherInbox : System.Web.UI.Page
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
        SqlCommand cmd = new SqlCommand("SELECT * from teacher_reg WHERE emailid='" + Session["username"]+ "'", con);
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
    /*protected void LinkButton5_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=NISHANT\SQLEXPRESS;Initial Catalog=gls;Integrated Security=True");
       
            TextBox ID = GridView1.FooterRow.FindControl("TextBox13") as TextBox;
        
        TextBox Messages = GridView1.FooterRow.FindControl("TextBox7") as TextBox;
        /*TextBox A = GridView1.FooterRow.FindControl("TextBox8") as TextBox;
        TextBox B = GridView1.FooterRow.FindControl("TextBox9") as TextBox;
        TextBox C = GridView1.FooterRow.FindControl("TextBox10") as TextBox;
        TextBox D = GridView1.FooterRow.FindControl("TextBox11") as TextBox;
        TextBox answer = GridView1.FooterRow.FindControl("TextBox12") as TextBox;*/
       /* con.Open();
       SqlCommand cmd=new SqlCommand( "set identity_insert chathub1 ON;" + "insert into chathub1 (emailid,Name,Messages) Values(@emailid,@Name,@messages)" + "SET IDENTITY_INSERT chathub1 OFF;",con);
     //   cmd.Parameters.AddWithValue(@"", TextBox1.Text);
        cmd.Parameters.AddWithValue(@"emailid",Session["username"]);
        cmd.Parameters.AddWithValue(@"Name",Session["name"]);
        cmd.Parameters.AddWithValue(@"Messages",Messages.Text);
    
        cmd.ExecuteNonQuery();
        //Label9.Text = "New Row Inserted Successfully";
        SqlDataSource1.DataBind();
        GridView1.DataSource = SqlDataSource1;
        GridView1.DataBind();
    }*/
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=NISHANT\SQLEXPRESS;Initial Catalog=gls;Integrated Security=True");
        con.Open();
        String query = "insert into chathub1(emailid,Name,Messages)values('" + Session["username"] + "','" +Session["name"] + "','" + TextBox1.Text  + "')";
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
    
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Write("<script>alert('All the data will get deleted.')</script>");
        String query = "delete chathub1";
        String mycon = "Data Source=NISHANT\\SQLEXPRESS;Initial Catalog=gls;Integrated Security=True";
        SqlConnection con = new SqlConnection(mycon);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = query;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        Label9.Text = "All contents have been deleted";
        SqlDataSource1.DataBind();
        GridView1.DataSource = SqlDataSource1;
        GridView1.DataBind();
    }
  /*  protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        bindGridView();
    }
    private void bindGridView()
    {
     
    }*/
}