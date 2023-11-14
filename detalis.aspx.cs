using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient; using System.Configuration;
using System.IO;
public partial class detalis : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        SqlConnection conn;
        SqlCommand comm;
        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        String q = "select catname,subname,authorname,publisher.name,btitle,price,addbook.image,description,stock,langname from category,subcategory,addbook,author,publisher,addlang where addbook.catid=category.catid and addbook.subcatid=subcategory.subid and bid=@bid and addbook.langid=addlang.id and addbook.aemail=author.authorid and addbook.pemail=publisher.pubid";
        comm = new SqlCommand(q, conn);
        comm.Parameters.AddWithValue("@bid", Request.QueryString["id"]);
        conn.Open();
        SqlDataReader myreader = comm.ExecuteReader();
        myreader.Read();
        Label1.Text = myreader["langname"].ToString();
        Label2.Text = myreader["catname"].ToString();
        Label3.Text = myreader["subname"].ToString();
        Label4.Text = myreader["btitle"].ToString();
        Label5.Text = myreader["price"].ToString();
        Label6.Text = myreader["Authorname"].ToString();
        Label7.Text = myreader["name"].ToString();
        //Label8.Text = myreader["stock"].ToString();
        Label9.Text = myreader["description"].ToString();
        Image1.ImageUrl = "images/" + myreader["image"].ToString();
        int stock = Convert.ToInt32(myreader["stock"].ToString());

        if(stock<=0)
        {
            Panel1.Visible = false;
            Label8.Text = "Out of Stock";
            Button4.Visible = false;
        }

        else if (stock>10)
        {
            for (int x = 1; x <= 10; x++)
            {
                DropDownList1.Items.Add(x.ToString());
            }
        }
        else
        {
            for (int x = 1; x <= stock; x++)
            {
                DropDownList1.Items.Add(x.ToString());
            }
        }

        conn.Close();
        myreader.Close();

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        if (Session["uname"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        else
        {
            int r, qt, tc;
            r = Convert.ToInt32(Label5.Text);
            qt = Convert.ToInt32(DropDownList1.SelectedItem.Text);
            if (qt < 1)
            {
                Response.Write("<script>alert('Please fill quantity for book')</script>");
            }
            else
            {
                tc = r * qt;
                SqlConnection conn;
                SqlCommand comm;
                conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                String q = "insert into addcart values(@image,@name,@Quantity,@price,@tc,@sessionid,@bid)";
                comm = new SqlCommand(q, conn);
                comm.Parameters.AddWithValue("@image", Path.GetFileName(Image1.ImageUrl));
                comm.Parameters.AddWithValue("@name", Label4.Text);
                comm.Parameters.AddWithValue("@Quantity", DropDownList1.SelectedItem.Text);
                comm.Parameters.AddWithValue("@price", Label5.Text);
                comm.Parameters.AddWithValue("@tc", tc);
                comm.Parameters.AddWithValue("@r", r);
                comm.Parameters.AddWithValue("@qt", qt);
                comm.Parameters.AddWithValue("@Sessionid", Session.SessionID);
                comm.Parameters.AddWithValue("@bid", Request.QueryString["id"]);
                conn.Open();
                int res = comm.ExecuteNonQuery();
                conn.Close();
                Session.Add("sid", Session.SessionID);
                Response.Redirect("discart.aspx");
            }
        }

    }
}