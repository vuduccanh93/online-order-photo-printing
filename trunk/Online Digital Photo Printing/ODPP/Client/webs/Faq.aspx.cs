using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using ODPP.Data;
using ODPP.Business;

namespace ODPP.Client.Webs
{
    public partial class Faq : System.Web.UI.Page
    {
   
        protected void Page_Load(object sender, EventArgs e)
        {
            rptFAQ.DataSource = FAQServices.FAQ_GetByAll();
            rptFAQ.DataBind();
        }
    }
}