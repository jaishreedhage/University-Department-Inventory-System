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
            if (Session["User"] != null)
            {
                Login_Signup.Text = "Hi, " + Session["User"];
                Login_Signup.Enabled = false;
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Button1.ForeColor = System.Drawing.Color.Pink;
        Button1.BackColor = System.Drawing.Color.White;
        Button1.Text = "wtf";
        System.Diagnostics.Debug.WriteLine(Button1.ForeColor.ToString() + " " + Button1.BackColor.ToString());
        Response.Redirect("Student.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Button2.Font.Strikeout = !Button2.Font.Underline;
        Response.Redirect("Inventory.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Button3.ForeColor = System.Drawing.Color.Red;
        Response.Redirect("Research.aspx");
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Button4.ForeColor = System.Drawing.Color.Red;
        Response.Redirect("People.aspx");
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        Button5.ForeColor = System.Drawing.Color.Red;
        Response.Redirect("About.aspx");
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        Button6.ForeColor = System.Drawing.Color.Red;
        Response.Redirect("EditDetails.aspx");
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }

    protected void Button8_Click(object sender, EventArgs e)
    {
        Session["User"] = null;
        Response.Redirect("About.aspx");
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
