using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class shopPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       // if (!IsPostBack) {
       //     ddlWashType.DataBind();
       //     ddlItems.DataBind();
       //
       //     string id = "";
       // 
       //     if (RouteData.Values.ContainsKey("productID"))
       //     {
       //
       //         id = RouteData.Values["productID"].ToString();
       //
       //     }
       //     else {
       //         var segments = Request.GetFriendlyUrlSegment();
       //         if (segments.Count > 0) id = segments[0];
       //     }
       //
       //     if (id == "")
       //     {
       //         Reload();
       //     }
       //     else {
       //         ShowSelectedProduct(id);
       //     }
       // }
    }


    protected void btnItemAdd_Click(object sender, EventArgs e)
    {

    }

    protected void btnConfirm_Click(object sender, EventArgs e)
    {

    }

    protected void ddlWashType_SelectedIndexChanged(object sender, EventArgs e)
    {
        Reload();
    }

    public void Reload() {

        var id = ddlWashType.SelectedValue;
        var url = Friendly
    }
}