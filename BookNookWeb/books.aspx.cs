using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookNookWeb
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //add a book
        protected void Button1_Click(object sender, EventArgs e)
        {
            addBook();
        }

        public void addBook()
        {
            try
            {
                SqlConnection con1 = new SqlConnection(strcon);

                if (con1.State == ConnectionState.Closed)
                {
                    con1.Open();
                }


                SqlCommand cmd = new SqlCommand("insert into Books(BookId,BookName,BookAuthor,Amount,Price) values(@BookId,@BookName,@BookAuthor,@Amount,@Price) ", con1);

                cmd.Parameters.AddWithValue("@BookId", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@BookName", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@BookAuthor", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@Amount", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@Price", TextBox5.Text.Trim());


                cmd.ExecuteNonQuery();
                con1.Close();

                Response.Write("<script>alert('Book Added Successfully!!');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}