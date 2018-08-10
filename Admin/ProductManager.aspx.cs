using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class InventoryPage : System.Web.UI.Page
{

    
    protected void Page_Load(object sender, EventArgs e)
    {

    }




    protected void DropDownList1_PreRender(object sender, EventArgs e)
    {
        GridView1.DataBind();
    }

  
}