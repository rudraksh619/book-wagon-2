using System;
using System.Collections.Generic;
using System.Linq; 
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient; using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn;
        SqlCommand comm;
        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        String q = "select * from signup where email=@un and password=@pass";
        comm = new SqlCommand(q, conn);
        comm.Parameters.AddWithValue("@un", TextBox1.Text);
        comm.Parameters.AddWithValue("@pass", TextBox2.Text);
        conn.Open();
        SqlDataReader res=comm.ExecuteReader();
        if (res.HasRows==false)
        {
            Label1.Text = "Wrong username/password";
        }
        else
        {
            res.Read();
            Session.Add("uname", res["email"].ToString());
            Session.Add("utype", res["utype"].ToString());
            Session.Add("n", res["name"].ToString());
            if (res["utype"].ToString() == "admin")
            {
               Response.Redirect("admin.aspx");
            }
            else
            {
                Response.Redirect("index.aspx");
            }
        }
    }
}