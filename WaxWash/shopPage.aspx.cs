using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class shopPage : System.Web.UI.Page
{

    private Product selectedProduct;
    private Product itemProduct;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) {

            ddlWashType.DataBind();
            ddlItems.DataBind();
        }

        selectedProduct = this.GetSelectedWash();
        lblDescription.Text = selectedProduct.Description;
        lblPrice.Text = selectedProduct.Price.ToString();
        Label6.Text = selectedProduct.Image_src;

        itemProduct = this.GetSelectedExtra();
        lblItemDescription.Text = itemProduct.Description;
        lblItemPrice.Text = itemProduct.Price.ToString();
        Label7.Text = itemProduct.Image_src;
        txtAmount.Text = "0";

    }

    private Product GetSelectedWash() {

        DataView productTable = (DataView)SqlDataSource2.Select(DataSourceSelectArguments.Empty);
        productTable.RowFilter = "ProductID = '" + ddlWashType.SelectedValue + "'";
        DataRowView row = productTable[0];

        WashProgram p = new WashProgram();
        p.Id = Convert.ToInt32(row["id"]);
        p.Name = row["name"].ToString();
        p.Price = Convert.ToDecimal(row["price"]);
        p.Length = Convert.ToInt32(row["length"]);
        p.Description = row["description"].ToString();
        p.Image_src = row["image_src"].ToString();
        return p;
    }
    private Product GetSelectedExtra()
    {

        DataView productTable = (DataView)SqlDataSource3.Select(DataSourceSelectArguments.Empty);
        productTable.RowFilter = "ProductID = '" + ddlWashType.SelectedValue + "'";
        DataRowView row = productTable[0];

        Extras p = new Extras();
        p.Id = Convert.ToInt32(row["id"]);
        p.Name = row["name"].ToString();
        p.Price = Convert.ToDecimal(row["price"]);
        p.Description = row["description"].ToString();
        p.Image_src = row["image_src"].ToString();
        return p;
    }


    protected void btnItemAdd_Click(object sender, EventArgs e)
    {

        if (Page.IsValid) {

            ShoppingCart cart = ShoppingCart.GetCart();
            CartItem cartItem = cart[selectedProduct.Id];

            if (cartItem == null)
            {
                cart.AddItem(selectedProduct, 1);
            }
            else {
                
            }
        }
    }

    protected void btnConfirm_Click(object sender, EventArgs e)
    {
        Server.Transfer("shoppingPage.aspx");
    }

<<<<<<< HEAD
=======
    public void Reload() {

        var id = ddlWashType.SelectedValue;
        //var url = Friendly;
    }
>>>>>>> 182e62bb805635ac7cdb5a781342e52cb107df43
}