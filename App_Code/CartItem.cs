using System;


/// <summary>
/// This is a simple class representing an item that can be added to the shopping cart.
/// </summary>
public class CartItem
{

    //4 private member variables:  id, name, price, quantity.  Use appropriate data types.
    private string id;
    private string name;
    private decimal price;
    private int quantity;
    private string imageurl;

    //4 public properties (one for each private member variable): ID, Name, Price, Quantity.
    //Quantity should have both get and set accessors; all others should have get accessors only.
    public string ID
    {
        get { return id; }
    }

    public string Name
    {
        get { return name; }
    }

    public decimal Price
    {
        get { return price; }
    }

    public int Quantity
    {
        get { return quantity; }
        set { quantity = value; }
    }

    public string Imageurl
    {
        get { return imageurl; }
       
    }



    //1 public property ExtendedPrice (get only) that returns the extended price (price * quantity)

    public decimal ExtendedPrice
    {
        get { return price * quantity; }
    }
    //1 constructor that accepts four parameters and sets the private member variables to these parameter values

    public CartItem(string id, string name, int quantity, decimal price)
    {
        this.id = id;
        this.name = name;
        this.price = price;
        this.Quantity = quantity;
    }

    public CartItem(string id, string name, int quantity, decimal price, string imageurl)
    {
        this.id = id;
        this.name = name;
        this.price = price;
        this.Quantity = quantity;
        this.imageurl = imageurl;
    }

}
