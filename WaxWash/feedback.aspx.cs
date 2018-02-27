﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
        if (!IsPostBack) {
            SqlConnection sqlconn = new SqlConnection();
            sqlconn.ConnectionString =
            "Data Source=DESKTOP-LSLT8EQ;" +
            "Initial Catalog=waxwashftw;" +
            "Integrated Security=SSPI;";
            sqlconn.Open();
            SqlCommand cmd = new SqlCommand();
            SqlDataReader reader;

            for (int i = 0; i <= 10; i++) {
                //Needs to receive the data from the database
                ddlUsedProgram.Items.Add(i.ToString());

            }

        }

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        int price = Convert.ToInt32(rdlPrice.SelectedValue);
        int length = Convert.ToInt32(rdlLength.SelectedValue);
        int overall = Convert.ToInt32(rdlOverall.SelectedValue);
        int custService = Convert.ToInt32(rdlCustService.SelectedValue);
        int webService = Convert.ToInt32(rdlWebService.SelectedValue);
        int prgQuality = Convert.ToInt32(rdlProgramQual.SelectedValue);
        int selectedProgram = Convert.ToInt32(ddlUsedProgram.SelectedValue);
        string other = txtOther.Text;
        //Mockup label. Here we will have to redirect the information to the database.
        lblOutput.Text = price + length + overall + custService + webService + prgQuality + selectedProgram + other;

    }

}