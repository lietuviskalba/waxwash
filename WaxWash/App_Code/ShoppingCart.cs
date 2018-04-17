using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class ShoppingCart
{

    private List<CartItem> cartItems;

    public ShoppingCart() {
        cartItems = new List<CartItem>();
    }

    public int Count() {
        return cartItems.Count;
    }

    public CartItem this[int index] {
        get { return cartItems[index]; }
        set { cartItems[index] = value; }
    }

    public CartItem this[string id]
    {
        get
        {
            foreach (CartItem c in cartItems)
                if (c.Product.Id.ToString() == id) return c;
            return null;
        }
    }

    public static ShoppingCart GetCart() {

        ShoppingCart cart = (ShoppingCart)HttpContext.Current.Session["cart"];
        if(cart == null)
        {
            HttpContext.Current.Session["cart"] = new ShoppingCart();

        }
        return (ShoppingCart)HttpContext.Current.Session["cart"];
    }

    public void AddItem(Product product, int quantity) {
        CartItem c = new CartItem(product, quantity);
        cartItems.Add(c);
    }

    public void RemoveAt(int index) {
        cartItems.RemoveAt(index);
    }

    public void Clear() {
        cartItems.Clear();
    }
}