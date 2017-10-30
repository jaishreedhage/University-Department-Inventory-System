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
        Panel5.Visible = false;
        Panel1.Visible = true;
        Panel3.Visible = false;
        Panel2.Visible = false;
        Panel4.Visible = false;
        Panel6.Visible = false;
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        Panel5.Visible = false;
        Panel3.Visible = true;
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel4.Visible = false;
        Panel6.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Button16.Visible = false;
        Button15.Visible = false;
        Button4.Visible = true;
        Button5.Visible = true;
        Button10.Visible = false;
        Button11.Visible = false;
        Button12.Visible = false;
        Button13.Visible = false;
        Panel2.Visible = false;
        Panel4.Visible = false;
        Panel3.Visible = false;
        Panel1.Visible = false;
        Panel5.Visible = false;
        Panel6.Visible = false;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Button16.Visible = false;
        Button15.Visible = false;
        Button4.Visible = false;
        Button5.Visible = false;
        Button10.Visible = true;
        Button11.Visible = true;
        Button12.Visible = false;
        Button13.Visible = false;
        Panel2.Visible = false;
        Panel4.Visible = false;
        Panel3.Visible = false;
        Panel1.Visible = false;
        Panel5.Visible = false;
        Panel6.Visible = false;
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Button16.Visible = false;
        Button15.Visible = false;
        Button4.Visible = false;
        Button5.Visible = false;
        Button10.Visible = false;
        Button11.Visible = false;
        Button12.Visible = true;
        Button13.Visible = true;
        Panel2.Visible = false;
        Panel4.Visible = false;
        Panel3.Visible = false;
        Panel1.Visible = false;
        Panel5.Visible = false;
        Panel6.Visible = false;
    }

    protected void Button10_Click(object sender, EventArgs e)
    {
        Panel6.Visible = false;
        Panel5.Visible = false;
        Panel2.Visible = true;
        Panel4.Visible = false;
        Panel3.Visible = false;
        Panel1.Visible = false;
    }

    protected void Button11_Click(object sender, EventArgs e)
    {
        Panel5.Visible = false;
        Panel4.Visible = true;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel1.Visible = false;
        Panel6.Visible = false;
    }

    protected void Button12_Click(object sender, EventArgs e)
    {
        Panel5.Visible = false;
        Panel6.Visible = true;
        Panel4.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel1.Visible = false;
    }

    protected void Button13_Click(object sender, EventArgs e)
    {

    }

    protected void Button14_Click(object sender, EventArgs e)
    {
        Button16.Visible = true;
        Button15.Visible = true;
        Button4.Visible = false;
        Button5.Visible = false;
        Button10.Visible = false;
        Button11.Visible = false;
        Button12.Visible = false;
        Button13.Visible = false;
        Panel2.Visible = false;
        Panel4.Visible = false;
        Panel3.Visible = false;
        Panel1.Visible = false;
        Panel5.Visible = false;
        Panel6.Visible = false;
    }

    protected void Button15_Click(object sender, EventArgs e)
    {
        Panel5.Visible = true;
        Panel4.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;
        Panel1.Visible = false;
        Panel6.Visible = false;
    }

    protected void Button16_Click(object sender, EventArgs e)
    {

    }

    protected void Button17_Click(object sender, EventArgs e)
    {
        int added = 0;
        Random random = new Random();
        int r_id = random.Next(999, 99999);
        using (SqlConnection con = new SqlConnection(connectionString))
        {
            string sql = "Insert into Dept_grants (Id,Department,Year,University_funds,Miscellaneous_funds) values ('" + r_id + "','" + TextBox14.Text + "','" + TextBox15.Text + "','" + TextBox16.Text + "','" + TextBox17.Text + "')";
            using (SqlCommand cmd = new SqlCommand(sql, con))
            {
                con.Open();
                try
                {
                    added = cmd.ExecuteNonQuery();
                }
                catch (Exception err)
                {
                    Label20.Text = "Grant for the department in this year already exists!";
                }
                finally { }
            }
        }
        if (added != 0)
        {
            Label20.Text = "Grant added";
        }
    }

    protected void Button18_Click(object sender, EventArgs e)
    {

    }
}