using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient; using System.Configuration;
using System.IO;
public partial class bookupdate : System.Web.UI.Page
{
    SqlDataReader myreader;
    protected void Page_Load(object sender, EventArgs e)
    {
      if (Page.IsPostBack == false)
        {
            string bid = Request.QueryString["id"].ToString();
            SqlConnection conn;
            SqlCommand comm;
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            String q = "select * from addbook where bid=@bi";
            comm = new SqlCommand(q, conn);
            comm.Parameters.AddWithValue("@bi", bid);
            conn.Open();
            myreader = comm.ExecuteReader();
            myreader.Read();
            TextBox1.Text = myreader["btitle"].ToString();
            TextBox2.Text = myreader["price"].ToString();
            TextBox4.Text = myreader["description"].ToString();
            TextBox5.Text = myreader["stock"].ToString();
            Image1.ImageUrl = "images/" + myreader["image"].ToString();
            DropDownList1.SelectedValue = myreader["catid"].ToString();
            DropDownList2.SelectedValue = myreader["subcatid"].ToString();
            DropDownList4.SelectedValue = myreader["Aemail"].ToString();
            DropDownList3.SelectedValue = myreader["Pemail"].ToString();
            DropDownList5.SelectedValue = myreader["langid"].ToString();
        }
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        SqlConnection conn;
        SqlCommand comm;
        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        String q = "update addbook set btitle=@btitle,price=@price,catid=@catid,subcatid=@subcatid,aemail=@aemail,pemail=@pemail,description=@description,stock=@stock,image=@image,langid=@lid where bid=@bd";
        comm = new SqlCommand(q, conn);
        comm.Parameters.AddWithValue("@btitle", TextBox1.Text);
        comm.Parameters.AddWithValue("@price", TextBox2.Text);
        comm.Parameters.AddWithValue("@catid", DropDownList1.SelectedValue.ToString());
        comm.Parameters.AddWithValue("@subcatid", DropDownList2.SelectedValue.ToString());
        comm.Parameters.AddWithValue("@aemail", DropDownList4.SelectedValue.ToString());
        comm.Parameters.AddWithValue("@pemail", DropDownList3.SelectedValue.ToString());
        comm.Parameters.AddWithValue("@description", TextBox4.Text);
        comm.Parameters.AddWithValue("@stock", TextBox5.Text);
        if (FileUpload1.HasFile)
        {
            comm.Parameters.AddWithValue("@image", FileUpload1.FileName);
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(MapPath("images/" + FileUpload1.FileName));
            }
        }
        else
        {
            comm.Parameters.AddWithValue("@image", Path.GetFileName(Image1.ImageUrl));
        }
        comm.Parameters.AddWithValue("@lid", DropDownList5.SelectedValue.ToString());
        comm.Parameters.AddWithValue("@bd", Request.QueryString["id"].ToString());
        conn.Open();
        int res = comm.ExecuteNonQuery();
        if (res == 1)
        {
            Response.Redirect("udbook.aspx");
        }
        else
        {
            Label1.Text = "error";
        }

    }

   
}


    
