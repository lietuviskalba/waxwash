using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class ShoppingCart
{

    public List<Extras> extras = new List<Extras>();
    public WashProgram chosenProgram;
    public float total_price;


    public ShoppingCart()
    {
        chosenProgram = new WashProgram();
    }
}