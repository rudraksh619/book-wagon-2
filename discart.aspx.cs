using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient; using System.Configuration;

public partial class discart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Response.Write(Session["sid"].ToString());
        SqlConnection conn;
        SqlCommand comm;
        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        String q= "select sum(totalcost) from addcart where sessionid=@sid";
         comm = new SqlCommand(q, conn);
         comm.Parameters.AddWithValue("@sid",Session["sid"].ToString());
            conn.Open();  
         object res = comm.ExecuteScalar();
         Label2.Text = res.ToString();
        conn.Close();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("book.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Session.Add("tbill", Label2.Text);
        Response.Redirect("payment.aspx");
    }

    protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
       
    }

    protected void SqlDataSource1_Deleted(object sender, SqlDataSourceStatusEventArgs e)
    {
        Response.Redirect("discart.aspx");
    }
}
