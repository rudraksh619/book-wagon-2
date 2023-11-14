using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.SessionState;
using System.Reflection;
using System.Data.SqlClient; using System.Configuration;

public partial class showorder : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection myconn, myconn1;
        SqlCommand mycomm, mycomm2;

        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        myconn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        String q = "select * from addcart where sessionid=@sessid";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@sessid", Session["sid"].ToString());
        myconn.Open();

        SqlDataReader myreader;

        myreader = mycomm.ExecuteReader();
        if (myreader.HasRows)
        {
            while (myreader.Read())
            {
         
                myconn1.Open();
                int qt = Convert.ToInt32(myreader["quantity"].ToString());
                int bookid = Convert.ToInt32(myreader["bookid"].ToString());
                q = "update addbook set stock=stock-@qt where bid=@bid";
                mycomm2 = new SqlCommand(q, myconn1);
                mycomm2.Parameters.AddWithValue("@qt", qt);
                mycomm2.Parameters.AddWithValue("@bid", bookid);
                int count = mycomm2.ExecuteNonQuery();
                myconn1.Close();
            }
        }
        myconn.Close();
        myreader.Close();

        myconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        q = "select * from newpayment where sessionid=@sessionid";
        mycomm = new SqlCommand(q, myconn);
        mycomm.Parameters.AddWithValue("@sessionid", Session["sid"]);
        myconn.Open();

        myreader = mycomm.ExecuteReader();
        myreader.Read();
        Label2.Text = myreader["orderno"].ToString();
        Label3.Text = myreader["billamount"].ToString();
        Label4.Text = myreader["address"].ToString();
        myreader.Close();
        myconn.Close();
        if (Session["n"] != null)
        {
            String n = Session["n"].ToString();
            String un = Session["uname"].ToString();
            Response.Cookies.Add(new HttpCookie("ASP.NET_SessionId", ""));

            regenerateId();

            Session.Add("n", n);
            Session.Add("uname", un);

        }


    }
    void regenerateId()
    {
        System.Web.SessionState.SessionIDManager manager = new System.Web.SessionState.SessionIDManager();
        string oldId = manager.GetSessionID(Context);
        string newId = manager.CreateSessionID(Context);
        bool isAdd = false, isRedir = false;
        manager.SaveSessionID(Context, newId, out isRedir, out isAdd);
        HttpApplication ctx = (HttpApplication)HttpContext.Current.ApplicationInstance;
        HttpModuleCollection mods = ctx.Modules;
        System.Web.SessionState.SessionStateModule ssm = (SessionStateModule)mods.Get("Session");
        System.Reflection.FieldInfo[] fields = ssm.GetType().GetFields(BindingFlags.NonPublic | BindingFlags.Instance);
        SessionStateStoreProviderBase store = null;
        System.Reflection.FieldInfo rqIdField = null, rqLockIdField = null, rqStateNotFoundField = null;
        foreach (System.Reflection.FieldInfo field in fields)
        {
            if (field.Name.Equals("_store")) store = (SessionStateStoreProviderBase)field.GetValue(ssm);
            if (field.Name.Equals("_rqId")) rqIdField = field;
            if (field.Name.Equals("_rqLockId")) rqLockIdField = field;
            if (field.Name.Equals("_rqSessionStateNotFound")) rqStateNotFoundField = field;
        }
        object lockId = rqLockIdField.GetValue(ssm);
        if ((lockId != null) && (oldId != null)) store.ReleaseItemExclusive(Context, oldId, lockId);
        rqStateNotFoundField.SetValue(ssm, true);
        rqIdField.SetValue(ssm, newId);
    }
}
