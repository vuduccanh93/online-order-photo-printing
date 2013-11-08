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
    public partial class AccAdmin : System.Web.UI.Page
    {
        tblAdmin obj;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
              
                bindGrid();
            }
        }
    
        protected string bindGrid()
        {


            rpAadmin.DataSource = AdminServices.Admin_GetByAll();
            rpAadmin.DataBind();
            string result = "";
            //foreach (tblAdmin ad in lstadm)
            //{
            //    result += "<tr>" +
            //   "<td>" + ad.UserName + "</td>" +
            //     "<td>" + ad.AdminRole + "</td>" +
            //   "<td>" + ad.Phone + "</td>" +
            //      "<td>" + ad.Email + "</td>" +
            //      "<td>" + ad.FirstName + ad.LastName + "</td>" +
            //      "<td>" + "" + "</td>" +
            //    "</tr>";
            //}
            return "";



        }
        protected void btnref_click(object sender, EventArgs e)
        {

            bindGrid();
        

        }
        protected void btnSave_click()
        {

        }
        protected void btndel_click(object sender, EventArgs e) { 
        
        }

        protected void btnClear_Click()
        {
            txtFirstName.Value = txtLastName.Value = pass1.Value =pass2.Value =pass1.Value = null;
        }

    }
}