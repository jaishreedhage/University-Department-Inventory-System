﻿using System;
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
                Button1.Visible = Button2.Visible = Button3.Visible = Button14.Visible = true;
            }
            else
            {
                edit = "Only administrator login is allowed here to edit details.";
                Button1.Visible = Button2.Visible = Button3.Visible = Button14.Visible = false;
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
        Panel5.Visible = Panel3.Visible = Panel2.Visible = Panel4.Visible = Panel6.Visible = Panel7.Visible = Panel8.Visible = false;
        Panel1.Visible = true;
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        Panel5.Visible = Panel1.Visible = Panel2.Visible = Panel4.Visible = Panel6.Visible = Panel7.Visible = Panel8.Visible = false;
        Panel3.Visible = true;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Button16.Visible = Button15.Visible = Button10.Visible = Button11.Visible = Button12.Visible = Button13.Visible = false;
        Button4.Visible = true;
        Button5.Visible = true;
        Panel2.Visible = Panel4.Visible = Panel3.Visible = Panel1.Visible = Panel5.Visible = Panel6.Visible = Panel8.Visible = false;
        Panel7.Visible = false;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Button16.Visible = Button15.Visible = Button4.Visible = Button5.Visible = Button12.Visible = Button13.Visible = false;
        Button10.Visible = true;
        Button11.Visible = true;
        Panel2.Visible = Panel4.Visible = Panel3.Visible = Panel1.Visible = Panel5.Visible = Panel6.Visible = Panel7.Visible = false;
        Panel8.Visible = false;
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Button16.Visible = Button15.Visible = Button4.Visible = Button5.Visible = Button10.Visible = Button11.Visible = false;
        Button12.Visible = true;
        Button13.Visible = true;
        Panel2.Visible = Panel4.Visible = Panel3.Visible = Panel1.Visible = Panel5.Visible = Panel6.Visible = Panel7.Visible = false;
        Panel8.Visible = false;
    }

    protected void Button10_Click(object sender, EventArgs e)
    {
        Panel6.Visible = Panel5.Visible = Panel4.Visible = Panel3.Visible = Panel1.Visible = Panel7.Visible = Panel8.Visible = false;
        Panel2.Visible = true;
    }

    protected void Button11_Click(object sender, EventArgs e)
    {
        Panel5.Visible = Panel2.Visible = Panel3.Visible = Panel1.Visible = Panel6.Visible = Panel7.Visible = Panel8.Visible = false;
        Panel4.Visible = true;
    }

    protected void Button12_Click(object sender, EventArgs e)
    {
        Panel5.Visible = Panel4.Visible = Panel2.Visible = Panel3.Visible = Panel1.Visible = Panel7.Visible = Panel8.Visible = false;
        Panel6.Visible = true;
    }

    protected void Button13_Click(object sender, EventArgs e)
    {
        Panel8.Visible = true;
        Panel5.Visible = Panel6.Visible = Panel4.Visible = Panel2.Visible = Panel3.Visible = Panel1.Visible = Panel7.Visible = false;
    }

    protected void Button14_Click(object sender, EventArgs e)
    {
        Button16.Visible = Button15.Visible = true;
        Button4.Visible = Button5.Visible = Button10.Visible = Button11.Visible = Button12.Visible = Button13.Visible = false;
        Panel2.Visible = Panel4.Visible = Panel3.Visible = Panel1.Visible = Panel5.Visible = Panel6.Visible = Panel7.Visible = false;
        Panel8.Visible = false;
    }

    protected void Button15_Click(object sender, EventArgs e)
    {
        Panel5.Visible = true;
        Panel4.Visible = Panel2.Visible = Panel3.Visible = Panel1.Visible = Panel6.Visible = Panel7.Visible = Panel8.Visible = false;
    }

    protected void Button16_Click(object sender, EventArgs e)
    {
        Panel7.Visible = true;
        Panel5.Visible = Panel4.Visible = Panel2.Visible = Panel3.Visible = Panel1.Visible = Panel6.Visible = Panel8.Visible = false;
    }

    protected void Button17_Click(object sender, EventArgs e)
    {
        int added = 0;
        Random random = new Random();
        int r_id = random.Next(999, 99999);
        using (SqlConnection con = new SqlConnection(connectionString))
        {
            string sql = "Insert into Grants (Department,Year,University_funds,Miscellaneous_funds) values ('" + TextBox14.Text + "','" + TextBox15.Text + "','" + TextBox16.Text + "','" + TextBox17.Text + "')";
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
        int added = 0;
        Random random = new Random();
        int r_id = random.Next(999, 99999);
        using (SqlConnection con = new SqlConnection(connectionString))
        {
            string sql = "Insert into Inventory (Equipment,Location,Quantity) values ('" + TextBox18.Text + "','" + TextBox19.Text + "','" + TextBox20.Text + "')";
            using (SqlCommand cmd = new SqlCommand(sql, con))
            {
                con.Open();
                //try
                //{
                    added = cmd.ExecuteNonQuery();
                //}
                //catch (Exception err)
                //{
                //    Label25.Text = "Inventory already exists!";
                //}
                //finally { }
            }
        }
        if (added != 0)
        {
            Label25.Text = "New inventory added";
        }
    }

    protected void Button21_Click(object sender, EventArgs e)
    {

    }

    protected void Button8_Click(object sender, EventArgs e)
    {  
        if (GridView1.Rows.Count == 0)
        {
            Label29.Text = "STUDENT DOESN'T EXIST!";
            Label29.Visible = true;
            Label27.Visible = false;
            DropDownList1.Visible = false;
            Button21.Visible = false;
        }
        else
        {
            Label27.Visible = true;
            DropDownList1.Visible = true;
            Button21.Visible = true;
            Label29.Visible = false;
        }
    }
}