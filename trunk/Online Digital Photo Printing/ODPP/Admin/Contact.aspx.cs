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
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                bindGrid();
            }
        }
       
        public string bindGrid()
        {
            rpContact.DataSource = ContactService.Contact_GetByAll();

            rpContact.DataBind();
            return "";

        }
        protected void btnadd_click(object sender, EventArgs e)
        {
            pnlshow.Visible = false;
            pnlupdate.Visible = true;
        }
        protected void btnref_click(object sender, EventArgs e)
        {
            bindGrid();
        }
        protected void btnSave_click(object sender, EventArgs e)
        {

            tblContact CT = new tblContact();

            if (txtID.Value != null && txtID.Value.Trim().Length > 0)
            {
                ContactService.Contact_GetById(int.Parse(txtID.Value));
                CT.Email = txtemail.Value;
                CT.Name = txtName.Value;
                CT.Phone = txtPhone.Value;
                CT.Message = txtMessage.Value;
                ContactService.Contact_Update(CT);
            }
            else {
                CT.Email = txtemail.Value;
                CT.Name = txtName.Value;
                CT.Phone = txtPhone.Value;
                CT.Message = txtMessage.Value;
                ContactService.Contact_Insert(CT);                
            }
            txtMessage.Value = txtName.Value = txtPhone.Value = txtemail.Value = null;
            pnlshow.Visible = true;
            pnlupdate.Visible = false;
            bindGrid();
           
           
        }
        protected void btnClear_click(object sender, EventArgs e) {
            txtemail.Value = txtName.Value = txtPhone.Value = txtMessage.Value = null;
        }
        protected void btndel_click(object sender, EventArgs e)
        {
            foreach (RepeaterItem item in rpContact.Items)
            {
                CheckBox ck = (CheckBox)item.FindControl("ChkSelect");
                if (ck.Checked)
                {
                    ImageButton lbt = (ImageButton)item.FindControl("cmdDelete");
                    ContactService.Contact_Delete(int.Parse(lbt.CommandArgument.ToString()));
                }
            }
            bindGrid();
        }

        protected void rpContact_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            tblContact CT = ContactService.Contact_GetById(int.Parse(e.CommandArgument.ToString()));
            if (CT != null)
            {
                if (e.CommandName.Equals("Edit"))
                {
                    txtID.Value = CT.ContactID.ToString();
                    txtemail.Value = CT.Email;
                    txtMessage.Value = CT.Message;
                    txtName.Value = CT.Name;
                    txtPhone.Value = CT.Phone;
                    pnlshow.Visible = false;
                    pnlupdate.Visible = true;
                }
                if (e.CommandName.Equals("Delete"))
                {
                    ContactService.Contact_Delete(CT.ContactID);
                }

            }
            bindGrid();
        }
    }
}