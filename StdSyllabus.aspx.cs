﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;

public partial class StdSyllabus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        dt.Columns.Add("File", typeof(string));
        dt.Columns.Add("Size", typeof(string));
        dt.Columns.Add("Type", typeof(string));
        foreach (string strFile in Directory.GetFiles(Server.MapPath("~/Syllabus")))
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

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Download")
        {
            Response.Clear();
            Response.ContentType = "applicatin/octet-straem";
            Response.AppendHeader("content-disposition", "filename=" + e.CommandArgument);
            Response.TransmitFile(Server.MapPath("~/Syllabus/") + e.CommandArgument);
            Response.End();
            Label1.Text = "Syllabus has been downloaaded Successfully.";
        }

    }
}