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
            Student_details = "Hi, "+Session["User"]+" :-) ";
        else
            Student_details = "To view your details, please log in!";

        if (!Page.IsPostBack)
        {
            string connectionString = WebConfigurationManager.ConnectionStrings["UDIS"].ConnectionString;
            System.Diagnostics.Debug.WriteLine("** " + connectionString + " ***");
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string sql = "SELECT * FROM Course";
                using (SqlCommand cmd = new SqlCommand(sql, con))
                {
                    System.Diagnostics.Debug.WriteLine(con);
                    con.Open();
                    System.Diagnostics.Debug.WriteLine("Method1");
                    using (SqlDataAdapter adapter = new SqlDataAdapter(cmd))
                    {
                        DataSet ds = new DataSet();
                        adapter.Fill(ds, "Course");
                        //GridView1.DataSource = ds;
                        //GridView2.DataSource = ds;
                        //this.DataBind();
                    }
                    cmd.CommandText = "SELECT * FROM Members";
                    using (SqlDataAdapter adapter = new SqlDataAdapter(cmd))
                    {
                        DataSet ds = new DataSet();
                        adapter.Fill(ds, "Course1");
                        GridView2.DataSource = ds.Tables["Course1"];
                        this.DataBind();
                    }
                    /*using (SqlDataReader adapter = cmd.ExecuteReader())
                    {
                        //DataSet ds = new DataSet();
                        //adapter.Fill(ds, "Course");
                        GridView2.DataSource = adapter;
                        this.DataBind();
                    }*/
                    
                }
                
            }

            /*using (SqlConnection con2 = new SqlConnection(connectionString))
            {
                string sql = "SELECT * FROM Course";
                using (SqlCommand cmd2 = new SqlCommand(sql, con2))
                {
                    System.Diagnostics.Debug.WriteLine(con2);
                    con2.Open();

                    using (SqlDataReader adapter = cmd2.ExecuteReader())
                    {
                        //DataSet ds = new DataSet();
                        //adapter.Fill(ds, "Course");
                        GridView1.DataSource = adapter;
                        GridView1.DataBind();
                    }


                }

            }*/
        }
    }
}