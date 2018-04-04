using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class confirmationLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
            lblUsername.Text = Request.QueryString["usernameLoginn"];        
    }

    protected void btnUpdareAcc_Click(object sender, EventArgs e)
    {
        Response.Redirect("EditUser.aspx?labelUsername=" + lblUsername.Text);
        //Server.Transfer("EditUser.aspx", true);
    }
}