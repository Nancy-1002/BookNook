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
    public partial class userinfo : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = strcon;
            try
            {
                SqlCommand cmd1 = new SqlCommand("Select * from Books;", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd1);
                DataTable dt = new DataTable();
                da.Fill(dt);

                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        //update button 
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con1 = new SqlConnection(strcon);

                if (con1.State == ConnectionState.Closed)
                {
                    con1.Open();
                }
                SqlCommand cmd = new SqlCommand("update Users set UserName=@UserName,DOB=@DOB,ContactNo=@ContactNo,EmailId=@EmailId,State=@State,City=@City,PinCode=@PinCode,Address=@Address,Password=@Password,AccountStatus=@AccountStatus ", con1);

                
                cmd.Parameters.AddWithValue("@UserName", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@DOB", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@ContactNo", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@EmailId", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@State", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@City", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@PinCode", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@Address", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@Password", TextBox10.Text.Trim());
                cmd.Parameters.AddWithValue("@AccountStatus", "Active");

                cmd.ExecuteNonQuery();
                con1.Close();

                Response.Write("<script>alert('Information Updated!!');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}