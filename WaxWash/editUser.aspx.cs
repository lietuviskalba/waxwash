using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EditUser : System.Web.UI.Page
{
    //server side database conncetion input
    static string change_PATH = ChangePathHere.path_CHANGE;
    SqlConnection conn = new SqlConnection(change_PATH);

    string tableName = "users";

    private void SetTextBoxText()
    {
        //string username = Request.QueryString["Username"];
        User mu = (User)Session["user"];
        string username = mu.username;

        string setF_Name    = "";
        string setL_Name    = "";
        string setAddress   = "";
        string setEmail     = "";

        //Get values from database and store into proper strings
        conn.Open();
        string checkPassQuery = "SELECT * FROM " + tableName + " WHERE username='" + username + "'";
        SqlCommand cmmd = new SqlCommand(checkPassQuery, conn);
        SqlDataReader dr = cmmd.ExecuteReader();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                setF_Name = dr.GetString(1);
                setL_Name = dr.GetString(2);
                setAddress = dr.GetString(3);
                setEmail = dr.GetString(4);
            }
            dr.Close();
        }
        conn.Close();

        //Set Textbox text to info from database if they are empty!
        if (txtEmail.Text.Equals(""))
        {
            txtF_Name.Text   = setF_Name;
            txtL_Name.Text   = setL_Name;
            txtAddress.Text  = setAddress;
            txtEmail.Text    = setEmail;
        }     
    }  

    protected void Page_Load(object sender, EventArgs e)
    {
        //string username = Request.QueryString["Username"];
        User mu = (User)Session["user"];
        string username = mu.username;
        SetTextBoxText();
        btnLogout.Text = "Logout, " + username;
    }
    
    private void UpdateInfo()
    {
        string newFname     = txtF_Name.Text;
        string newLname     = txtL_Name.Text;
        string newAddress   = txtAddress.Text;
        string newEmail     = txtEmail.Text;

        //string username = Request.QueryString["Username"];
        User mu = (User)Session["user"];
        string username = mu.username;

        //logic
        conn.Open();
        string updateInfo = "UPDATE " + tableName + " SET " +
            "f_name=    '" + newFname    +   "', " +
            "l_name=    '" + newLname    +   "', " +
            "address=   '" + newAddress  +   "', " +
            "email=     '" + newEmail    +   "'  " +
            "WHERE username='" + username + "'";
        SqlCommand cmd = new SqlCommand(updateInfo, conn);
        cmd.ExecuteNonQuery();
        conn.Close();
    }

    protected void btnUpdateInfo_Click(object sender, EventArgs e)
    {
        if (IsValid)
        {
            UpdateInfo();
            lblUpdateStatus.Text = "Update status: Successful!!!";
            lblUpdateStatus.ForeColor = System.Drawing.Color.Honeydew;
            lblUpdateStatus.BackColor = System.Drawing.Color.Green;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //string username = Request.QueryString["Username"];
        User mu = (User)Session["user"];
        string username = mu.username;
        Response.Redirect("EditPassword.aspx?Username=" + username);
    }

    protected void btnLogout_Click(object sender, EventArgs e)
    {
        //end session here
        IsLoggedin.isLoggedIn = false;
        User u = new User();
        Session["user"] = null;
        Server.Transfer("index.aspx", true);
    }
}