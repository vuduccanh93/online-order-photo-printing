using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Entity;
using ODPP.Business;
using ODPP.Data;
namespace ODPP.Admin
{
    public partial class AccBank : System.Web.UI.Page
    {
        tblAccountBank obj;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                BindGrid();
            }
        }

        public string BindGrid()
        {
            rpAccBank.DataSource = AccountBankServices.AccountBank_GetByAll();
            rpAccBank.DataBind();
            string result = "";
            return "";
        }
        protected void btnref_click(object sender, EventArgs e)
        {
            BindGrid();
        }
       

    }
}