using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ODPP.Business;
using ODPP.Data;
using System.Data.Entity;
using System.Data.EntityModel;
using System.Data.EntityClient;
using ODPP.Client.obj;
using System.IO;

namespace ODPP.Client.Webs
{
    public partial class header : System.Web.UI.UserControl
    {
        public User user;

        
        protected void Page_Load(object sender, EventArgs e)
        {
            DirectoryInfo di = new DirectoryInfo(Server.MapPath("/images_upload/"));

            foreach (DirectoryInfo item in di.GetDirectories())
            {
                if (item.FullName.Contains("temp"))
                {
                    item.Delete(true);
                }
            }
            if (Session["user"] == null)
            {
                pnlUser.Visible = false;
                pnlVisitor.Visible = true;
                frmRegister.Visible = true;
                frmViewProfile.Visible = false;
            }
            else
            {
                pnlUser.Visible = true;
                pnlVisitor.Visible = false;
                frmRegister.Visible = false;
                frmViewProfile.Visible = true;

                if (!Page.IsPostBack)
                {
                    setData();
                }
                
            }
            fuAvatarEdit.Dispose();
        }
        private void setData() {
            if (Response.Cookies["UserName"].Value != null)
            {
                tblUser objUser = UserServices.User_GetByAccount(Response.Cookies["UserName"].Value, Response.Cookies["Password"].Value);
                Session["user"] = new User(objUser.UserID, objUser.FirstName, objUser.LastName, objUser.Email, objUser.DateOfBirth, objUser.Address, objUser.Phone, objUser.UserName, objUser.Password, objUser.Photo, objUser.Sex);
            }
            User user = (User)Session["user"];
            string base64String = Convert.ToBase64String(user.Photo, 0, user.Photo.Length);
            imgPhoto.ImageUrl = "data:image/png;base64," + base64String;
            txtAddress.Text = user.Address;
            txtBirthday.Text = user.Dob.ToShortDateString();
            txtEmail.Text = user.Email;
            txtfname.Text = user.FirstName;
            txtlname.Text = user.LastName;
            txtPhone.Text = user.Phone;
            rdoFemale.Checked = user.Sex;
        }
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            frmRegister.Visible = false;
            frmViewProfile.Visible = true;
            tblUser obj = new tblUser();
            obj.Address = txtRAddress.Text;
            obj.DateOfBirth = DateTime.Parse(txtRBirthday.Text);
            obj.Email = txtREmail.Text;
            obj.FirstName = txtRFirstname.Text;
            obj.LastName = txtRLastname.Text;
            obj.Password = txtPassword.Text;
            obj.UserName = txtuname.Text;
            obj.Phone = txtRphone.Text;
            if (UserServices.User_GetByEmail(txtREmail.Text) != null)
            {
                Response.Redirect("../webs/Information.aspx?p=regiser_failed_e", true);
            }
            if (UserServices.User_IsExistAccount(txtuname.Text))
            {
                Response.Redirect("../webs/Information.aspx?p=regiser_failed_u", true);
            }
            obj.Sex = rdoRFemale.Checked;
            HttpPostedFile post = Request.Files["Avatar"];
            System.IO.Stream fs = post.InputStream;
            System.IO.BinaryReader br = new System.IO.BinaryReader(fs);
            Byte[] bytes = br.ReadBytes((Int32)fs.Length);
            obj.Photo = bytes;
            string base64String = Convert.ToBase64String(bytes, 0, bytes.Length);
            imgPhoto.ImageUrl = "data:image/png;base64," + base64String;
            UserServices.User_Insert(obj);
            Response.Redirect("../webs/Information.aspx?p=register_success");
        }

     
        protected void btnViewProfile_Click(object sender, EventArgs e)
        {
            frmRegister.Visible = true;
            frmViewProfile.Visible = false;
            tblUser obj = new tblUser();
            User user = (User)Session["user"];
            obj.UserID = user.Id;
            obj.FirstName = txtfname.Text;
            obj.LastName = txtlname.Text;
            obj.Sex = rdoFemale.Checked;
            obj.DateOfBirth = DateTime.Parse(txtBirthday.Text);
            obj.Phone = txtPhone.Text;
            obj.Address = txtAddress.Text;
            obj.Email = txtEmail.Text;
            obj.Sex = rdoFemale.Checked;
            if (UserServices.User_GetByEmail(txtEmail.Text) != null)
            {
                Response.Redirect("../webs/Information.aspx?p=edit_failed", false);
            }
            if (fuAvatarEdit.FileName != null)
            {
                obj.Photo = fuAvatarEdit.FileBytes;
            }
            else
            {
                obj.Photo = user.Photo;
            }
            obj.UserName = "";
            obj.Password = "";
            UserServices.User_Update(obj);
            Session["user"] = new User(user.Id, obj.FirstName, obj.LastName, obj.Email, obj.DateOfBirth, obj.Address, obj.Phone, obj.UserName, obj.Password, obj.Photo, obj.Sex);
            Response.Redirect("../webs/Information.aspx?p=edit_profile_success", false);
            setData();
        }

 
    }
}