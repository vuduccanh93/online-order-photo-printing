﻿using System;
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
    public partial class Login : System.Web.UI.Page
    {  
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtPass.Value = txtUser.Value=txtEmail.Value = null;
                
            }
        }
        protected void btnlogin_click(object sender, EventArgs e)
        {
            tblAdmin obj = AdminServices.Admin_GetByAcc(txtUser.Value, txtPass.Value);
            if (obj != null)
            {

                Session["username"] = obj.UserName;
                Session["role"] = obj.AdminRole;
                Session["pwd"] = obj.Password;
                txterr.Text = "";
                Response.Redirect("index.aspx");

            }
            else {
                txterr.Text = " Your account or password is not valid";
                txtUser.Focus();
            }

        }

    }
}
