using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            string connectionString = WebConfigurationManager.ConnectionStrings["UDIS"].ConnectionString;
            System.Diagnostics.Debug.WriteLine("** " + connectionString + " ***");
            SqlConnection con = new SqlConnection(connectionString);
            string sql = "SELECT * FROM Student";
            SqlCommand cmd = new SqlCommand(sql, con);
            System.Diagnostics.Debug.WriteLine(con);
            using (con)
            {
                con.Open();
                System.Diagnostics.Debug.WriteLine("Method1");
                GridView1.DataSource = cmd.ExecuteReader();
                this.DataBind();
                con.Close();
            }
        }
    }
}