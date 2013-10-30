using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace ODPP.Admin
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                
                    
                }
            }
        

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if ((txtpass.Text.Equals("1234")) && (txtUserName.Text.Equals("admin")))
            {
                Response.Redirect("webs/index.aspx");
            }
        }

        

        
    }
}