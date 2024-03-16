using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookNookWeb
{
    public partial class Site1 : System.Web.UI.MasterPage
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if(Session["role"].Equals("none")) //System.NullReferenceException: 'Object reference not set to an instance of an object.'
                {
                    LinkButton2.Visible = true; //Login LinkButton
                    LinkButton3.Visible = true; //SignUp LinkButton
                    LinkButton5.Visible = false; //Logout LinkButton
                    LinkButton7.Visible = false; //Hello User LinkButton
                    LinkButton4.Visible = false; //Users list
                    

                    LinkButton6.Visible = true; //Admin Login LinkButton
                }
                else if(Session["role"].Equals("user"))
                {
                    LinkButton2.Visible = false; //Login LinkButton
                    LinkButton3.Visible = false; //SignUp LinkButton
                    LinkButton5.Visible = true; //Logout LinkButton
                    LinkButton7.Visible = true; //Hello User LinkButton
                    LinkButton4.Visible = false; //Users list
                    LinkButton7.Text = "Heya " + Session["fullname"].ToString();
                    LinkButton6.Visible = true; //Admin Login LinkButton
                }
                else if (Session["role"].Equals("admin"))
                {
                    LinkButton2.Visible = false; //Login LinkButton
                    LinkButton3.Visible = false; //SignUp LinkButton
                    LinkButton5.Visible = true; //Logout LinkButton
                    LinkButton7.Visible = true; //Hello User LinkButton
                    LinkButton4.Visible = true; //Users list
                    LinkButton7.Text = "Heya Admin";

                    LinkButton6.Visible = false; //Admin Login LinkButton
                }
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        //admin login page
        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }

        //LogOut button
        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Session["userid"] = "";
            Session["fullname"] = "";
            Session["role"] = "none";
            Session["status"] = "";

            LinkButton2.Visible = true; //Login LinkButton
            LinkButton3.Visible = true; //SignUp LinkButton
            LinkButton5.Visible = false; //Logout LinkButton
            LinkButton7.Visible = false; //Hello User LinkButton



            LinkButton6.Visible = true; //Admin Login LinkButton
            Response.Redirect("Home.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("userslist.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("books.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("userinfo.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("signup.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }
    }
}