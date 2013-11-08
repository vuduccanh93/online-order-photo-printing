using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ODPP.Data;
using ODPP.Business;

namespace ODPP.Client.upload
{
    public partial class upload : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            rptPricing.DataSource = SizeServices.Size_GetByAll();
            rptPricing.DataBind();
        }
    }
}