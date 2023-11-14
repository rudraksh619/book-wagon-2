using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient; using System.Configuration;

public partial class payment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedIndex == 1)
        {
            Panel1.Visible = true;
        }
        else
        {
            Panel1.Visible = false;
        }
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        SqlConnection conn;//to connect with db
        SqlCommand comm;//to execute query
        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        String q = "insert into newpayment values(@paymentmode,@creditno,@cname,@hname,@exdate,@address,@billamount,@username,@orderdate,@sessionid,@status)";
        comm = new SqlCommand(q, conn);
        comm.Parameters.AddWithValue("@paymentmode", RadioButtonList1.SelectedItem.ToString());
        comm.Parameters.AddWithValue("@creditno", TextBox1.Text);
        comm.Parameters.AddWithValue("@cname", DropDownList1.SelectedValue.ToString());
        comm.Parameters.AddWithValue("@hname", TextBox2.Text);
        comm.Parameters.AddWithValue("@exdate", TextBox3.Text);
        comm.Parameters.AddWithValue("@address",TextBox4.Text);
        comm.Parameters.AddWithValue("@billamount", Session["tbill"].ToString());
        comm.Parameters.AddWithValue("@username", Session["uname"].ToString());
        comm.Parameters.AddWithValue("@orderdate", DateTime.Now);
        comm.Parameters.AddWithValue("@sessionid", Session["sid"].ToString());
        comm.Parameters.AddWithValue("@status", "Payment Received, Processing");
        conn.Open();
        int res = comm.ExecuteNonQuery();
        conn.Close();
        Response.Redirect("showorder.aspx");
       
       
    }
}