using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;


public partial class Checkout : System.Web.UI.Page
{
    //Declare a UserManager,ApplicationUser and connection string variable that will be used on this page.
    IdentityEF.UserManager usermanager;
    IdentityEF.ApplicationUser user;
    string constring = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
   

    protected void Page_Load(object sender, EventArgs e)
    {
        //Set the UserManager variable declared above to a new instance of the IdentityEF.UserManager class
        usermanager = new IdentityEF.UserManager();

        //Call the FindByName method of the UserManager to set the ApplicationUser variable to the user that is currently logged in
        user = usermanager.FindByName(User.Identity.Name);
    }

    protected void Page_PreRender(object sender, EventArgs e)
    {

        //If the user is not null, set the values of the TextBoxes to the user's profile variables
        //This is done in Page_PreRender so as to happen after any updates that take place in the btnUpdateProfile_Click event handler method
        if (user != null)
        {
            billing_first_name.Text = user.fname;
            billing_last_name.Text = user.lname;
            billing_address_1.Text = user.street;
            billing_city.Text = user.city;
            billing_state.Text = user.state;
            billing_postcode.Text = user.zip;
            billing_country.SelectedValue = user.country;
            billing_email.Text = user.Email;
            billing_phone.Text = user.PhoneNumber;
            billing_country.SelectedValue = user.country;
            billing_phone.Text = user.phone;

            //get subtotal and total from cart to shop table
            Cart c = (Cart)Session["Cart"];
            
            if (c != null)
            {
                lblSubtotal.Text = String.Format("{0:c}", c.GetSubTotal());
                lblTotal.Text = String.Format("{0:c}", c.GetTotal());
            }
        }

    }

    protected void place_order_Click(object sender, EventArgs e)
    {
        //get the cart variables from the session
        Cart c = (Cart)Session["Cart"];
        decimal subtotal = 0;

        decimal total = 0;

        if (c != null)
        {
            subtotal = c.GetSubTotal();
            total = c.GetTotal();
        }



        //get the username
        string username = User.Identity.Name;

        //Create a DataTable that will store the Order Details
        DataTable items = new DataTable();

        //create the necessary columns in the DataTable
        items.Columns.Add("ProductID", typeof(int));
        items.Columns.Add("Quantity", typeof(int));
        items.Columns.Add("UnitPrice", typeof(decimal));

        //iterate through the items in the cart and add them to the table
        if (c != null)
        {
            foreach (CartItem i in c.Items)
            {
                items.Rows.Add(new object[] { i.ID, i.Quantity, i.Price });
            }
        }

        // write orders database into database with ado
        //define connection
        SqlConnection con = new SqlConnection(constring);

        //sql command
        SqlCommand cmd = new SqlCommand("InsertOrder", con);
        cmd.CommandType = System.Data.CommandType.StoredProcedure;



        cmd.Parameters.AddWithValue("@OrderDate", DateTime.Today);
        cmd.Parameters.AddWithValue("@UserName", username);
        cmd.Parameters.AddWithValue("@FirstName", billing_first_name.Text);
        cmd.Parameters.AddWithValue("@LastName", billing_last_name.Text);
        cmd.Parameters.AddWithValue("@Address", billing_address_1.Text);
        cmd.Parameters.AddWithValue("@City", billing_city.Text);
        cmd.Parameters.AddWithValue("@State", billing_state.Text);
        cmd.Parameters.AddWithValue("@PostalCode", billing_postcode.Text);
        cmd.Parameters.AddWithValue("@Country", billing_country.SelectedValue);
        cmd.Parameters.AddWithValue("@Phone", billing_phone.Text);
        cmd.Parameters.AddWithValue("@Email", billing_email.Text);
        cmd.Parameters.AddWithValue("@SubTotal", subtotal);
        cmd.Parameters.AddWithValue("@Total", total);
        cmd.Parameters.AddWithValue("@OrderNotes", order_comments.Text);
        cmd.Parameters.AddWithValue("@OrderDetails", items);

        //sql string to get orderid
        string getorderid = "SELECT TOP 1 OrderId FROM orders ORDER BY orderid desc";

        
        SqlCommand cmd2 = new SqlCommand(getorderid, con);
        SqlDataReader reader;
        string orderid="0";

        int rowsaffected = 0;
        try
        {
            con.Open();
            rowsaffected = cmd.ExecuteNonQuery();

            //get order id after order was place
            reader = cmd2.ExecuteReader();
            reader.Read();

            //store orderid
            orderid = reader["orderid"].ToString();
        }
        catch (Exception err)
        {
            lblMessage.Text = err.Message;
            //Handle exception
        }
        finally
        {
            con.Close();
        }

        
        if (rowsaffected > 0)
        {
            //clearing cart if there is items in the cart
            if (c.Items.Count > 0)
            {

                c.Items.Clear();
            }

        }

        //redirect to the confirmation.aspx with query string
        Response.Redirect("~/Confirmation.aspx?orderid="+orderid);
    }

    //copies user info into shipping fields
    protected void ship_checkbox_CheckedChanged(object sender, EventArgs e)
    {
        if (ship_checkbox.Checked)
        {
            shipfname.Text = billing_first_name.Text;
            shiplname.Text = billing_last_name.Text;
            shipaddy.Text = billing_address_1.Text;
            shipcity.Text = billing_city.Text;
            shipstate.Text = billing_state.Text;
            shipzip.Text = billing_postcode.Text;
            shippingdroplist.SelectedValue = billing_country.SelectedValue;
        }
    }


 

}