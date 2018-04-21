using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for CartItem
/// </summary>
public class CartItem
{

    public Product Product { get; set; }
    public int Quantity { get; set; }

    public CartItem(){ }

    public CartItem(Product product, int quantity) {

        this.Product = product;
        this.Quantity = quantity;
    }

    public void AddQuantity(int quantity){
            this.Quantity += quantity;        
    }

    public string Display() {
        string displayString = string.Format("{0} ({1} at {2})",
            Product.Name,
            Quantity.ToString(),
            Product.Price.ToString("c")
        );
        return displayString;
    }

}