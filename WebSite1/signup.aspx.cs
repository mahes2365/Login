using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Threading;
using queryexecution;
public partial class signup : System.Web.UI.Page
{
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
            txtbxpwd1.Attributes.Add("Values", txtbxpwd1.Text);
            txtbxconfirmpwd.Attributes.Add("Values", txtbxconfirmpwd.Text);  
    }

    protected void btsignup_Click(object sender, EventArgs e)
    {
        var username = txtbxusername1.Text;
        var email = txtbxemail1.Text;
        var pwd = txtbxpwd1.Text;
        var confirmpwd = txtbxconfirmpwd.Text;
        bool a = obj.getData("select * from Sign_Up where EMail='" + email + "'");
        if (a)
        {
            Response.Write("<script type=\"text/javascript\">alert('Your are already member just go to sign in')</script>");
            txtbxusername1.Text = "";
            txtbxemail1.Text = "";
            txtbxpwd1.Text = "";
            txtbxconfirmpwd.Text = "";
        }
        else
        {
            obj.insert("insert into Sign_Up values('" + username + "','" + email + "','" + pwd + "','" + confirmpwd + "')");
            Response.Redirect("signin.aspx");
        }
    }

    protected void brsign_Click(object sender, EventArgs e)
    {
        Response.Redirect("signin.aspx");
    }
}