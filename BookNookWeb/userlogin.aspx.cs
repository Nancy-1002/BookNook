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
    public partial class WebForm2 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["role"] = "none";
        }

        //user login
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con1 = new SqlConnection(strcon);

                if (con1.State == ConnectionState.Closed)
                {
                    con1.Open();
                }


                SqlCommand cmd = new SqlCommand("select * from Users where UserId='" + TextBox1.Text.Trim() + "' and Password='" +TextBox2.Text.Trim() + "';", con1);

                //reader is reading from the db itself
                SqlDataReader dr = cmd.ExecuteReader();
                if(dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Response.Write("<script>alert('"+dr.GetValue(0).ToString()+"');</script>");
                        Session["userid"]= dr.GetValue(0).ToString();
                        Session["fullname"] = dr.GetValue(1).ToString();
                        Session["role"] = "user";
                        Session["status"] = dr.GetValue(10).ToString();
                    }
                    Response.Redirect("Home.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid Credentials');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("\"<script>alert('" + ex.Message + "');</script>");
            }

            //Response.Write("<script>alert('Sign up successful!! Go to login page to Login');</script>");
        }
    }
}