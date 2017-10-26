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
    protected string Student_details, reg_no, name, address, Dob, Year_join, Year_of_graduation;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Session["User"] != null && Session["Member"].ToString() == "Student")
            {
                string connectionString = WebConfigurationManager.ConnectionStrings["UDIS"].ConnectionString;
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
                                Table1.Visible = true;
                                Button1.Visible = true;
                            }

                        }
                    }
                }
                
                Student_details = "STUDENT DETAILS";
            }    
            else{
                Student_details = "LOGIN TO VIEW DETAILS";
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

    protected void Button1_Click(object sender, EventArgs e)
    {
        //need to add code for fetching courses registered and cgpa thing
    }
}