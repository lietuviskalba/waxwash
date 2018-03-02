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
    string tableName = "MyPeopleTest";
    static string change_PATH = @"Data Source=.\sqlexpress;Initial Catalog=MyLocalDatabase;Integrated Security=True";
    //"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Bogdan\Desktop\wax\WaxWash\wax.mdf;Integrated Security=True;Connect Timeout=30"

    SqlConnection conn = new SqlConnection(change_PATH);

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        //received input
        string username = txtLoginUsername.Text;
        string password = txtLoginPassword.Text;
        string dbUsername = "";
        string dbPassword = "";

        //logic
        conn.Open();
        SqlCommand cmd1 = new SqlCommand("SELECT username FROM tmpusername WHERE _id=1");

        SqlDataReader usernameRdr = null;

        usernameRdr = cmd1.ExecuteReader();

        while (usernameRdr.Read())
        {
            string username11 = usernameRdr["username11"].ToString();
        }
        /*
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into " + tableName +" values('" + username + "')";
        cmd.ExecuteNonQuery();
        */
        conn.Close();

        //Check to see that the password and username matches from the database
        Server.Transfer("confirmationLogin.aspx", true);

    }


}