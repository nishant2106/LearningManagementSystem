using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Configuration;


public partial class Course2quiz : System.Web.UI.Page
{
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    //string str = ConfigurationManager.ConnectionStrings["PracticeDBConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            showrec();
        }
    }
    protected void showrec()
    {
        try
        {

            SqlConnection con = new SqlConnection(@"Data Source=NISHANT\SQLEXPRESS;Initial Catalog=gls;Integrated Security=True");
            con.Open();
            cmd = new SqlCommand();
            cmd.CommandText = "select TOP 5 * FROM coursequiz2 ORDER BY NEWID()";
            cmd.Connection = con;
            //con.Open();

            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                GridView1.DataSource = dr;
                GridView1.DataBind();
            }
            else
            {
                Response.Write("No Data.");
            }
            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex);
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        RadioButton r1, r2, r3, r4;
        HiddenField hdn;
        int count = 0;
        string selans = "-1";
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            r1 = (RadioButton)GridView1.Rows[i].Cells[0].FindControl("RadioButton1");
            r2 = (RadioButton)GridView1.Rows[i].Cells[0].FindControl("RadioButton2");
            r3 = (RadioButton)GridView1.Rows[i].Cells[0].FindControl("RadioButton3");
            r4 = (RadioButton)GridView1.Rows[i].Cells[0].FindControl("RadioButton4");
            hdn = (HiddenField)GridView1.Rows[i].Cells[0].FindControl("hiddenF");

            if (r1.Checked)
            {
                selans = "A";
            }
            else if (r2.Checked)
            {
                selans = "B";
            }
            else if (r3.Checked)
            {
                selans = "C";
            }
            else if (r4.Checked)
            {
                selans = "D";
            }


            if (hdn.Value == selans)
            {
                count++;
               
               // Response.Redirect("StudentResult2.aspx");
            }
        }
            Label1.Text = "Score = " + count;
            SqlConnection con = new SqlConnection(@"Data Source=NISHANT\SQLEXPRESS;Initial Catalog=gls;Integrated Security=True");
            con.Open();
            String query = "insert into result2(username,score)values('" + Session["username"] + "','" + count + "')";
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            con.Close();
        Response.Redirect("StudentResult2.aspx");
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}