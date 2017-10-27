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
    protected string connectionString = WebConfigurationManager.ConnectionStrings["UDIS"].ConnectionString;

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
        string sql = "SELECT * FROM Members WHERE Username=@user and Password=@pswd and Member=@mem";
        using (SqlConnection con = new SqlConnection(connectionString))
        {
            using(SqlCommand cmd = new SqlCommand(sql, con))
            {
                cmd.Parameters.AddWithValue("@user", TextBox1.Text);
                cmd.Parameters.AddWithValue("@pswd", TextBox2.Text);
                cmd.Parameters.AddWithValue("@mem", DropDownList1.SelectedItem.Text);
                con.Open();
                using(SqlDataReader reader = cmd.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        Session["User"] = TextBox1.Text;
                        Session["Member"] = DropDownList1.SelectedItem.Text;
                        if (ViewState["PreviousPage"] != null)  //Check if the ViewState contains Previous page URL
                        {
                            Response.Redirect(ViewState["PreviousPage"].ToString());//Redirect to Previous page by retrieving the PreviousPage Url from ViewState.
                        }
                        else
                        {
                            Response.Redirect("About.aspx");
                        }
                    }
                    else
                    {
                        Label2.Text = "Wrong username / password";
                    }
                }
            }
        }
            
                
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text.Length!=0 && TextBox2.Text.Length!=0 && DropDownList1.SelectedIndex!=-1)
        {
            SqlConnection con = new SqlConnection(connectionString);
            string sql = "INSERT INTO Members(Username,Password,Member) VALUES('" + TextBox1.Text + "','" + TextBox2.Text + "','" + DropDownList1.SelectedItem.Text + "')";
            SqlCommand cmd = new SqlCommand(sql, con);
            int inserted = 0;
            using (con)
            {
                con.Open();
                try
                {
                    inserted = cmd.ExecuteNonQuery();
                }
                catch (Exception err)
                {
                    //User already exists
                    System.Diagnostics.Debug.WriteLine("Error in adding user : " + err);
                }
                finally
                {
                    System.Diagnostics.Debug.WriteLine("Entry added " + inserted);
                    if (inserted == 0)
                    {
                        Label2.Text = "Username already exists. Login instead.";
                    }
                    TextBox1.Text = TextBox2.Text = "";
                    DropDownList1.SelectedIndex = 0;
                }
            }
        }
        else
        {
            Label2.Text = "Enter all details.";
        }
        
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        Label2.Text = "";
    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {
        Label2.Text = "";
    }
}