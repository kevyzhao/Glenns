using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ViewCart : System.Web.UI.Page
{
    IdentityEF.UserManager usermanager;
    IdentityEF.ApplicationUser user;
    protected void Page_Load(object sender, EventArgs e)
    {
        //pull the cart out of the session if it exists
        Cart c = (Cart)Session["Cart"];

        //bind the ListBox to the list of Items in the Cart
        //if the cart exists
        if (c != null)
        {
            ListView1.DataSource = c.Items;

            if (!IsPostBack)
                ListView1.DataBind();

        }
    }

    protected void Page_PreRender(object sender, EventArgs e)
    {
        //update cart totals
        UpdateTotals();
    }

    protected void ListView1_ItemDeleting(object sender, ListViewDeleteEventArgs e)
    {
        //get the id of the item to be deleted from the datakeys
        string itemId = e.Keys["ID"].ToString();

        //call the RemoveItem method of the cart
        //pull the cart out of the session if it exists
        Cart c = (Cart)Session["Cart"];

        //bind the ListBox to the list of Items in the Cart
        //if the cart exists
        if (c != null)
        {
            c.RemoveItem(itemId);

        }

        //put the cart back into the session
        Session["Cart"] = c;


        ListView1.DataBind();
    }

    protected void txtQty_TextChanged(object sender, EventArgs e)
    {
        //get a reference to the Qty Textbox
        TextBox txtQty = (TextBox)sender;

        //get a reference to the parent control (ListViewItem) of the textbox
        ListViewItem lvItem = (ListViewItem)txtQty.Parent;

        //get the Index of the item to be updated
        int index = lvItem.DataItemIndex;

        //use the Index to get the ItemID of the item to be updated
        string ItemID = ListView1.DataKeys[index].Value.ToString();

        //get the new Quantity 
        int newQuantity = Convert.ToInt32(txtQty.Text);

        Cart c = (Cart)Session["Cart"];

        if (c != null)
        {
            //call the UpdateQuantity method
            c.UpdateQuantity(ItemID, newQuantity);
            Session["Cart"] = c;
        }

        //Rebind the ListView
        ListView1.DataBind();


    }

    private void UpdateTotals()
    {
        Cart c = (Cart)Session["Cart"];

        if (c != null)
        {
            lblSubtotal.Text = String.Format("{0:c}", c.GetSubTotal());
            lblTotal.Text = String.Format("{0:c}", c.GetTotal());
        }
    }

    protected void Checkout_Click(object sender, EventArgs e)
    {
   

        Response.Redirect("Checkout.aspx");
    }


}