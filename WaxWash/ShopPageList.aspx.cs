using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{

    private ShoppingCart cart;
    protected void Page_Load(object sender, EventArgs e)
    {
        cart = ShoppingCart.GetCart(); // get on all postbacks

        if (!IsPostBack) // do on initial load
        {
            this.DisplayCart();
        }
    }

    private void DisplayCart()
    {
        lstCart.Items.Clear();
        CartItem item;

        for (int i = 0; i < cart.Count; i++)
        {
            item = cart[i];
            lstCart.Items.Add(item.Display());
        }
    }

    protected void btnEmpty_Click(object sender, EventArgs e)
    {
        if (cart.Count > 0)
        {
            cart.Clear();
            lstCart.Items.Clear();
        }

    }

    protected void btnRemove_Click(object sender, EventArgs e)
    {
        if (cart.Count > 0)
        {
            if (lstCart.SelectedIndex > -1)
            {
                cart.RemoveAt(lstCart.SelectedIndex);
                this.DisplayCart();
            }
            else
            {
                lblMessage.Text = "Please select the item you want to remove.";
            }
        }

    }

    protected void btnConfirm_Click(object sender, EventArgs e)
    {
        // Get data for the booking
        int clientID = ((User)Session["user"]).userId;
        int programID = Convert.ToInt32(Session["program"]);
        decimal totalPrice = 0;

        cart = ShoppingCart.GetCart();

        for (int i = 0; i < cart.Count; i++) {
            totalPrice += (cart[i].Product.Price * cart[i].Quantity);
        }
        //save to DB
        SqlConnection conn = new SqlConnection(ChangePathHere.path_CHANGE);
        conn.Open();
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "INSERT INTO bookings VALUES('" + programID + "', '" + clientID + "', '" + totalPrice + "')";
        cmd.ExecuteNonQuery();
        conn.Close();
        lblMessage.Text = "Your booking is saved. Congratulations!";
    }
}