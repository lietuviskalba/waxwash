using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        bool islogedin = IsLoggedin.isLoggedIn;

        User mu = (User)Session["user"];
        if (mu != null)
        {
            login.Visible = false;
            edit_user.Visible = true;
        }
        else
        {
            edit_user.Visible = false;
            login.Visible = true;
        }
        SetActivePage();
    }
    public void SetActivePage()
    {
        switch (Page.Title)
        {
            case "Home":
                home.Attributes.Add("class", "nav-link active");
                break;
            case "Information":
                information.Attributes.Add("class", "nav-link active");
                break;
            case "Feedback":
                feedback.Attributes.Add("class", "nav-link active");
                break;
            case "About":
                about.Attributes.Add("class", "nav-link active");
                break;
            case "Login":
                bool islogedin = IsLoggedin.isLoggedIn;

                edit_user.Title = "fckkk";
                edit_user.Disabled = true;
                if (islogedin == true)
                {
                    login.Visible = false;
                    edit_user.Visible = true;
                    edit_user.Attributes.Add("class", "nav-link active");
                }
                else
                {
                    edit_user.Visible = false;
                    login.Visible = true;
                    login.Attributes.Add("class", "nav-link active");
                }
                break;
        }
    }
}

