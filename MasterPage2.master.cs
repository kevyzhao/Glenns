using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    //keeps data from cart 
    protected void Page_PreRender(object sender, EventArgs e)
    {
        if (Session["Cart"] != null)
        {
            Cart c = (Cart)Session["Cart"];

            lblAmount.Text = String.Format("{0:c}", c.GetTotal());
            lblCount.Text = c.Items.Count.ToString();

            this.DataBind();

        }

    }

    protected void LoginStatus1_LoggingOut(object sender, LoginCancelEventArgs e)
    {
        //Get a reference to the OWIN authentication middleware that will handle user authentication
        var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;

        //Call the SignOut method to revoke the ClaimsIdentity
        authenticationManager.SignOut();
    }
}
