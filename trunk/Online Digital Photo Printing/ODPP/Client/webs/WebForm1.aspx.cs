using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ODPP.Data;
using ODPP.Business;

namespace ODPP.Client.webs
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void txtuname_TextChanged(object sender, EventArgs e)
        {
            if (UserServices.User_IsExistAccount(txtuname.Text))
            {
                lblErrorUserName.Text = "Username is existed!!";
            }
            else
            {
                lblErrorUserName.Text = "";
            }
        }
    }
}