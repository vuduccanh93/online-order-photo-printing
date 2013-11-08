using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Entity;
using ODPP.Data;
using ODPP.Business;
namespace ODPP.Admin
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                bindGrid();
            }
        }
       
        public string bindGrid()
        {
            rpContact.DataSource = ContactService.Contact_GetByAll();

            rpContact.DataBind();
            return "";

        }
        protected void btnref_click(object sender, EventArgs e)
        {
            bindGrid();
        }
        protected void btnSave_click() { }
        protected void btnClear_click() { 
            
        }
        protected void btndel_click(object sender, EventArgs e)
        {

        }
    }
}