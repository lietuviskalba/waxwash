using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack) {
            GridView1.DataBind();
        }
    }

    protected void DetailsView1_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
    {
        lblMessage.Text = "";
        try
        {
            GridView1.DataBind();
            lblMessage.Text = "Your item has been introduced into the database";
        }
        catch (Exception) {

            e.ExceptionHandled = true;
            lblMessage.Text = "Your item has not been inserted. Please try again later";       
        }

    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        lblMessage.Text = "";
        TableCell cell = null;
        cell = GridView1.Rows[e.RowIndex].Cells[1];
        if (cell != null)
        {
            e.Cancel = true;
            lblMessage.Text = "The item cannot be deleted at the moment.";
        }
        else {
            lblMessage.Text = "Deleting...";
        }

    }

    protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
        lblMessage.Text = "";
        try
        {
            GridView1.DataBind();
            lblMessage.Text = "Successfully deleted";
        }
        catch (Exception) {
            e.ExceptionHandled = true;
            lblMessage.Text = "Cannot be deleted due to some constraint. Please check to see if the specific row is not referenced in another table";
        }

    }

    protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
    {
        lblMessage.Text = "";
       /* try
        {

            GridView1.DataBind();
            lblMessage.Text = "Successfully updated";
        }
        catch (Exception) {

            e.ExceptionHandled = true;
            lblMessage.Text = "Something went wrong, please try again later";
        
        }*/
        if (e.Exception != null)
        {
            lblMessage.Text = "A database erroe has occured...";
            e.ExceptionHandled = true;
        }
        else
        {

        }

    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        try
        {
            GridView1.DataBind();
        }
        catch(Exception) {

           
            lblMessage.Text = "Something went wrong";
        }
    }

    protected void DetailsView1_ItemInserting(object sender, DetailsViewInsertEventArgs e)
    {
        lblMessage.Text = "";
        try
        {
            GridView1.DataBind();
            lblMessage.Text = "Your item has been introduced into the database";
        }
        catch (System.Data.SqlClient.SqlException)
        {

           

        }

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}