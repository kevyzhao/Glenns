using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    //hides fields are then writes fields to database
    protected void submitbutton_Click(object sender, EventArgs e)
    {
        header.Visible = false;
        FirstName.Visible = false;
        LastName.Visible = false;
        Message.Visible = false;
        Email.Visible = false;
        PhoneNumber.Visible = false;
        submitbutton.Visible = false;

        fnamelabel.Visible = false;
        lnamelabel.Visible = false;
        messagelabel.Visible = false;
        emaillabel.Visible = false;
        phonelabel.Visible = false;

        InsertContact();

    }

    //takes fields from user and inserts them into contactus table.
    private void InsertContact()
    {
        string constring = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        string insertcommand = "INSERT INTO ContactUs (fname, lname, email, message, phone ) Values (@fname, @lname, @email, @message, @phone)";

        SqlConnection con = new SqlConnection(constring);

        SqlCommand cmd = new SqlCommand(insertcommand, con);

        SqlParameter param = cmd.CreateParameter();

        cmd.Parameters.AddWithValue("@fname", FirstName.Text);
        cmd.Parameters.AddWithValue("@lname", LastName.Text);
        cmd.Parameters.AddWithValue("@message", Message.Text);
        cmd.Parameters.AddWithValue("@email", Email.Text);
        cmd.Parameters.AddWithValue("@phone", PhoneNumber.Text);



        int rowsAffected = 0;
        try
        {
            con.Open();

            rowsAffected = cmd.ExecuteNonQuery();

        }
        catch (Exception err)
        {
            Label1.Text = err.ToString();
        }
        finally
        {
            con.Close();

        }

        if (rowsAffected>0)
        {
            confirmation.Text= "Thank you for contacting us. We will responds as quickly as possible. Have a great day!";
        }
        else
        {
            confirmation.Text = "An error has happened. Please Conact Webmaster.";
        }

    }
}