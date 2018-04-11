using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            GridView1.DataBind();
        }
    }


    protected void DetailsView1_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
    {
        lblMessage.Text = "";
        if (e.Exception != null)
        {
            lblMessage.Text = "A database error has occured...";
            e.ExceptionHandled = true;
        }
        else if (e.AffectedRows == 0)
        {
            lblMessage.Text = "For some reason there was no row updated";
        }
        else
        {
            lblMessage.Text = "Successfully updated";
            GridView1.DataBind();
        }

    }

    protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
        lblMessage.Text = "";
        if (e.Exception != null)
        {
            lblMessage.Text = "A database error has occured...";
            e.ExceptionHandled = true;
        }
        else if (e.AffectedRows == 0)
        {
            lblMessage.Text = "For some reason there was no row updated";
        }
        else
        {
            lblMessage.Text = "Successfully updated";
        }

    }

    protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
    {
        lblMessage.Text = "";
        if (e.Exception != null)
        {
            lblMessage.Text = "A database error has occured...";
            e.ExceptionHandled = true;
        }
        else if (e.AffectedRows == 0)
        {
            lblMessage.Text = "For some reason there was no row updated";
        }
        else
        {
            lblMessage.Text = "Successfully updated";
        }

    }
}