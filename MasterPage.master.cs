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
        if (!IsPostBack) //check if the webpage is loaded for the first time.
        {
            ViewState["PreviousPage"] = Request.UrlReferrer;//Saves the Previous page url in ViewState
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Student.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Inventory.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Research.aspx");
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("People.aspx");
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("About.aspx");
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("EditDetails.aspx");
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }

    protected void Button8_Click(object sender, EventArgs e)
    {
        Session["User"] = null;
        /*if (ViewState["PreviousPage"] != null)  //Check if the ViewState 
                                                //contains Previous page URL
        {
            Response.Redirect(ViewState["PreviousPage"].ToString());//Redirect to 
                                                                    //Previous page by retrieving the PreviousPage Url from ViewState.
        }
        else
        {
            Response.Redirect("About.aspx");
        }*/
    }
}
