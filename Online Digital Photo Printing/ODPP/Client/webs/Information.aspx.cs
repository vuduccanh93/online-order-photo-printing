using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ODPP.Client.Webs
{
    public partial class _404 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            switch (Request.QueryString["p"])
            {
                case "regiser_failed_e":
                    pnlRegisterError.Visible = true;
                    lblInforTitle.Text = "Failed!!";
                    lblInforDetails.Text = "Email is existed!";
                    break;
                case "regiser_failed_u":
                    pnlRegisterError.Visible = true;
                    lblInforTitle.Text = "Failed!!";
                    lblInforDetails.Text = "Username is existed!";
                    break;
                case "edit_failed":
                    lblInforTitle.Text = "Failed!!";
                    pnlEditError.Visible = true;
                    break;
                case "notImg":
                    lblInforTitle.Text = "Failed!!";
                    pnlNotImg.Visible = true;
                    break;
                case "order_faled":
                    lblInforTitle.Text = "Failed!!";
                    pnlOrderFailed.Visible = true;
                    break;
                case "edit_success":
                    lblInforTitle.Text = "Success!!";
                    pnlChangePasswordSuccess.Visible = true;
                    break;
                case "register_success":
                    lblInforTitle.Text = "Success!!";
                    pnlRegisterSuccess.Visible = true;
                    break;
                case "order_success":
                    lblInforTitle.Text = "Success!!";
                    pnlOrderSuccess.Visible = true;
                    break;
                case "sending_contact":
                    lblInforTitle.Text = "Success!!";
                    pnlContact.Visible = true;
                    break;
                case "login_failed":
                    lblInforTitle.Text = "Faled!!";
                    pnlLoginFailed.Visible = true;
                    break;
                case "edit_profile_success":
                    lblInforTitle.Text = "Success!!";
                    pnlEditProfile.Visible = true;
                    break;
                case "recover_success":
                    lblInforTitle.Text = "Success!!";
                    pnlRecoverSuccees.Visible = true;
                    break;
            }
        }
    }
}