using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;



namespace project
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            using (SqlConnection connection = new SqlConnection("Server=localhost;Database=master;Trusted_Connection=True;"
))
            {
                String id = usernameTxt.Text;
                String password = passwordTxt.Text;

                String storedPassword = "";
                String getPasswordQuery = "SELECT password FROM dbo.[Table] WHERE Id = @Id;";
                using (SqlCommand command = new SqlCommand(getPasswordQuery, connection))
                {
                    command.Parameters.AddWithValue("@Id", id);
                    connection.Open();
                    SqlDataReader dr = command.ExecuteReader();
                    //get results of query into string
                    while (dr.Read())
                    {
                        //string value = query result
                        storedPassword = dr[0].ToString();
                    }
                    connection.Close();

                    if (storedPassword == password)
                    {
                        usernameTxt.Text = "login successful";

                    }
                    else {
                        usernameTxt.Text = "login unsuccessful";
                    }
                }

            }





        }

        protected void usernameTxt_TextChanged(object sender, EventArgs e)
        {

        }
    }


    }