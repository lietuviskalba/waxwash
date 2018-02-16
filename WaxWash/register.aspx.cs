using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnRegister_Click(object sender, EventArgs e)
    {
        if (IsValid)
        {
            //input
            string email = txtRegisterEmail.Text;
            string username = txtRegisterUsername.Text;
            string password = txtRegisterPassword.Text;
            string repeatPassword = txtRegisterRepeatPassword.Text;

            lblStatus.ForeColor = System.Drawing.Color.Red;

            //logic
            if (password.Equals(repeatPassword))
            {
                //Add logic to save data to database
                //output #1
                lblStatus.Text = "You have Registered!!! Mr." + username;
                Server.Transfer("login.aspx", true);
            }
            else
            {
                //output #2
                lblStatus.Text = "Status: Your password does not match! Make sure it's correct!";   
            }
        }
    }
}