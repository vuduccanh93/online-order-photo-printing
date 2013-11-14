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
        protected void btnadd_click(object sender, EventArgs e)
        {
            pnlshow.Visible = false;
            pnlupdate.Visible = true;
        }
        protected void btnSave_click(object sender, EventArgs e)
        {

            tblAdmin admin = new tblAdmin();
            if (txtID.Value != null && txtID.Value.Trim().Length > 0)
            {
               
                admin = AdminServices.Admin_GetById(int.Parse(txtID.Value));
                admin.Address = txtAddress.Value;
                
                admin.DateOfBirth=DateTime.Parse(txtbirth.Value);
                admin.Email=txtEmail.Value;
                admin.LastName = txtLastName.Value;
                admin.Password = pass1.Value;
                admin.Phone = txtPhone.Value;
                admin.AdminRole = dlRole.SelectedValue;
                admin.FirstName = txtFirstName.Value;
                admin.UserName = txtUserName.Text;
                admin.Photo = fuAdminAvatar.FileBytes;
                
                admin.Sex = Boolean.Parse(txtsex.Value);
                AdminServices.Admin_Update(admin);
                alert.Visible = true;
                txtalert.Text = "Update data complete";
            }
            else
            {
                admin.Address = txtAddress.Value;
                admin.AdminRole = dlRole.SelectedValue;
                admin.DateOfBirth = DateTime.Parse(txtbirth.Value);
                admin.Email = txtEmail.Value;
                admin.FirstName = txtFirstName.Value;
                admin.UserName = txtUserName.Text;
                admin.AdminRole = dlRole.SelectedValue;
                admin.LastName = txtLastName.Value;
                admin.Password = pass1.Value;
                admin.Phone = txtPhone.Value;
          
                admin.Photo = fuAdminAvatar.FileBytes;
                admin.Sex = Boolean.Parse(txtsex.Value);
                List<tblAdmin> check = AdminServices.Admin_GetByAll();
                foreach (tblAdmin items in check)
                {
                    if (items.UserName.Equals(admin.UserName))
                    {
                        txterr.Text = "Your username have in data";
                        err.Visible = true;
                        alert.Visible = false;
                        return;
                    }
                }
                AdminServices.Admin_Insert(admin);
                alert.Visible = true;
                err.Visible = false;
               
                txtalert.Text = "Insert data complete";
            }
           
            txtAddress.Value = txtbirth.Value = txtID.Value =txtphoto.Text=txtLastName.Value=txtFirstName.Value=txtEmail.Value=pass1.Value=pass2.Value= null;
            pnlshow.Visible = true;
            pnlupdate.Visible = false;
            bindGrid();
            
        }
        protected void btndel_click(object sender, EventArgs e) {
            foreach (RepeaterItem item in rpAadmin.Items)
            {
                CheckBox ck = (CheckBox)item.FindControl("ChkSelect");
                if (ck.Checked)
                {
                    
                    ImageButton lbt = (ImageButton)item.FindControl("cmdDelete");

                    tblAdmin check = AdminServices.Admin_GetById(int.Parse(lbt.CommandArgument.ToString()));

                    if (!check.UserName.Equals((string)Session["user"]))
                    {
                        AdminServices.Admin_Delete(int.Parse(lbt.CommandArgument.ToString()));
                        alert.Visible = true;
                        txtalert.Text = "Delete complete";

                    }
                    
                   
                   
                }
            }
            
            bindGrid();
        }



        protected void btnClear_click(object sender, EventArgs e)
        {
            txtFirstName.Value = txtLastName.Value = pass1.Value =pass2.Value =pass1.Value = null;
        }
        
        protected void rpAadmin_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            tblAdmin admin = AdminServices.Admin_GetById(int.Parse(e.CommandArgument.ToString()));
            if (admin != null)
            {
                if (e.CommandName.Equals("Edit"))
                {
                    txtUserName.Enabled = false;
                    txtUserName.Text = admin.UserName;
                    pass1.Value = admin.Password;
                    txtID.Value = admin.AdminID.ToString();
                    txtFirstName.Value = admin.FirstName;
                    txtLastName.Value = admin.LastName;
                    txtPhone.Value = admin.Phone;
                    dlRole.SelectedValue = admin.AdminRole;
                    txtsex.Value = admin.Sex.ToString();
                    txtAddress.Value = admin.Address;
                    txtEmail.Value = admin.Email;
                    if (admin.Photo != null)
                    {
                        string base64String = Convert.ToBase64String(admin.Photo, 0, admin.Photo.Length);
                        imgAdminPhoto.ImageUrl = "data:image/png;base64," + base64String;
                    }
                    txtbirth.Value=admin.DateOfBirth.ToString();
                    pnlshow.Visible = false;
                    pnlupdate.Visible = true;
                   
                }
                if (e.CommandName.Equals("Delete"))
                {
                    List<tblAdmin> ad = AdminServices.Admin_GetByAll();
                    foreach (tblAdmin item in ad)
                    {
                        if (item.UserName.Equals((string)Session["user"]) )
                            return;
                    }
                        AdminServices.Admin_Delete(admin.AdminID);
                        alert.Visible = true;
                        txtalert.Text = "Delete complete";
                    
                }

            }
            bindGrid();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Write(Request.Files.Count);

        }
    }
}