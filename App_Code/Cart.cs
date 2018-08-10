using System;
using System.Collections.Generic;

/// <summary>
/// This class represents a shopping cart with a list of CartItem objects
/// </summary>
public class Cart
{

    // items: a private generic list of CartItem objects that represents the items stored in the cart

    private List<CartItem> items = new List<CartItem>();

    // Items: a public property to access (get only) the items list

    public List<CartItem> Items
    {
        get { return items; }
    }


    // HasItems: a boolean property indicating whether the cart has items in it (count of items > 0)
    public bool HasItems
    {
        get
        {
            return Items.Count > 0;
               
        }
    }

    // AddItem:  public method that adds a CartItem to the items list
    // Should return void and take four parameters:  id, name, price, quantity (values for the product to be added)
    // ****IMPORTANT*** If the product already exists in the items list, just update the quantity by one 
    public void AddItem(string id, string name, decimal price, int quantity)
    {
        //check to see if item is already in cart
        bool isInCart = false;
        CartItem item = null;

        //loop through the items list to see if the item already exists in the cart
        foreach(CartItem c in items)
        {
            if (c.ID == id)
            {
                //item exists in cart
                isInCart = true;
                item = c;
            }
        }

        if (isInCart == true)
        {
            //increment the existing item's quantity
            item.Quantity += quantity;
        }
        else
        {
            //create a new CartItem and add it to the items list
            CartItem i = new CartItem(id, name, quantity, price);
            items.Add(i);
        }

    }

    public void AddItem(string id, string name, decimal price, int quantity, string imageurl)
    {
        //check to see if item is already in cart
        bool isInCart = false;
        CartItem item = null;

        //loop through the items list to see if the item already exists in the cart
        foreach (CartItem c in items)
        {
            if (c.ID == id)
            {
                //item exists in cart
                isInCart = true;
                item = c;
            }
        }

        if (isInCart == true)
        {
            //increment the existing item's quantity
            item.Quantity += quantity;
        }
        else
        {
            //create a new CartItem and add it to the items list
            CartItem i = new CartItem(id, name, quantity, price, imageurl);
            items.Add(i);
        }

    }

    // RemoveItem:  public method that removes a CartItem from the items list
    // Should return void and take one parameter: id (the id of the product to be removed)
    public void RemoveItem(string id)
    {
        //variable for item to remove
        CartItem item = null;

        foreach (CartItem ci in items)
        {
            if (ci.ID == id)
            {
                item = ci;
            }
        }

        items.Remove(item);

    }

    // UpdateQuantity: public method that updates the  quantity of an CartItem the items list. 
    // Should return void and take two parameters:  id, newQuantity (the id of the product and the new quantity)
    public void UpdateQuantity(string id, int quantity)
    {
        CartItem itemToUpdate = null;

        foreach(CartItem i in Items)
        {
            if (i.ID == id)
            {
                itemToUpdate = i;
            }
        }

        if (itemToUpdate != null)
        {
            itemToUpdate.Quantity = quantity;
        }
    }

    // GetSubtotal: public method that returns the subtotal amount for all products the cart
    // The subtotal is the sum of price * quantity for each item
    public decimal GetSubTotal()
    {
        decimal subtotal = 0;
        foreach (CartItem i in Items)
        {
            subtotal += i.Price * i.Quantity;

        }
        return subtotal;
    }

    // GetShipping: public method that returns the shipping amount for all products the cart
    // Assume that the shipping amount is 15% of the cart subtotal
    public decimal GetShipping()
    {
       
        return GetSubTotal()*0.15M;

    }

    // GetTotal: public method that returns the total amount for all products the cart
    // The total is the subtotal plus shipping
    public decimal GetTotal()
    {
        return GetSubTotal() + GetShipping();
    }

    // Empty constructor
    public Cart()
    {

    }




}
