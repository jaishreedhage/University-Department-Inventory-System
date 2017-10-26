using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student : System.Web.UI.Page
{
    protected string Student_details;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] != null)
        {
            Student_details = "Hi, " + Session["User"] + " :-) ";
        }
        else
        {
            Student_details = "To view your details, please log in!";
        }
        this.DataBind();
    }

    protected void add_courses_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow row in GridView1.Rows)
        {
            System.Diagnostics.Debug.WriteLine("HELL YA");
            if (row.RowType == DataControlRowType.DataRow)
            {
                CheckBox chkRow = (row.Cells[0].FindControl("CheckBox1") as CheckBox);
                if (chkRow.Checked)
                {
                    string name = row.Cells[1].Text;
                    //string country = (row.Cells[2].FindControl("lblCountry") as Label).Text;
                    System.Diagnostics.Debug.WriteLine("Oh yaa Im selected " + chkRow);
                }
            }
        }
    }

}