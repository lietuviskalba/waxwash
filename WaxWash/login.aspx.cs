using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        //received input
        string username = txtLoginUsername.Text;
        string password = txtLoginPassword.Text;

        //logic

        //Check to see that the password and username matches from the database
        Server.Transfer("confirmationLogin.aspx", true);

    }
}