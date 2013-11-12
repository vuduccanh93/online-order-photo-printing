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
    public partial class PhotoPrices : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                bindGrid();

            }
        }
       
        public string bindGrid()
        {
            rpPhotoPrice.DataSource = SizeServices.Size_GetByAll();

            rpPhotoPrice.DataBind();
            return "";

        }
        protected void btnadd_click(object sender, EventArgs e)
        {
            pnlshow.Visible = false;
            pnlupdate.Visible = true;
        }
        protected void btnSave_click(object sender, EventArgs e) {
            tblSize size = new tblSize();
            if (txtID.Value != null && txtID.Value.Trim().Length > 0)
            {
                size = SizeServices.Size_GetById(int.Parse(txtID.Value));
                size.Price = Int64.Parse(txtPrice.Value);
                size.Size = txtSize.Value;
                
                SizeServices.Size_Update(size);
                alert.Visible = true;
                txtalert.Text = "Update data complete!";
            }
            else
            {
                size.Price = Int64.Parse(txtPrice.Value);
                size.Size = txtSize.Value;
                SizeServices.Size_Insert(size);
                alert.Visible = true;
                txtalert.Text = "Insert data complete!";
            }
            txtPrice.Value = txtSize.Value = txtID.Value = null;
            pnlshow.Visible = true;
            pnlupdate.Visible = false;
            bindGrid();
        }
        protected void btnref_click(object sender, EventArgs e)
        {
            bindGrid();
        }
        protected void btnClear_click(object sender, EventArgs e)
        {
            txtPrice.Value = txtSize.Value = null;
        }
        protected void btndel_click(object sender, EventArgs e)
        {
           
            foreach (RepeaterItem item in rpPhotoPrice.Items)
            {
                CheckBox ck = (CheckBox)item.FindControl("ChkSelect");
                if (ck.Checked)
                {
                    ImageButton lbt = (ImageButton)item.FindControl("cmdDelete");
                    tblSize size = SizeServices.Size_GetById(int.Parse(lbt.CommandArgument.ToString()));
                    List<tblOrderDetail> or = OrderDetailsServices.OrderDetail_GetByAll();
                    foreach (tblOrderDetail items in or)
                    {
                        if (items.SizeID != size.SizeID)
                        {
                            SizeServices.Size_Delete(int.Parse(lbt.CommandArgument.ToString()));
                            alert.Visible = true;
                            txtalert.Text = "Delete susscess!";
                        }
                    }
                   
                }
            }
            bindGrid();
        }

        protected void rpPhotoPrice_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            tblSize size = SizeServices.Size_GetById(int.Parse(e.CommandArgument.ToString()));
            if (size != null)
            {
                if (e.CommandName.Equals("Edit"))
                {
                   
                    txtID.Value = size.SizeID.ToString();
                    txtPrice.Value = size.Price.ToString();
                    txtSize.Value = size.Size;
                    pnlshow.Visible = false;
                    pnlupdate.Visible = true;
                }
                if (e.CommandName.Equals("Delete"))
                {
                    List<tblOrderDetail> or = OrderDetailsServices.OrderDetail_GetByAll();
                    foreach (tblOrderDetail item in or)
                    {
                        if (item.SizeID == size.SizeID)
                            return;
                    }
                   
                    SizeServices.Size_Delete(size.SizeID);
                    alert.Visible = true;
                    txtalert.Text = "Delete susscess!";
                }

            }
            bindGrid();
        }

        
    }
}