using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KatalytiPMA
{
    public partial class ClosedTask : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Inserting(object sender, SqlDataSourceCommandEventArgs e)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                using (SqlCommand command = new SqlCommand("SELECT * FROM Task WHERE  status = @status", connection))
                {
                    command.Parameters.Add("@status", completed);
                    SqlDataReader myReader = command.ExecuteReader();
                   
                }
            }

        }

        public string connectionString { get; set; }

        public System.Data.SqlDbType depart { get; set; }

        public System.Data.SqlDbType destination { get; set; }

        public System.Data.SqlDbType completed { get; set; }
    }
}