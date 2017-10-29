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
                try
                {
                    added = cmd.ExecuteNonQuery();
                }
                catch(Exception err)
                {
                    Label8.Text = "Student already exists!";
                }
                finally { }
            }
        }
        if (added != 0)
        {
            Label8.Text = "Student added";
        }
    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        int added = 0;
        Random random = new Random();
        int r_id = random.Next(999,99999);
        using (SqlConnection con = new SqlConnection(connectionString))
        {
            string sql = "Insert into Research (Id,Department,Faculty_name,Status,Details) values ('" + r_id + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox11.Text + "')";
            using (SqlCommand cmd = new SqlCommand(sql, con))
            {
                con.Open();
                try
                {
                    added = cmd.ExecuteNonQuery();
                }
                catch (Exception err)
                {
                    Label8.Text = "Research paper already exists!";
                }
                finally { }
            }
        }
        if (added != 0)
        {
            Label8.Text = "Research paper added";
        }
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Panel2.Visible = false;
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
        Panel1.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Button4.Visible = true;
        Button4.Text = "ADD STUDENT";
        Button5.Visible = true;
        Button5.Text = "SEARCH EXISITING STUDENT";
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Button4.Visible = true;
        Button4.Text = "ADD RESEARCH PAPER";
        Button5.Visible = true;
        Button5.Text = "SEARCH RESEARCH PAPER";
    }

    protected void Button3_Click(object sender, EventArgs e)
    {

    }
}