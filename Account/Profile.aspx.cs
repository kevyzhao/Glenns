using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;

public partial class Account_Profile : System.Web.UI.Page
{
    //Declare a UserManager and ApplicationUser variable that will be used on this page.

    IdentityEF.UserManager manager;
    IdentityEF.ApplicationUser user;


    //write code to hide label of order history 
    //if user role is admin hide label
    protected void Page_Load(object sender, EventArgs e)
    {
        //Set the UserManager variable declared above to a new instance of the IdentityEF.UserManager class
        manager = new IdentityEF.UserManager();

        //Call the FindByName method of the UserManager to set the ApplicationUser variable to the user that is currently logged in
        user = manager.FindByName(User.Identity.Name);

        
    }

    protected void btnUpdateProfile_Click(object sender, EventArgs e)
    {

        //If the user is not null, update the user's profile variables to the variables entered in the textboxes.
        //The BirthDate will need to be converted to a DateTime (be sure to check for nulls).
        //Be sure to also set the Email address, which is already included in the user's profile.
        //Report any error messages in the StatusMessage control on the page.

        //string phone { get; set; 
        //string street { get; set;
        //string city { get; set; }
        //string zip { get; set; }
        //string country { get; set
        //DateTime? memberdate{ get
        //int creditcard { get; set
        //DateTime? exdate { get; s
        //int CC_Code { get; set; }


        if (user != null)
        {

            user.fname = txtFirstName.Text;
            user.lname = txtLastName.Text;
            user.Email = txtEmail.Text;
            user.street = txtStreet.Text;
            user.city = txtCity.Text;
            user.state = txtState.Text;
            user.zip = txtZip.Text;
            user.country = country.SelectedValue;
            user.phone = txtphone.Text;

            IdentityResult result = manager.Update(user);

            if (result.Succeeded)
            {
                StatusMessage.Text = "Profile Updated";
            }
            else
            {
                StatusMessage.Text = result.Errors.FirstOrDefault();
            }
        }
        else
        {
            StatusMessage.Text = "Account Not Found.";
        }
                               
                               
    }

    protected void Page_PreRender(object sender, EventArgs e)
    {

        //If the user is not null, set the values of the TextBoxes to the user's profile variables
        //This is done in Page_PreRender so as to happen after any updates that take place in the btnUpdateProfile_Click event handler method
        if (user != null)
        {
            txtFirstName.Text = user.fname;
            txtLastName.Text = user.lname;
            txtEmail.Text = user.Email;
            txtStreet.Text = user.street;
            txtCity.Text = user.city;
            txtState.Text = user.state;
            txtZip.Text = user.zip;
            country.SelectedValue = user.country;

        }

    }
}