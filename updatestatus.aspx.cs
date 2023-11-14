using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class updatestatus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = Request.QueryString["st"];
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn;
        SqlCommand comm;
        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        String q = "update newpayment set status=@st where orderno=@odno";
        comm = new SqlCommand(q, conn);
        comm.Parameters.AddWithValue("@st", DropDownList1.SelectedItem.Text);
        
        comm.Parameters.AddWithValue("@odno", Request.QueryString["oid"].ToString());
        conn.Open();
        int res = comm.ExecuteNonQuery();
        if (res == 1)
        {
            Response.Redirect("vieworders.aspx");
        }
        else
        {
            Label1.Text = "Error while updating, try again";
        }
    }
}