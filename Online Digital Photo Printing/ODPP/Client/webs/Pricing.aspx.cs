using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ODPP.Data;
using ODPP.Business;

namespace ODPP.Client.Webs
{
    public partial class Pricing : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            rptPrice.DataSource = SizeServices.Size_GetByAll();
            rptPrice.DataBind();
        }
    }
}