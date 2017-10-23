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

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["User"] = DropDownList1.SelectedItem.Text.ToString();
        Response.Redirect("About.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string connectionString = WebConfigurationManager.ConnectionStrings["UDIS"].ConnectionString;
        SqlConnection con = new SqlConnection(connectionString);
        string sql = "INSERT INTO Members(Username,Password,Member) VALUES('" +TextBox1.Text+"','"+TextBox2.Text+"','"+DropDownList1.SelectedItem.Text+"')";
        SqlCommand cmd = new SqlCommand(sql, con);
        //System.Diagnostics.Debug.WriteLine(con);
        int inserted = 0;
        using (con)
        {
            con.Open();
            inserted = cmd.ExecuteNonQuery();
            //System.Diagnostics.Debug.WriteLine("HELLO "+inserted);
        }
    }
}