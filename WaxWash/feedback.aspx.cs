using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    static string change_PATH = ChangePathHere.path_CHANGE;
    SqlConnection conn = new SqlConnection(change_PATH);

    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
        if (!IsPostBack) {
            SqlConnection conn = new SqlConnection(change_PATH);
            conn.Open();
            SqlCommand cmd = new SqlCommand("SELECT id, name FROM programs;", conn);
            SqlDataReader dr = cmd.ExecuteReader();

            while (dr.Read()) {

                ddlUsedProgram.Items.Add(dr[0].ToString() + dr[1].ToString());
            }

        }

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        User u = (User) Session["user"];
        int customer_id = 0;
        try
        {
            customer_id = u.userId;
        }
        catch (Exception) {

        }
       
        if (customer_id != 0)
        {
            int program_id = ddlUsedProgram.SelectedIndex + 1;


            int price = Convert.ToInt32(rdlPrice.SelectedValue);
            int length = Convert.ToInt32(rdlLength.SelectedValue);
            int overall = Convert.ToInt32(rdlOverall.SelectedValue);
            int custService = Convert.ToInt32(rdlCustService.SelectedValue);
            int webService = Convert.ToInt32(rdlWebService.SelectedValue);
            int prgQuality = Convert.ToInt32(rdlProgramQual.SelectedValue);
            string username = txtUsername.Text;
            string title = txtTitle.Text;

            string other = txtOther.Text;
            other += "-> " + username;

            SqlConnection conn = new SqlConnection(change_PATH);
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "INSERT INTO feedback VALUES(" + customer_id +
                ", " + program_id + ", " + price + ", " + length + ", " + custService +
                ", " + webService + ", " + prgQuality + ", " + overall + ", '" + title + "', '" + other + "')";
            cmd.ExecuteNonQuery();

            conn.Close();

            Server.Transfer("feedbackConfirmation.aspx");
        }
        else {
            lblRegister.Text = "Please log in before leaving a feedback!";
        }

    }
    
}
