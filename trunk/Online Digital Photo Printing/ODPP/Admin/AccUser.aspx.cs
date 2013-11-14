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
            if (!IsPostBack)
            {
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

        protected void btnSave_click(object sender, EventArgs e)
        {
            tblUser us = new tblUser();
            if (txtID.Value != null && txtID.Value.Trim().Length > 0)
            {

                us = UserServices.User_GetById(int.Parse(txtID.Value));
                us.Address = txtAddress.Value;
                us.Email = txtEmail.Value;
                us.UserName = UserName.Text;
                us.Photo = fuUserAvatar.FileBytes;
                us.FirstName = txtFirstName.Value;
                us.LastName = txtLastName.Value;
                us.Password = txtPassword.Value;
                us.Phone = txtPhone.Value;
                us.Sex = Boolean.Parse(txtsex.Value);
                us.DateOfBirth = DateTime.Parse(txtBirth.Value);
                UserServices.User_Update(us);
                alert.Visible = true;
                txtalert.Text = "Update complete";
            }
            else
            {

                us.Address = txtAddress.Value;
                us.Email = txtEmail.Value;
                us.FirstName = txtFirstName.Value;
                us.LastName = txtLastName.Value;
                us.Password = txtPassword.Value;
                us.Phone = txtPhone.Value;
                us.Photo = null;
                us.UserName = UserName.Text;

                us.Sex = Boolean.Parse(txtsex.Value);
                us.DateOfBirth = DateTime.Parse(txtBirth.Value);
                List<tblUser> check = UserServices.User_GetByAll();
                foreach (tblUser items in check)
                {
                    if (items.UserName.Equals(us.UserName))
                    {
                        txterr.Text = "Your username have in data";
                        err.Visible = true;
                        alert.Visible = false;
                        return;
                    }
                }
                UserServices.User_Insert(us);
                alert.Visible = true;
                txtalert.Text = "Insert data suscess";
            }

            txtAddress.Value = photo.Value = txtEmail.Value = txtFirstName.Value = txtLastName.Value = txtPassword.Value = txtPhone.Value = txtsex.Value = txtBirth.Value = null;
            bindGrid();
            pnlShow.Visible = true;
            pnlUpdate.Visible = false;
            err.Visible = false;
        }
        protected void btndel_click(object sender, EventArgs e)
        {
            foreach (RepeaterItem item in rpUser.Items)
            {
                CheckBox ck = (CheckBox)item.FindControl("ChkSelect");
                if (ck.Checked)
                {
                    ImageButton lbt = (ImageButton)item.FindControl("cmdDelete");
                    List<tblOrder> or = OrderServices.Order_GetByAll();
                    foreach (tblOrder items in or)
                    {
                        if (items.UserID != int.Parse(lbt.CommandArgument.ToString()))
                        {
                            UserServices.User_Delete(int.Parse(lbt.CommandArgument.ToString()));
                            alert.Visible = true;
                            txtalert.Text = "Delete complete";
                        }
                    }
                   
                }
            }
            
            bindGrid();
        }
        protected void btnadd_click(object sender, EventArgs e)
        {
            pnlShow.Visible = false;
            pnlUpdate.Visible = true;
            UserName.Enabled = true;
        }
        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtFirstName.Value = txtLastName.Value = txtPassword.Value = txtPassword2.Value = txtAddress.Value = txtPhone.Value = txtEmail.Value = null;
        }



        protected void rpUser_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            tblUser us = UserServices.User_GetById(int.Parse(e.CommandArgument.ToString()));
            if (us != null)
            {
                if (e.CommandName.Equals("Edit"))
                {
                    txtID.Value = us.UserID.ToString();
                    txtAddress.Value = us.Address;
                    txtEmail.Value = us.Email;

                    //photo.Value = us.Photo.ToString();
                    txtFirstName.Value = us.FirstName;
                    txtLastName.Value = us.LastName;
                    txtPassword.Value = us.Password;
                    txtPhone.Value = us.Phone;
                    txtsex.Value = us.Sex.ToString();
                    UserName.Text = us.UserName;
                    if (us.Photo != null)
                    {
                        string base64String = Convert.ToBase64String(us.Photo, 0, us.Photo.Length);
                        imgPhoto.ImageUrl = "data:image/png;base64," + base64String;
                    }
                    //string base64String = Convert.ToBase64String(us.Photo, 0, us.Photo.Length);
                    //imgPhoto.ImageUrl = "data:image/png;base64," + base64String;
                    txtBirth.Value = us.DateOfBirth.ToString();
                    pnlShow.Visible = false;
                    pnlUpdate.Visible = true;
                    UserName.Enabled = false;
                    alert.Visible = false;
                }
                if (e.CommandName.Equals("Delete"))
                {
                    List<tblOrder> or = OrderServices.Order_GetByAll();
                    foreach (tblOrder item in or)
                    {
                        if (item.UserID == us.UserID)
                        {
                            return;
                            
                        }
                        if (txtID.Value != null && txtID.Value.Trim().Length>0)
                        UserServices.User_Delete(int.Parse(txtID.Value));
                        alert.Visible = true;
                        txtalert.Text = "Delete complete";
                    }
                    
                }

            }
            bindGrid();
        }




    }
}