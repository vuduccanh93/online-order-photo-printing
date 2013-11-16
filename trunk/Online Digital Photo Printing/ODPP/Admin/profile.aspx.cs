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
    public partial class profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                tblAdmin admin = AdminServices.Admin_GetByAcc((string)Session["username"], (string)Session["pwd"]);
                if(admin!=null){
                    txtUserName.Enabled = false;
                    txtUserName.Text = admin.UserName;
                    pass1.Value = admin.Password;
                    txtID.Value = admin.AdminID.ToString();
                    txtFirstName.Value = admin.FirstName;
                    txtLastName.Value = admin.LastName;
                    txtPhone.Value = admin.Phone;
                    if (admin.Photo != null)
                    {
                        string base64String = Convert.ToBase64String(admin.Photo, 0, admin.Photo.Length);
                        imgAdminPhoto.ImageUrl = "data:image/png;base64," + base64String;
                    }
                    dlRole.Value = admin.AdminRole;
                    txtsex.Value = admin.Sex.ToString();
                    txtAddress.Value = admin.Address;
                    txtEmail.Value = admin.Email;
                    txtbirth.Value = admin.DateOfBirth.ToString();
                }
            }
            
        }
        protected void btnClear_click(object sender, EventArgs e)
        {
            txtFirstName.Value = txtLastName.Value = pass1.Value = pass2.Value = pass1.Value = null;
        }
        
        protected void btnSave_click(object sender, EventArgs e)
        {
             tblAdmin admin = new tblAdmin();
             admin = AdminServices.Admin_GetById(int.Parse(txtID.Value));
             admin.Address = txtAddress.Value;
             admin.AdminRole = dlRole.Value;
             admin.DateOfBirth = DateTime.Parse(txtbirth.Value);
             admin.Email = txtEmail.Value;
             admin.LastName = txtLastName.Value;
             admin.Password = pass1.Value;
             admin.Phone = txtPhone.Value;
             admin.AdminRole = dlRole.Value;
             admin.FirstName = txtFirstName.Value;
             admin.UserName = txtUserName.Text;
             admin.Photo = fuAdminAvatar.FileBytes;
             admin.Sex = Boolean.Parse(txtsex.Value);
             Session["pwd"] = pass1.Value;
             AdminServices.Admin_Update(admin);

             Response.Redirect("index.aspx");
             
    }
    }
}