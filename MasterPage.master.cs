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
}
