using System;
using System.Web;

namespace DemoASPWeb
{
    public partial class ClientSide_State_Management : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                if (ViewState["count"] != null)
                {
                    int ViewstateVal = Convert.ToInt32(ViewState["count"]) + 1;
                    lblViewStateMessage.Text = ViewstateVal.ToString();
                    ViewState["count"] = ViewstateVal.ToString();
                }
                else
                {
                    ViewState["count"] = "1";
                }
            }
            //ViewState["MyInfo"] = "Welcome From View State";            
            //ViewState.Add("MyInfo", "Welcome From View State");
            ViewState["LastName"] = txtLName.Text;
            HiddenField.Value = "Welcome From HiddenField";           
        }
        protected void BtnVS_Click(object sender, EventArgs e)
        {
            lblViewStateMessage.Text = ViewState["LastName"].ToString();
            //lblViewStateMessage.Text = ViewState["count"].ToString();
        }
        protected void BtnHF_Click(object sender, EventArgs e)
        {
            lblHiddenFieldMessage.Text = HiddenField.Value;
        }
        protected void BtnCookie_Click(object sender, EventArgs e)
        {
            Response.Cookies["FName"].Value = txtFName.Text;

            HttpCookie ContactCookie = new HttpCookie("Contact");
            ContactCookie.Value = txtContact.Text;
            Response.Cookies.Add(ContactCookie);

            Response.Cookies["Contact"].Expires = DateTime.Now.AddSeconds(10);

            //Response.Cookies["FName"].Value = txtFName.Text;
            //Response.Cookies["LName"].Value = txtLName.Text;

            //string FullName = Request.Cookies["FName"].Value;
            //FullName += Request.Cookies["LName"].Value;

            Response.Redirect("Display Messages.aspx");
            
            //lblCookieFullMessage.Text = FullName;
        }
        protected void Btn_QueryString_Click(object sender, EventArgs e)
        {
            Response.Redirect("Display Messages.aspx?FName=" + txtFName.Text + "&LName=" + txtLName.Text);
        }
    }
}