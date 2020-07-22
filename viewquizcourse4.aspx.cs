using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.ComponentModel.DataAnnotations;


public partial class viewquizcourse4 : System.Web.UI.Page
{
    string mycon = @"Data Source=NISHANT\SQLEXPRESS;Initial Catalog=gls;Integrated Security=True";
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            PopulateGridview();
        }
    }
    void PopulateGridview()
    {
        DataTable dtbl = new DataTable();
        using (SqlConnection sqlCon = new SqlConnection(mycon))
        {
            sqlCon.Open();
            SqlDataAdapter sqlDa = new SqlDataAdapter("SELECT * FROM coursequiz4", sqlCon);
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
    protected void LinkButton3_Click(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        GridView1.DataSource = SqlDataSource1;
        GridView1.DataSourceID = null;
        GridView1.DataBind();
        Label9.Text = "";
        GridView1.EditRowStyle.BackColor = System.Drawing.Color.Brown;
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        GridView1.DataSource = SqlDataSource1;
        GridView1.DataSourceID = null;
        GridView1.DataBind();
        Label9.Text = "";
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        Label QuizID = GridView1.Rows[e.RowIndex].FindControl("Label8") as Label;
        TextBox question = GridView1.Rows[e.RowIndex].FindControl("TextBox1") as TextBox;
        TextBox A = GridView1.Rows[e.RowIndex].FindControl("TextBox2") as TextBox;
        TextBox B = GridView1.Rows[e.RowIndex].FindControl("TextBox3") as TextBox;
        TextBox C = GridView1.Rows[e.RowIndex].FindControl("TextBox4") as TextBox;
        TextBox D = GridView1.Rows[e.RowIndex].FindControl("TextBox5") as TextBox;
        TextBox answer = GridView1.Rows[e.RowIndex].FindControl("TextBox6") as TextBox;
        String mycon = "Data Source=NISHANT\\SQLEXPRESS;Initial Catalog=gls;Integrated Security=True";
        String updatedata = "Update coursequiz4 set question='" + question.Text + "', A='" + A.Text + "', B='" + B.Text + "', C='" + C.Text + "', D='" + D.Text + "', answer='" + answer.Text + "' where QuizID='" + QuizID.Text + "'";
        SqlConnection con = new SqlConnection(mycon);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = updatedata;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        Label9.Text = "Row Data Has Been Updated Successfully";
        GridView1.EditIndex = -1;
        SqlDataSource1.DataBind();
        GridView1.DataSource = SqlDataSource1;
        GridView1.DataBind();
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        TextBox QuizID = GridView1.FooterRow.FindControl("TextBox13") as TextBox;
        TextBox question = GridView1.FooterRow.FindControl("TextBox7") as TextBox;
        TextBox A = GridView1.FooterRow.FindControl("TextBox8") as TextBox;
        TextBox B = GridView1.FooterRow.FindControl("TextBox9") as TextBox;
        TextBox C = GridView1.FooterRow.FindControl("TextBox10") as TextBox;
        TextBox D = GridView1.FooterRow.FindControl("TextBox11") as TextBox;
        TextBox answer = GridView1.FooterRow.FindControl("TextBox12") as TextBox;
        String query = "set identity_insert coursequiz4 ON;" + "insert into admin_quiz (QuizID,question,A,B,C,D,answer) Values('" + QuizID.Text + "','" + question.Text + "','" + A.Text + "','" + B.Text + "','" + C.Text + "','" + D.Text + "','" + answer.Text + "')" + "SET IDENTITY_INSERT admin_quiz OFF;";
        String mycon = "Data Source=NISHANT\\SQLEXPRESS;Initial Catalog=gls;Integrated Security=True";
        SqlConnection con = new SqlConnection(mycon);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = query;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        Label9.Text = "New Row Inserted Successfully";
        SqlDataSource1.DataBind();
        GridView1.DataSource = SqlDataSource1;
        GridView1.DataBind();

    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label QuizID = GridView1.Rows[e.RowIndex].FindControl("Label1") as Label;
        String mycon = "Data Source=NISHANT\\SQLEXPRESS;Initial Catalog=gls;Integrated Security=True";
        String updatedata = "delete from coursequiz4 where QuizID=" + QuizID.Text;
        SqlConnection con = new SqlConnection(mycon);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = updatedata;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        Label9.Text = "Row Data Has Been Deleted Successfully";
        GridView1.EditIndex = -1;
        SqlDataSource1.DataBind();
        GridView1.DataSource = SqlDataSource1;
        GridView1.DataBind();
        Response.Redirect("viewquizcourse4.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Write("<script>alert('All the data will get deleted.')</script>");
        String query = "delete coursequiz4";
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
        Response.Redirect("viewquizcourse4.aspx");
    }
}