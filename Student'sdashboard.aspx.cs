using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Collections;


public partial class Student_sdashboard : System.Web.UI.Page
{
    Hashtable HolidayList;  
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {

            getData();
            getData1();
            getData2();
            getData3();
            getData4();
            getData5();
        }
        HolidayList = Getholiday();
        
        Calendar1.FirstDayOfWeek = FirstDayOfWeek.Sunday;
        Calendar1.NextPrevFormat = NextPrevFormat.ShortMonth;
        Calendar1.TitleFormat = TitleFormat.Month;
        Calendar1.ShowGridLines = true;
        Calendar1.DayStyle.Height = new Unit(50);
        Calendar1.DayStyle.Width = new Unit(150);
        Calendar1.DayStyle.HorizontalAlign = HorizontalAlign.Center;
        Calendar1.DayStyle.VerticalAlign = VerticalAlign.Middle;
        Calendar1.OtherMonthDayStyle.BackColor = System.Drawing.Color.AliceBlue;
    }
    private void getData5()
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
       
    }
    private Hashtable Getholiday()
    {
        Hashtable holiday = new Hashtable();
        holiday["1/1/2019"] = "New Year";
        holiday["2/26/2019"] = "Tradition Day";
        holiday["2/27/2019"] = "Tie Day";
        holiday["2/28/2019"] = "Farewell of TY students";
        holiday["1/8/2019"] = "Muharam (Al Hijra)";
        holiday["1/14/2019"] = "Pongal";
        holiday["1/26/2019"] = "Republic Day";
        holiday["2/23/2019"] = "Maha Shivaratri";
        holiday["3/10/2019"] = "Milad un Nabi (Birthday of the Prophet";
        holiday["3/21/2019"] = "Holi";
        holiday["3/21/2019"] = "Telugu New Year";
        holiday["4/3/2019"] = "Ram Navmi";
        holiday["4/7/2019"] = "Mahavir Jayanti";
        holiday["4/10/2019"] = "Good Friday";
        holiday["4/12/2019"] = "Easter";
        holiday["4/14/2019"] = "Tamil New Year and Dr Ambedkar Birth Day";
        holiday["5/1/2019"] = "May Day";
        holiday["5/9/2019"] = "Buddha Jayanti and Buddha Purnima";
        holiday["6/24/2019"] = "Rath yatra";
        holiday["8/13/2019"] = "Krishna Jayanthi";
        holiday["8/14/2019"] = "Janmashtami";
        holiday["8/15/2019"] = "Independence Day";
        holiday["8/19/2019"] = "Parsi New Year";
        holiday["8/23/2019"] = "Vinayaka Chaturthi";
        holiday["9/2/2019"] = "Onam";
        holiday["9/5/2019"] = "Teachers Day";
        holiday["9/21/2019"] = "Ramzan";
        holiday["9/27/2019"] = "Ayutha Pooja";
        holiday["9/28/2019"] = "Vijaya Dasami (Dusherra)";
        holiday["10/2/2019"] = "Gandhi Jayanti";
        holiday["10/17/2019"] = "Diwali & Govardhan Puja";
        holiday["10/19/2019"] = "Bhaidooj";
        holiday["11/2/2019"] = "Guru Nanak Jayanti";
        holiday["11/14/2019"] = "Children's Day";
        holiday["11/28/2019"] = "Bakrid";
        holiday["12/25/2019"] = "Christmas";
        holiday["12/28/2019"] = "Muharram";
        return holiday;
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
       // LabelAction.Text = "Date changed to :" + Calendar1.SelectedDate.ToShortDateString();
    }

    protected void Calendar1_VisibleMonthChanged(object sender, MonthChangedEventArgs e)
    {
       // LabelAction.Text = "Month changed to :" + e.NewDate.ToShortDateString();
    }

    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {
        if (HolidayList[e.Day.Date.ToShortDateString()] != null)
        {
            Literal literal1 = new Literal();
            literal1.Text = "<br/>";
            e.Cell.Controls.Add(literal1);
            Label label1 = new Label();
            label1.Text = (string)HolidayList[e.Day.Date.ToShortDateString()];
            label1.Font.Size = new FontUnit(FontSize.Small);
            e.Cell.Controls.Add(label1);
        }
    }  
    private void getData1()
    {
        //string eid = Request.Cookies["userInfo"].Value;
        DataTable dt = new DataTable();
        SqlConnection con = new SqlConnection(@"Data Source=NISHANT\SQLEXPRESS;Initial Catalog=gls;Integrated Security=True");
        con.Open();
        SqlCommand cmd = new SqlCommand("SELECT * from result4 WHERE username='" + Session["username"] + "'", con);
        SqlDataAdapter sqlda = new SqlDataAdapter(cmd);
        //cmd.Parameters.AddWithValue("@username",eid);
        sqlda.Fill(dt);
        if (dt.Rows.Count > 0)
        {

            Label14.Text = dt.Rows[0]["score"].ToString();
        }
        con.Close();
    }
    private void getData()
    {
        //string eid = Request.Cookies["userInfo"].Value;
        DataTable dt = new DataTable();
        SqlConnection con = new SqlConnection(@"Data Source=NISHANT\SQLEXPRESS;Initial Catalog=gls;Integrated Security=True");
        con.Open();
        SqlCommand cmd = new SqlCommand("SELECT * from result WHERE username='" + Session["username"] + "'", con);
        SqlDataAdapter sqlda = new SqlDataAdapter(cmd);
        //cmd.Parameters.AddWithValue("@username",eid);
        sqlda.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            
            Label6.Text = dt.Rows[0]["score"].ToString();
        }
        con.Close();
      //  getData2();
    }
    private void getData2()
    {
        //string eid = Request.Cookies["userInfo"].Value;
        DataTable dt = new DataTable();
        SqlConnection con = new SqlConnection(@"Data Source=NISHANT\SQLEXPRESS;Initial Catalog=gls;Integrated Security=True");
        con.Open();
        SqlCommand cmd = new SqlCommand("SELECT * from result1 WHERE username='" + Session["username"] + "'", con);
        SqlDataAdapter sqlda = new SqlDataAdapter(cmd);
        //cmd.Parameters.AddWithValue("@username",eid);
        sqlda.Fill(dt);
        if (dt.Rows.Count > 0)
        {

            Label8.Text = dt.Rows[0]["score"].ToString();
        }
        con.Close();
       // getData3();
    }
    private void getData3()
    {
        //string eid = Request.Cookies["userInfo"].Value;
        DataTable dt = new DataTable();
        SqlConnection con = new SqlConnection(@"Data Source=NISHANT\SQLEXPRESS;Initial Catalog=gls;Integrated Security=True");
        con.Open();
        SqlCommand cmd = new SqlCommand("SELECT * from result2 WHERE username='" + Session["username"] + "'", con);
        SqlDataAdapter sqlda = new SqlDataAdapter(cmd);
        //cmd.Parameters.AddWithValue("@username",eid);
        sqlda.Fill(dt);
        if (dt.Rows.Count > 0)
        {

            Label12.Text = dt.Rows[0]["score"].ToString();
        }
        con.Close();
        
    }
    private void getData4()
    {
        //string eid = Request.Cookies["userInfo"].Value;
        DataTable dt = new DataTable();
        SqlConnection con = new SqlConnection(@"Data Source=NISHANT\SQLEXPRESS;Initial Catalog=gls;Integrated Security=True");
        con.Open();
        SqlCommand cmd = new SqlCommand("SELECT * from result3 WHERE username='" + Session["username"] + "'", con);
        SqlDataAdapter sqlda = new SqlDataAdapter(cmd);
        //cmd.Parameters.AddWithValue("@username",eid);
        sqlda.Fill(dt);
        if (dt.Rows.Count > 0)
        {

            Label12.Text = dt.Rows[0]["score"].ToString();
        }
        con.Close();
        //getData5();
    }
}