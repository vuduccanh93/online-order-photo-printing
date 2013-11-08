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
        protected void chkSelectAll_CheckedChanged(object sender, EventArgs e)
        {
            CheckBox chkAll = (CheckBox)sender;
            foreach (DataGridItem r in this.grvPrices.Items)
            {
                CheckBox chk = (CheckBox)r.FindControl("chkSelect");
                chk.Checked = chkAll.Checked;
            }
        }
        void bindGrid()
        {
            grvPrices.DataSource = SizeServices.Size_GetByAll();

            grvPrices.DataBind();
            if (grvPrices.PageCount < 1)
            {
                grvPrices.Visible = true;
            }

        }
        protected void btnref_click(object sender, EventArgs e)
        {
            bindGrid();
        }
        protected void btnClear_Click() {
            txtPrice.Value = txtSize.Value = null;
        }
        protected void btndel_click(object sender, EventArgs e)
        {
            txtPrice.Value = txtSize.Value = null;
        }
    }
}