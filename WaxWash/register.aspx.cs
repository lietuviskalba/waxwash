﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Security;

public partial class register : System.Web.UI.Page
{
    //server side database conncetion input
    string tableName = "users";
    SqlConnection conn = new SqlConnection(ChangePathHere.path_CHANGE);

    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btnRegister_Click(object sender, EventArgs e)
    {
        if (IsValid)
        {
            //input
            string email = txtRegisterEmail.Text;
            string firstName = txtFname.Text;
            string lastName = txtLname.Text;
            string address = txtAddress.Text;
            string username = txtRegisterUsername.Text;
            string password = txtRegisterPassword.Text;
            string repeatPassword = txtRegisterRepeatPassword.Text;

            //logic
            if (password.Equals(repeatPassword))
            {
                //save data to database
                conn.Open();
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "INSERT INTO " + tableName + " VALUES('" + firstName + "', '" + lastName + "', '" + address + "', '" + email + "', '" + username + "', '" + password + "')";
                cmd.ExecuteNonQuery();
                conn.Close();
                //output 
                Server.Transfer("login.aspx", true);
            }
        }
    }

    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        //Check if there are duplicate usernames
        conn.Open();
        string checkUser = "SELECT count(*) FROM " + tableName + " WHERE username='" + txtRegisterUsername.Text + "'";
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