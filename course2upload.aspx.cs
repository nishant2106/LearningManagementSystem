using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Web.Configuration;

public partial class course2upload : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Data2/") + FileUpload1.FileName);
        }
        DataTable dt = new DataTable();
        dt.Columns.Add("File", typeof(string));
        dt.Columns.Add("Size", typeof(string));
        dt.Columns.Add("Type", typeof(string));

        foreach (string strFile in Directory.GetFiles(Server.MapPath("~/Data2/")))
        {
            FileInfo fi = new FileInfo(strFile);

            dt.Rows.Add(fi.Name, fi.Length, GetFileTypeByExtension(fi.Extension));
        }
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }

    private string GetFileTypeByExtension(string extension)
    {
        switch (extension.ToLower())
        {
            case ".doc":
                return "File";
            case ".docx":
                return "Microsoft Word Document";
            case ".xslx":
            case ".xls":
                return "Microsoft Excel Document";
            case ".txt":
                return "Text Document";
            case ".jpg":
            case ".jpeg":
                return "image";
            default:
                return "unknown";
        }
    }


    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowCommand1(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Download")
        {
            Response.Clear();
            Response.ContentType = "applicatin/octet-straem";
            Response.AppendHeader("content-disposition", "filename=" + e.CommandArgument);
            Response.TransmitFile(Server.MapPath("~/Data2/") + e.CommandArgument);
            Response.End();
            Label1.Text = "File has been uploaded Successfully.";
        }

    }
}