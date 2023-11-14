using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient; using System.Configuration;

public partial class bookdelete : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
         SqlConnection conn;//to connect with db
        SqlCommand comm;//to execute query
        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        String q = "delete from addbook where bid=@bid";
        comm = new SqlCommand(q, conn);
        comm.Parameters.AddWithValue("@bid",Request.QueryString["id"]);
        conn.Open();
        int res = comm.ExecuteNonQuery();
        if (res == 1)
        {
           Response.Redirect("udbook.aspx");
        }
        conn.Close();

    }

}
    
    
