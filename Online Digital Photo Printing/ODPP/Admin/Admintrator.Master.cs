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
    public partial class Admintrator : System.Web.UI.MasterPage
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
            datenow.Text = DateTime.Now.ToShortTimeString();
            if (!IsPostBack) {
                user.Text = (string)Session["username"];
                role.Text = (string)Session["role"];
                if (role.Text.ToString().Equals("AA"))
                {
                    //pnlAdmin.Visible = true;
                    //pnlManager.Visible = false;
                }
                else {
                    //pnlAdmin.Visible = false;
                    //pnlManager.Visible = true;
                }

                tblAdmin admin = AdminServices.Admin_GetByAcc((string)Session["username"], (string)Session["pwd"]);
                if (admin != null) {
                   
                    
                    if (admin.Photo != null) {
                        string base64String = Convert.ToBase64String(admin.Photo, 0, admin.Photo.Length);
                        avt_img.ImageUrl = "data:image/png;base64," + base64String;
                    }

                }
              
            }
        }

       
    }
}