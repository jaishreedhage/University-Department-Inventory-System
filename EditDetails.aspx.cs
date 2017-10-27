using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EditDetails : System.Web.UI.Page
{
    protected string edit;
    protected string connectionString = WebConfigurationManager.ConnectionStrings["UDIS"].ConnectionString;

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
            this.DataBind();
        }
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        int added = 0;
        using (SqlConnection con = new SqlConnection(connectionString))
        {
            string sql = "Insert into Student (Reg_no,Name,Address,Department,DOB,Year_joined,Year_to_graduate) values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox7.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "')";
            using (SqlCommand cmd = new SqlCommand(sql, con))
            {
                con.Open();
                added = cmd.ExecuteNonQuery();
            }
        }
    }
}