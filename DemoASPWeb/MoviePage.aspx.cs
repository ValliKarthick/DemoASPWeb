using System;
using System.Configuration;
using System.Data.SqlClient;

namespace DemoASPWeb
{
    public partial class MoviePage : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["MovieDetailsConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Add_Click(object sender, EventArgs e)
        {
            bool isValid = ValidateCustomerId(txt_MovieId.Text);
            SqlConnection sqlConnection = new SqlConnection(connectionString);
            string query = "INSERT INTO MovieDetail (MovieId,MovieName,Genre) VALUES(@movieID,@movieName,@genre)";

            SqlCommand sqlCommand = new SqlCommand(query, sqlConnection);
            sqlCommand.Parameters.AddWithValue("@movieID", txt_MovieId.Text);
            sqlCommand.Parameters.AddWithValue("@movieName", txt_MovieName.Text);
            sqlCommand.Parameters.AddWithValue("@genre", txt_MovieGenre.Text);

            try
            {
                sqlConnection.Open();
                sqlCommand.ExecuteNonQuery();
                lbl_Result.Text = "Records Inserted Successfully";
            }
            catch (SqlException sqlException)
            {
                lbl_Result.Text = "Error Generated. Details: " + sqlException.ToString();
            }
            finally
            {
                sqlCommand.Dispose();
                sqlConnection.Close();
                sqlConnection.Dispose();
            }
        }

        private bool ValidateCustomerId(string text)
        {
            throw new NotImplementedException();
        }
        protected void ddl_AdminAndCutomer_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddl_AdminAndCutomer.SelectedIndex == 0)
            {
                mv_AdminAndCustomer.ActiveViewIndex = 0;
            }
            else mv_AdminAndCustomer.ActiveViewIndex = 1;
            //    //mv_UNameAndPW.ActiveViewIndex = ddl_UNameAndPW.SelectedIndex == 0 ? 0 : 1;
        }

        protected void btn_CalculateBill_Click(object sender, EventArgs e)
        {
            //SELECT Unitsconsumed From tablename where id = @id, txt_SelectCustomerId.Text
        }
        protected void btn_UpdateBill_Click(object sender, EventArgs e)
        {
            //Update tablename set billamount = @billamount where id = @id, txt_SelectCustomerId.Text
        }
    }
}