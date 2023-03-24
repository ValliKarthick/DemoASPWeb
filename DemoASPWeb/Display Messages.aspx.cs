using System;

namespace DemoASPWeb
{
    public partial class Display_Messages : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //txtFName.Text = Request.QueryString["FName"];
            //txtLName.Text = Request.QueryString["LName"];
            txtUName.Text = Session["UserName"].ToString();
            //lblCookieMessage.Text = Request.Cookies["FName"].Value;
            //lblPCookieMessage.Text = Request.Cookies["Contact"].Value;
        }
        protected void Btn_Session_Click(object sender, EventArgs e)
        {
            Response.Redirect("Contact.aspx");
        }
    }
}