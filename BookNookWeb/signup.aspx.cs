using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookNookWeb
{

    public partial class signup : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;


        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        //sign up button click event
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkUserExist())
            {
                Response.Write("<script>alert('User Id already exists!! Please select a different id');</script>");
            }
            else
            {
                signUpUser();
            }
        }

        //user defined method to check if a userid already exists ot not
        bool checkUserExist()
        {
            try
            {
                SqlConnection con1 = new SqlConnection(strcon);

                if (con1.State == ConnectionState.Closed)
                {
                    con1.Open();
                }

                //the records given by cmd will be stored in dt
                //disconnected architecture (the connection is not kept connected while the reader reads)
                SqlCommand cmd = new SqlCommand("select * from Users where UserId ='" + TextBox8.Text.Trim() + "';", con1);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if(dt.Rows.Count >= 1) 
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }

        //signup user defined method
        void signUpUser()
        {
            try
            {
                SqlConnection con1 = new SqlConnection(strcon);

                if (con1.State == ConnectionState.Closed)
                {
                    con1.Open();
                }


                SqlCommand cmd = new SqlCommand("insert into Users(UserId,UserName,DOB,ContactNo,EmailId,State,City,PinCode,Address,Password,AccountStatus) values(@UserId,@UserName,@DOB,@ContactNo,@EmailId,@State,@City,@PinCode,@Address,@Password,@AccountStatus) ", con1);

                cmd.Parameters.AddWithValue("@UserId", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@UserName", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@DOB", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@ContactNo", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@EmailId", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@State", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@City", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@PinCode", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@Address", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@Password", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@AccountStatus", "Active");

                cmd.ExecuteNonQuery();
                con1.Close();

                Response.Write("<script>alert('Sign up successful!! Go to login page to Login');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}