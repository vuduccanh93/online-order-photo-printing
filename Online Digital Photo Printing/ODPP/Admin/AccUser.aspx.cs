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
    public partial class AccUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                bindGrid();
            }
        }
       
        public string bindGrid()
        {

            rpUser.DataSource = UserServices.User_GetByAll();
            rpUser.DataBind();
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
            DataBind();
        }
       
        protected void btnSave_click()
        {

        }
        protected void btndel_click(object sender, EventArgs e)
        {

        }

        protected void btnClear_Click()
        {
            txtFirstName.Value = txtLastName.Value = txtPassword.Value = txtPassword2.Value = txtAddress.Value =txtPhone.Value=txtEmail.Value= null;
        }

       

       
    }
}