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
                login.Attributes.Add("class", "nav-link active");
                break;
        }
    }
}

