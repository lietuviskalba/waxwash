﻿using System;
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
        string username = Request.QueryString["labelUsername"];

        string setF_Name    = "";
        string setL_Name    = "";
        string setAddress   = "";
        string setEmail     = "";
        string setUsername = "";

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
                setUsername = dr.GetString(5);
                //u.password = dr.GetString(6);
            }
            dr.Close();
        }
        conn.Close();

        //Set Textbox text to info from database if they are empty!
        if (txtUsername.Text.Equals(""))
        {
            txtF_Name.Text   = setF_Name;
            txtL_Name.Text   = setL_Name;
            txtAddress.Text  = setAddress;
            txtEmail.Text    = setEmail;
            txtUsername.Text = setUsername;
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {  
        SetTextBoxText();    
    }

    private void UpdateInfo()
    {
        string username = Request.QueryString["labelUsername"];
        string newUsername  = txtUsername.Text;
        string newFname     = txtF_Name.Text;
        string newLname     = txtL_Name.Text;
        string newAddress   = txtAddress.Text;
        string newEmail     = txtEmail.Text;

        //logic
        conn.Open();
        string updateInfo = "UPDATE " + tableName + " SET " +
            "username=  '" + newUsername+   "', " +
            "f_name=    '" + newFname   +   "', " +
            "l_name=    '" + newLname   +   "', " +
            "address=   '" + newAddress +   "', " +
            "email=     '" + newEmail   +   "'  " +
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
            //Response.Redirect(Request.RawUrl);
        }
    }

    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        //Check if there are duplicate usernames
        conn.Open();
        string checkUser = "SELECT count(*) FROM " + tableName + " WHERE username='" + txtUsername.Text + "'";
        SqlCommand cmd = new SqlCommand(checkUser, conn);
        int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
        conn.Close();
        if (temp == 1)
        {
            args.IsValid = false;
        }
        else
        {
            args.IsValid = true;
        }
    }
}