using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using queryexecution;
public partial class Login : System.Web.UI.Page
{
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["username"] = null;
        
    }

    protected void btsignup_Click(object sender, EventArgs e)
    {
        Response.Redirect("signup.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string username = txtbxusername2.Text;
        string password = txtbxpwd2.Text;
        bool a = obj.getData("select * from Sign_Up where Username='" + username + "'and Password='" + password + "'");
        if (a)
        {
            Session["username"] = username;
            Response.Redirect("home.aspx");
        }
        else
        {
            Response.Write("<script type=\"text/javascript\">alert('Invalid Username or Password')</script>");
            txtbxusername2.Text = "";
            txtbxpwd2.Text = "";
        }
    }

    
}