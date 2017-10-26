using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EditDetails : System.Web.UI.Page
{
    protected string edit;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["User"] != null && Session["Member"].ToString() == "Administrator")
            {
                edit = "Welcome " + Session["User"] + ". Please update any changes!";
            }
            else
            {
                edit = "Only administrator login is allowed here to edit details.";
            }
        }
        this.DataBind();
    }
}