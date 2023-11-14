using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["uname"] == null)
        {
          Label1.Text="Welcome Guest";
          LinkButton1.Visible = true;
          LinkButton2.Visible = true;
        }
        else
        {
            Label1.Text = "Welcome "+Session["n"].ToString();
            LinkButton10.Visible = true;
            LinkButton3.Visible = true;
            LinkButton4.Visible = true;
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("signup.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
    protected void LinkButton10_Click(object sender, EventArgs e)
    {
        Response.Redirect("signout.aspx");
    }

    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("changepass.aspx");
    }

    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("orderhistory.aspx");
    }
}
