using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient; using System.Configuration;
using System.IO;
public partial class update : System.Web.UI.Page
{
    SqlDataReader myreader;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            string catid = Request.QueryString["id"].ToString();
            SqlConnection conn;
            SqlCommand comm;
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            String q = "select * from category where catid=@ct";
            comm = new SqlCommand(q, conn);
            comm.Parameters.AddWithValue("@ct", catid);
            conn.Open();
            myreader = comm.ExecuteReader();
            myreader.Read();
            TextBox1.Text = myreader["catname"].ToString();
            Image1.ImageUrl = "images/" + myreader["image"].ToString();
        }
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn;
        SqlCommand comm;
        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        String q = "update category set catname=@nme,image=@image where catid=@ctd";
        comm = new SqlCommand(q, conn);
        comm.Parameters.AddWithValue("@nme", TextBox1.Text);
        if (FileUpload1.HasFile)
        {
            comm.Parameters.AddWithValue("@image", FileUpload1.FileName);
            FileUpload1.SaveAs(MapPath("images/" + FileUpload1.FileName));
        }
        else
        {
            comm.Parameters.AddWithValue("@image", Path.GetFileName(Image1.ImageUrl));
        }
        comm.Parameters.AddWithValue("@ctd", Request.QueryString["id"].ToString());
        conn.Open();
        int res = comm.ExecuteNonQuery();
        if (res == 1)
        {
            Response.Redirect("udcat.aspx");
        }
        else
        {
            Label1.Text = "Error while updating, try again";
        }

    }
} 


