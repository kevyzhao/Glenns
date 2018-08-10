using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ProductDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void FormView1_ItemCommand(object sender, FormViewCommandEventArgs e)
    {

        Label lblID = (Label)FormView1.FindControl("productidlbl");
        Label lblName = (Label)FormView1.FindControl("productnamelbl");
        HiddenField hidePrice = (HiddenField)FormView1.FindControl("hiddenprice");
        TextBox txtQuant = (TextBox)FormView1.FindControl("quanitytxt");
        HiddenField hideImg = (HiddenField)FormView1.FindControl("hiddenimgurl");

        //Get the data out of the controls
        string id = lblID.Text;
        string name = lblName.Text;
        decimal price = Convert.ToDecimal(hidePrice.Value);
        int quantity = Convert.ToInt32(txtQuant.Text);
        string imageurl = hideImg.Value;

        Cart c;
        if (Session["Cart"] != null)
        {
            c = (Cart)Session["Cart"];
        }
        else
        {
            c = new Cart();
        }

        //Add the item to the cart using the AddItem method
        c.AddItem(id, name, price, quantity, imageurl);

        //Put the cart (back) into the session
        Session["Cart"] = c;

        //Redirect the user to the cart page
        Response.Redirect("ViewCart.aspx");
    }
}