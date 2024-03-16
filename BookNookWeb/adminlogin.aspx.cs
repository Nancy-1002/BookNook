using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace BookNookWeb
{
    public partial class adminlogin : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con1 = new SqlConnection(strcon);

                if (con1.State == ConnectionState.Closed)
                {
                    con1.Open();
                }


                SqlCommand cmd = new SqlCommand("select * from Admin where admin_username='" + TextBox1.Text.Trim() + "' and password='" + TextBox2.Text.Trim() + "';", con1);

                //reader is reading from the db itself
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Response.Write("<script>alert('" + dr.GetValue(0).ToString() + "');</script>");
                        Session["userid"] = dr.GetValue(0).ToString();
                        
                        Session["role"] = "admin";
                        
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
                Response.Write("\"<script>alert('"+ex.Message+"');</script>");
            }
        }
    }
}