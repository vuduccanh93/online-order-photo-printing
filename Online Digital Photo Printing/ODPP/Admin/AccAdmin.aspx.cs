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
                admin.AdminRole = dlRole.Value;
                admin.DateOfBirth=DateTime.Parse(txtbirth.Value);
                admin.Email=txtEmail.Value;
                admin.LastName = txtLastName.Value;
                admin.Password = pass1.Value;
                admin.Phone = txtPhone.Value;
                admin.AdminRole = dlRole.Value;
                admin.FirstName = txtFirstName.Value;
                admin.UserName = txtUserName.Value;
                admin.Photo = null;
                admin.Sex = Boolean.Parse(txtsex.Value);
                AdminServices.Admin_Update(admin);
            }
            else
            {
                admin.Address = txtAddress.Value;
                admin.AdminRole = dlRole.Value;
                admin.DateOfBirth = DateTime.Parse(txtbirth.Value);
                admin.Email = txtEmail.Value;
                admin.FirstName = txtFirstName.Value;
                admin.UserName = txtUserName.Value;
                admin.AdminRole = dlRole.Value;
                admin.LastName = txtLastName.Value;
                admin.Password = pass1.Value;
                admin.Phone = txtPhone.Value;
                HttpPostedFile post = Request.Files["photo"];
                System.IO.Stream fs = post.InputStream;
                System.IO.BinaryReader br = new System.IO.BinaryReader(fs);
                Byte[] bytes = br.ReadBytes((Int32)fs.Length);
                admin.Photo = bytes;
                admin.Sex = Boolean.Parse(txtsex.Value);

                AdminServices.Admin_Insert(admin);
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
                    AdminServices.Admin_Delete(int.Parse(lbt.CommandArgument.ToString()));
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
                    txtUserName.Value = admin.UserName;
                    pass1.Value = admin.Password;
                    txtID.Value = admin.AdminID.ToString();
                    txtFirstName.Value = admin.FirstName;
                    txtLastName.Value = admin.LastName;
                    txtPhone.Value = admin.Phone;
                    dlRole.Value = admin.AdminRole;
                    txtsex.Value = admin.Sex.ToString();
                    txtAddress.Value = admin.Address;
                    txtEmail.Value = admin.Email;
                    
                    txtbirth.Value=admin.DateOfBirth.ToString();
                    pnlshow.Visible = false;
                    pnlupdate.Visible = true;
                }
                if (e.CommandName.Equals("Delete"))
                {
                    AdminServices.Admin_Delete(admin.AdminID);
                }

            }
            bindGrid();
        }

    }
}