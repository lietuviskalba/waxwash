using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Collections.ObjectModel;

public partial class login : System.Web.UI.Page
{

    //server side database conncetion input
    static string change_PATH = ChangePathHere.path_CHANGE;
    SqlConnection conn = new SqlConnection(change_PATH);

    string tableName = "users";

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        //received input
        string username = txtLoginUsername.Text;
        string password = txtLoginPassword.Text;

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
            string checkPassQuery = "SELECT password FROM " + tableName + " WHERE username='" + username + "'";
            SqlCommand passCMD = new SqlCommand(checkPassQuery, conn);
            string passwordCheck = passCMD.ExecuteScalar().ToString().Replace(" ","");
            conn.Close();
            //Check to see that the password matches from the database
            if (passwordCheck.Equals(password))
            {
                Response.Write("Password is good");
                Server.Transfer("confirmationLogin.aspx", true);
            }
            else
            {
                Response.Write("Password NOT NOT NOT good");
            }           
        }
        else
        {
            Response.Write("Username is wrong");
        }
        
    }
}