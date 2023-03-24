using System;
using System.Web.UI;

namespace DemoASPWeb
{
    public partial class Event_Handlers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblmessage.Text += "Page load <br />";

            if (Page.IsPostBack)
            {
                lblmessage.Text += "Page post back <br/>";
            }
        }

        protected void Page_Init(object sender, EventArgs e)
        {
            lblmessage.Text += "Page initialization<br/>";
        }

        protected void Page_PreRender(object sender, EventArgs e)
        {
            lblmessage.Text += "Page prerender <br/>";
        }

        protected void btnclick_Click(object sender, EventArgs e)
        {
            lblmessage.Text += "Button click <br/>";
        }
    }
}