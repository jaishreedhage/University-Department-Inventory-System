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
    protected string Student_details, reg_no, name, address, Dob, Year_join, Year_of_graduation, Dept;
    protected string connectionString = WebConfigurationManager.ConnectionStrings["UDIS"].ConnectionString;
    //protected static int id = 1976;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Session["User"] != null && Session["Member"].ToString() == "Student")
            {
                
                DataSet ds = new DataSet();
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    string sql = "Select * from Student where Reg_no=" + Session["User"];
                    using(SqlCommand cmd = new SqlCommand(sql, con))
                    {
                        con.Open();
                        using(SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                reg_no = reader["Reg_no"].ToString();
                                name = reader["Name"].ToString();
                                address = reader["Address"].ToString();
                                Dob = reader["DOB"].ToString();
                                Year_join = reader["Year_joined"].ToString();
                                Year_of_graduation = reader["Year_to_graduate"].ToString();
                                Dept = reader["Department"].ToString();
                            }

                        }
                    }
                    Table1.Visible = true;
                    Button1.Visible = true;
                    DropDownList1.Visible = true;
                    Label5.Visible = true;
                }
                
                Student_details = "STUDENT DETAILS";
                add_courses.Enabled = true;
            }    
            else{
                Student_details = "LOGIN TO VIEW DETAILS";
                add_courses.Enabled = false;
            }
            this.DataBind();
        }
    }

    protected void add_courses_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow row in GridView1.Rows)
        {
            System.Diagnostics.Debug.WriteLine("HELL YA");
            if (row.RowType == DataControlRowType.DataRow)
            {
                CheckBox chkRow = (row.Cells[4].FindControl("CheckBox1") as CheckBox);
                if (chkRow.Checked)
                {
                    string course_id = (row.Cells[2].FindControl("Label1") as Label).Text;
                    Random random = new Random();
                    int added = 0;
                    int id = random.Next(100, 5000);
                    using (SqlConnection con = new SqlConnection(connectionString))
                    {
                        string c_id = (row.Cells[2].FindControl("Label1") as Label).Text;
                        string sql = "Insert into Registered_courses (Id,Reg_no,CourseID,Status,Semester) values ('" + ++id + "','" + Session["User"] + "','" + c_id + "','Registered','7')";
                        using (SqlCommand cmd = new SqlCommand(sql, con))
                        {
                            con.Open();
                            added = cmd.ExecuteNonQuery();
                        }
                    }
                    
                    System.Diagnostics.Debug.WriteLine("Oh yaa Im selected " + chkRow + name +" "+added);
                }
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //need to add code for fetching courses registered and cgpa thing
        if (DropDownList1.SelectedIndex != 0)
        {
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string sql = "Select Registered_courses.CourseID, Course.CourseName, Registered_courses.Status, Registered_courses.Marks, Registered_courses.Grade from Registered_courses inner join Course on Registered_courses.CourseID = Course.CourseID where Reg_no = " + Session["User"] + "and Semester = " + DropDownList1.SelectedItem.Text;
                DataSet ds = new DataSet();
                using (SqlCommand cmd = new SqlCommand(sql, con))
                {
                    con.Open();
                    using (SqlDataAdapter adapter = new SqlDataAdapter(cmd))
                    {
                        adapter.Fill(ds, "Details");
                        GridView2.DataSource = ds.Tables["Details"];
                        GridView2.DataBind();
                    }
                }
                if (ds.Tables["Details"].Rows.Count == 0)
                {
                    Label6.Text = "Yet to process! Please check later.";
                    Label6.Visible = true;
                }
                else
                {
                    Label6.Visible = false;
                }
            }
        }      
    }
}