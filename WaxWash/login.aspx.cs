using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Collections.ObjectModel;
using System.Web.Security;

public partial class login : System.Web.UI.Page
{

    //server side database conncetion input
    static string change_PATH = ChangePathHere.path_CHANGE;
    SqlConnection conn = new SqlConnection(change_PATH);

    string tableName = "users";
    static bool isLogedIn = false;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        //received input
        string username = txtLoginUsername.Text;
        string password = FormsAuthentication.HashPasswordForStoringInConfigFile(txtLoginPassword.Text, "MD5");

        //logic
        conn.Open();
        string checkUser = "SELECT count(*) FROM " + tableName + " WHERE username='" + username + "'";
        SqlCommand cmd = new SqlCommand(checkUser, conn);
        int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
        conn.Close();

        //Check to see that the username matches from the database
        if (temp == 1)
        {
            conn.Open();
            string checkPassQuery = "SELECT * FROM " + tableName + " WHERE username='" + username + "'";
            SqlCommand cmmd = new SqlCommand(checkPassQuery, conn);
            SqlDataReader dr = cmmd.ExecuteReader();
            User u = new User();
            if (dr.HasRows)
            {

                while (dr.Read())
                {

                    u.userId = dr.GetInt32(0);
                    u.f_name = dr.GetString(1);
                    u.l_name = dr.GetString(2);
                    u.address = dr.GetString(3);
                    u.email = dr.GetString(4);
                    u.username = dr.GetString(5);
                    u.password = dr.GetString(6);

                }
                lblWarning.Text = u.username;
                dr.Close();
            }

            string passwordCheck = cmmd.ExecuteScalar().ToString().Replace(" ", "");
            conn.Close();
            //Check to see that the password matches from the database
            if (u.password.Equals(password))
            {
                IsLoggedin.isLoggedIn = true;
                Session["user"] = u;
                Response.Redirect("confirmationLogin.aspx?usernameLoginn=" + txtLoginUsername.Text);
                //Server.Transfer("confirmationLogin.aspx", true);
            }
            else if (u.f_name == txtLoginUsername.Text) {
                if (u.password == txtLoginPassword.Text) {

                    IsLoggedin.isLoggedIn = true;
                    Session["user"] = u;
                    Server.Transfer("bookings.aspx", true);
                }
            }
            else
            {
                lblWarning.Text = "Password is wrong";
            }
        }
        else
        {
            lblWarning.Text = "Username is wrong";
        }
    }

    protected void txtLoginPassword_TextChanged(object sender, EventArgs e)
    {

    }
}