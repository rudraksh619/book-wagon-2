using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient; using System.Configuration;


public partial class addbook : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        SqlConnection conn;//to connect with db
        SqlCommand comm;//to execute query
        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        String q = "insert into addbook values(@btitle,@price,@catid,@subcatid,@aemail,@pemail,@image,@description,@stock,@lid)";
        comm = new SqlCommand(q, conn);
        comm.Parameters.AddWithValue("@btitle",TextBox1.Text);
        comm.Parameters.AddWithValue("@price",TextBox2.Text);
        comm.Parameters.AddWithValue("@catid", DropDownList1.SelectedValue.ToString());
        comm.Parameters.AddWithValue("@subcatid", DropDownList2.SelectedValue.ToString());
        comm.Parameters.AddWithValue("@aemail",DropDownList4.SelectedValue.ToString());
        comm.Parameters.AddWithValue("@pemail",DropDownList3.SelectedValue.ToString());
        comm.Parameters.AddWithValue("@description", TextBox4.Text);
        comm.Parameters.AddWithValue("@stock", TextBox5.Text);
        if (FileUpload1.HasFile)
        {
            comm.Parameters.AddWithValue("@image", FileUpload1.FileName);
        }
        else
        {
            comm.Parameters.AddWithValue("@image", "default.png");
        }
        comm.Parameters.AddWithValue("@lid", DropDownList5.SelectedValue);
        conn.Open();
        int res = comm.ExecuteNonQuery();
        conn.Close();
        if (res == 1)
        {
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(MapPath("images/" + FileUpload1.FileName));
            }
            Label1.Text = "Product added successfully";
        }
        else
        {
            Label1.Text = "error";
        }

    }
    }