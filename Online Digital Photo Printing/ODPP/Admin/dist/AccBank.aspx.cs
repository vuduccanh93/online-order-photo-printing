using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ODPP.Admin.dist
{
    public partial class AccBank : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnNew_click(object sender, EventArgs e)
        {
            pnlupdate.Visible = true;
            pnlshow.Visible = false;
        }
        protected void btnDel_click(object sender, EventArgs e)
        {

        }

        protected void btnRef_click(object sender, EventArgs e)
        {

        }
        protected void btnSave_click(object sender, EventArgs e)
        {
            pnlupdate.Visible = false;
            pnlshow.Visible = true;
        }
    }
}