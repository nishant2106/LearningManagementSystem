using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class teacherProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
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
        SqlCommand cmd = new SqlCommand("SELECT * from teacher_reg WHERE emailid='" + Session["username"] + "'", con);
        SqlDataAdapter sqlda = new SqlDataAdapter(cmd);
        //cmd.Parameters.AddWithValue("@username",eid);
        sqlda.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Label7.Text = dt.Rows[0]["fname"].ToString();
            Label8.Text = dt.Rows[0]["lname"].ToString();
            Label9.Text = dt.Rows[0]["emailid"].ToString();
            Label11.Text = dt.Rows[0]["num"].ToString();
        }
        con.Close();
    }
}