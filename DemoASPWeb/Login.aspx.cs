using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace DemoASPWeb
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Btn_Login_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["BankingConnectionString"].ConnectionString;
            SqlConnection sqlConnection = new SqlConnection(connectionString);
            string storedprocname = "CheckUserCredentials";
           
            SqlCommand sqlCommand = new SqlCommand(storedprocname, sqlConnection);
            sqlCommand.CommandType = CommandType.StoredProcedure;
            
            sqlCommand.Parameters.AddWithValue("@EmailId", txtUName.Text);
            sqlCommand.Parameters.AddWithValue("@Password", txtPassword.Text);
            try
            {
                sqlConnection.Open();
                SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();
                if (sqlDataReader.HasRows)
                {
                    //sqlDataReader.Read();
                    Response.Redirect("~/About.aspx");
                    //Response.Write("<script>alert('Login successful');</script>");
                    //lblConfirmationMessage.Text = "Login successful.";
                }
                else
                {
                    lblConfirmationMessage.Text = "Invalid username or password.";
                }
            }
            catch (SqlException sqlException)
            {
                lblConfirmationMessage.Text = sqlException.ToString();
            }
            finally
            {
                sqlCommand.Dispose();
                sqlConnection.Close();
                sqlConnection.Dispose();
            }
        }
    }
}