using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoASPWeb
{
    public partial class Multiview : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ddl_UNameAndPW_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddl_UNameAndPW.SelectedIndex == 0)
            {
                mv_UNameAndPW.ActiveViewIndex = 0;
            }
            else mv_UNameAndPW.ActiveViewIndex = 1;
            mv_UNameAndPW.ActiveViewIndex = ddl_UNameAndPW.SelectedIndex == 0 ? 0 : 1;
        }
    }
}