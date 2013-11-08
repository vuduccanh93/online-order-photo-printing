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
    public partial class FAQs : System.Web.UI.Page
    {
        tblFAQ obj;
        protected void Page_Load(object sender, EventArgs e)
        {
            bindGrid();
        }
        
        protected void btnref_click(object sender, EventArgs e)
        {
            bindGrid();
        }
        public string bindGrid()
        {
            rpFAQs.DataSource = FAQServices.FAQ_GetByAll();

            rpFAQs.DataBind();
            return "";

        }
        protected void btnSave_click() {
           
        }
        protected void btnClear_Click() {
            txtAnswer.Value = txtQuestion.Value = null;
        }
        protected void btndel_click(object sender, EventArgs e)
        {

        }
    }
}