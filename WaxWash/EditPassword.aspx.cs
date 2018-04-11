using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EditPassword : System.Web.UI.Page
{
    //server side database conncetion input
    static string change_PATH = ChangePathHere.path_CHANGE;
    SqlConnection conn = new SqlConnection(change_PATH);

    string tableName = "users";

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    private string GetCurrPassword()
    {
        string username = Request.QueryString["Username"];
        string getPassword = "";
        conn.Open();
        string checkPassQuery = "SELECT * FROM " + tableName + " WHERE username='" + username + "'";
        SqlCommand cmmd = new SqlCommand(checkPassQuery, conn);
        SqlDataReader dr = cmmd.ExecuteReader();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                getPassword = dr.GetString(6);
            }
            dr.Close();
        }
        conn.Close();

        return getPassword;
    }

    private void UpdatePassword()
    {
        string currPass = txtCurrPassword.Text;
        string newPass = txtPassword.Text;// FormsAuthentication.HashPasswordForStoringInConfigFile(txtPassword.Text,"MD5");
        string repPass = txtPasswordRepeat.Text;
        
        if (currPass.Equals(GetCurrPassword()))
        {
            string username = Request.QueryString["Username"];

            lblStatus.BackColor = System.Drawing.Color.Green;
            lblStatus.Text = "Password is a match.";

            //logic
            conn.Open();
            string updateInfo = "UPDATE " + tableName + " SET " +
                "password=      '" + newPass + "' " +
                "WHERE username='" + username + "' ";
            SqlCommand cmd = new SqlCommand(updateInfo, conn);
            cmd.ExecuteNonQuery();
            conn.Close();

            //Go back to user edit page
            Response.Redirect("EditUser.aspx?Username=" + username);
        }
        else
        {
            lblStatus.BackColor = System.Drawing.Color.Red;        
            lblStatus.Text = "You entered wrong current password.";
        }   
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        UpdatePassword();
    }
}