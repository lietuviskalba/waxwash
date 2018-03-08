﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
        if (!IsPostBack) {
            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Bogdan\Desktop\wax\WaxWash\App_Data\waxwash2.0.mdf;Integrated Security=True;Connect Timeout=30");
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
        int customer_id = 1;
        int program_id = ddlUsedProgram.SelectedIndex + 1;
        

        int price = Convert.ToInt32(rdlPrice.SelectedValue);
        int length = Convert.ToInt32(rdlLength.SelectedValue);
        int overall = Convert.ToInt32(rdlOverall.SelectedValue);
        int custService = Convert.ToInt32(rdlCustService.SelectedValue);
        int webService = Convert.ToInt32(rdlWebService.SelectedValue);
        int prgQuality = Convert.ToInt32(rdlProgramQual.SelectedValue);
      
        string other = txtOther.Text;

        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Bogdan\Desktop\wax\WaxWash\App_Data\waxwash2.0.mdf;Integrated Security=True;Connect Timeout=30");
        conn.Open();
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "INSERT INTO feedback VALUES('" + customer_id +
            "', '" + program_id + "', '" + price + "', '" + length + "', '" + custService +
            "', '" + webService + "', '" + prgQuality + "', '" + overall + "', '" + other + "')";
        cmd.ExecuteNonQuery();
        
        conn.Close();
        
        //Mockup label. Here we will have to redirect the information to the database.
        lblOutput.Text = price + length + overall + custService + webService + prgQuality  + other;

    }
    
}
