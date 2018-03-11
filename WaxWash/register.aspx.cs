using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

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

            lblStatus.ForeColor = System.Drawing.Color.Red;

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