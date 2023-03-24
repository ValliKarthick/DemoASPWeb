using System;

namespace DemoASPWeb
{
    public partial class ServerSide_State_Management : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                this.Page.Title = Convert.ToString(this.Application["Title"]);
            }
        }

        protected void Btn_Session_Click(object sender, EventArgs e)
        {
            Session["UserName"] = txtUName.Text;
            Response.Redirect("Display Messages.aspx");
        }

        protected void Application_Start(object sender, EventArgs e)
        {
            this.Application["Title"] = "Welcome";
        }
    }
}