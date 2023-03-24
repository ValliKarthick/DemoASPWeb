using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoASPWeb
{
    public partial class Server_Control : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void NameButton_Click(object sender, EventArgs e)
        {

            if (!string.IsNullOrEmpty(txtUserName.Text))
            {
                MessageLabel.Text = "Welcome, " + Server.HtmlEncode(txtUserName.Text);
            }
        }
    }
}