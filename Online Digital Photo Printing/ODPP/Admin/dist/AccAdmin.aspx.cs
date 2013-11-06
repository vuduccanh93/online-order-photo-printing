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
namespace ODPP.Admin.dist.assets
{
    public partial class AccAdmin : System.Web.UI.Page
    {
        static string Lang = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                btnDel.Attributes.Add("onClick", "javascript:return confirm('Are your want to delete?');");
               
                //Lang = Session["Lang"].ToString();
                BindGrid();
                txtAdminID.Text = "0";
                //loadDropdownlist();
            }
        }
        private void resetdata()
        {
            txtAdminID.Text = "0";
            txtAdminRole.Text = "";
            txtEmail.Text = "";
            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtPassword.Text = "";
            txtPhone.Text = "";
            txtUserName.Text = "";
            


        }
        void BindGrid()
        {
            grvAccAdmin.DataSource = AdminServices.Admin_GetByAll();
            grvAccAdmin.DataBind();
            if (grvAccAdmin.PageCount <= 1)
            {
                grvAccAdmin.PagerStyle.Visible = false;
            }
        }
        protected void chkSelectAll_CheckedChanged(object sender, EventArgs e)
        {
            CheckBox chkAll = (CheckBox)sender;
            foreach (DataGridItem r in this.grvAccAdmin.Items)
            {
                CheckBox chk = (CheckBox)r.FindControl("chkSelect");
                chk.Checked = chkAll.Checked;
            }
        }
        protected void btnNew_click(object sender, EventArgs e)
        {
            pnlupdate.Visible = true;
            pnlshow.Visible = false;
        }
        protected void btnDel_click(object sender, EventArgs e)
        {

        }
        
        protected void btnRef_click(object sender, EventArgs e)
        {

        }
        protected void btnSave_click(object sender, EventArgs e)
        {
            pnlupdate.Visible = false;
            pnlshow.Visible = true;
        }
    }
}