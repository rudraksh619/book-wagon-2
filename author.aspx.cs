using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient; using System.Configuration;

public partial class author : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn;
        SqlCommand comm;
        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        String q = "insert into author values(@Authorname)";
        comm = new SqlCommand(q, conn);
        comm.Parameters.AddWithValue("@Authorname", TextBox1.Text);

        conn.Open();
        int res = comm.ExecuteNonQuery();
        conn.Close();
        if (res == 1)
        {

            Label1.Text = "Authorinfo added sucessfully";
        }
        else
        {
            Label1.Text = "error";
        }

    }

}