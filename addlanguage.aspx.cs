using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class addlanguage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn;
        SqlCommand comm;
        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        String q = "insert into addlang values(@lname)";
        comm = new SqlCommand(q, conn);
        comm.Parameters.AddWithValue("@lname", TextBox1.Text);
        
        conn.Open();
        int res = comm.ExecuteNonQuery();
        conn.Close();
        if (res == 1)
        {
            Label1.Text = "Language added sucessfully";
        }
        else
        {
            Label1.Text = "Error while adding language";
        }
    }
}