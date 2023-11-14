using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient; using System.Configuration;
public partial class signup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn;//to connect with db
        SqlCommand comm, comm1;//to execute query
        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        String q = "select name from signup where email=@un";
        comm = new SqlCommand(q, conn);
        comm.Parameters.AddWithValue("@un", TextBox2.Text);
        conn.Open();
        object res = comm.ExecuteScalar();
        if (res == null)
        {

            String q1 = "insert into signup values(@name,@email,@pass,@phno,@con,@gn,@utype)";
            comm1 = new SqlCommand(q1, conn);
            comm1.Parameters.AddWithValue("@name", TextBox1.Text);
            comm1.Parameters.AddWithValue("@email", TextBox2.Text);
            comm1.Parameters.AddWithValue("@pass", TextBox3.Text);
            comm1.Parameters.AddWithValue("@phno", TextBox5.Text);
            comm1.Parameters.AddWithValue("@con", DropDownList1.SelectedItem.ToString());
            if (RadioButton1.Checked == true)
            {
                comm1.Parameters.AddWithValue("@gn", "Male");
            }
            else
            {
                comm1.Parameters.AddWithValue("@gn", "Female");
            }
            comm1.Parameters.AddWithValue("@utype", "normal");
            int res1 = comm1.ExecuteNonQuery();
            conn.Close();
            if (res1 == 1)
            {
                Label1.Text="Thanks for signing up, please login";
            }
            else
            {
                Label1.Text = "Error while signing up, try again";
            }
        }

        else
        {
            Label1.Text = "User Already available";
        }
    }
  
}



   