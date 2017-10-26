using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) //check if the webpage is loaded for the first time.
        {
            ViewState["PreviousPage"] = Request.UrlReferrer;//Saves the Previous page url in ViewState
        }
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["User"] = TextBox1.Text;
        if (ViewState["PreviousPage"] != null)  //Check if the ViewState 
                                                //contains Previous page URL
        {
            Response.Redirect(ViewState["PreviousPage"].ToString());//Redirect to 
                                                                    //Previous page by retrieving the PreviousPage Url from ViewState.
        }
        else
        {
            Response.Redirect("About.aspx");
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string connectionString = WebConfigurationManager.ConnectionStrings["UDIS"].ConnectionString;
        SqlConnection con = new SqlConnection(connectionString);
        string sql = "INSERT INTO Members(Username,Password,Member) VALUES('" +TextBox1.Text+"','"+TextBox2.Text+"','"+DropDownList1.SelectedItem.Text+"')";
        SqlCommand cmd = new SqlCommand(sql, con);
        int inserted = 0;
        using (con)
        {
            con.Open();
            try
            {
                inserted = cmd.ExecuteNonQuery();
            }
            catch(Exception err)
            {
                //User already exists
                System.Diagnostics.Debug.WriteLine("Error in adding user : " + err);
            }
            finally
            {
                System.Diagnostics.Debug.WriteLine("Entry added "+ inserted);
                TextBox1.Text = TextBox2.Text = "";
                DropDownList1.SelectedIndex = 0;
            }
        }
    }
}