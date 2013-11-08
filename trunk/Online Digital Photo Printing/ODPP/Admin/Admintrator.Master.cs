using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ODPP.Admin
{
    public partial class Admintrator : System.Web.UI.MasterPage
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["UserName"]="";
            datenow.Text = DateTime.Now.ToShortTimeString();
            if (!IsPostBack) {
                
            }
        }
        
    }
}