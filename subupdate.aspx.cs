using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient; using System.Configuration;
using System.IO;
public partial class subupdate : System.Web.UI.Page
{
    SqlDataReader myreader;
    String cid;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            string subid = Request.QueryString["id"].ToString();
            SqlConnection conn;
            SqlCommand comm;
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            String q = "select * from subcategory where subid=@st";
            comm = new SqlCommand(q, conn);
            comm.Parameters.AddWithValue("@st", subid);
            conn.Open();
            myreader = comm.ExecuteReader();
            myreader.Read();
            TextBox1.Text = myreader["subname"].ToString();
            cid = myreader["catid"].ToString();
            Image1.ImageUrl = "images/" + myreader["image"].ToString();
        }
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn;
        SqlCommand comm;
        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        String q = "update subcategory set subname=@nme,image=@image where subid=@std";
        comm = new SqlCommand(q, conn);
        comm.Parameters.AddWithValue("@nme", TextBox1.Text);
        if (FileUpload1.HasFile)
        {
            comm.Parameters.AddWithValue("@image", FileUpload1.FileName);
        }
        else
        {
            comm.Parameters.AddWithValue("@image", Path.GetFileName(Image1.ImageUrl));
        }
        comm.Parameters.AddWithValue("@std", Request.QueryString["id"].ToString());
        conn.Open();
        int res = comm.ExecuteNonQuery();
        if (res == 1)
        {
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(MapPath("images/" + FileUpload1.FileName));
            }
            Response.Redirect("udsubcat.aspx");
        }
        else
        {
            Label1.Text = "error";
        }

    }

    protected void DropDownList1_DataBound(object sender, EventArgs e)
    {
        DropDownList1.Items.FindByValue(cid).Selected = true;
    }
} 



    
