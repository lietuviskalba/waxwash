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

        itemProduct = this.GetSelectedExtra();
        lblItemDescription.Text = itemProduct.Description;
        lblItemPrice.Text = itemProduct.Price.ToString();

    }

    private Product GetSelectedWash() {

        DataView productTable = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        productTable.RowFilter = "id = '" + ddlWashType.SelectedValue + "'";
        DataRowView row = productTable[0];

        Product p = new Product();
        p.Id = row["id"].ToString();
        p.Name = row["name"].ToString();
        p.Price = Convert.ToDecimal(row["price"]);
 
        p.Description = row["description"].ToString();
        return p;
    }
    private Product GetSelectedExtra()
    {

        DataView extraTable = (DataView)SqlDataSource2.Select(DataSourceSelectArguments.Empty);
        extraTable.RowFilter = "id = '" + ddlItems.SelectedValue + "'";
        DataRowView extraRow = extraTable[0];

        Product e = new Product();
        e.Id = extraRow["id"].ToString();
        e.Name = extraRow["name"].ToString();
        e.Price = Convert.ToDecimal(extraRow["price"]);
        e.Description = extraRow["description"].ToString();
        return e;
    }


    protected void btnItemAdd_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            // get cart from session and selected item from cart
            ShoppingCart cart = ShoppingCart.GetCart();
            CartItem cartItem = cart[itemProduct.Id];

            // if item isn’t in cart, add it; otherwise, increase its quantity
            if (cartItem == null)
            {
                int sth = Convert.ToInt32(txtAmount.Text);
                cart.AddItem(itemProduct, sth);
            }
            else
            {
                cartItem.AddQuantity(Convert.ToInt32(txtAmount.Text));
            }
        }
    }

    protected void btnConfirm_Click(object sender, EventArgs e)
    {
        Server.Transfer("ShopPageList.aspx");
    }

    protected void btnSelectWash_Click(object sender, EventArgs e)
    {
        if (Page.IsValid) {
            ShoppingCart cart = ShoppingCart.GetCart();
            CartItem cartItem = cart[selectedProduct.Id];

           cart.AddItem(selectedProduct, 1);
            
        }
    }
}