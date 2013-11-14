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
using System.IO;
namespace ODPP.Admin
{
    public partial class Order : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
            }
        }
        public string BindGrid()
        {
            using (ODPPEntities ctx = new ODPPEntities())
            {
                var q = from cg in ctx.tblOrders
                        join us in ctx.tblUsers on cg.UserID equals us.UserID
                        where cg.DateOfAssign != null
                        select new { cg.OrderID, us.FirstName, us.LastName, cg.DateOfOrder, cg.TotalPrice, cg.Status };
               
                rpOrder.DataSource = q.ToList();
                rpOrder.DataBind();
            }
            return "";
        }
        protected void btnUpdate_click(object sender, EventArgs e)
        {
            foreach (RepeaterItem item in rpOrder.Items)
            {
                CheckBox ck = (CheckBox)item.FindControl("ChkSelect");
                if (ck.Checked)
                {

                    ImageButton lbt = (ImageButton)item.FindControl("cmdEdit");

                    tblOrder or = OrderServices.Order_GetById(int.Parse(lbt.CommandArgument.ToString()));
                    if (or.Status== false) {
                        or.Status = true;
                        OrderServices.Order_Update(or);
                        alert.Visible = true;
                        txtalert.Text = "Assigned complete";
                    }
                }
            }
            BindGrid();
        }
        public void order_details(int ID) {
            using (ODPPEntities ctx = new ODPPEntities())
            {
                
                rpDetail.DataSource = ctx.tblOrderDetails.Where(c=>c.OrderID==ID).ToList();
                rpDetail.DataBind();
            }
        }
        protected void btnref_click(object sender, EventArgs e)
        {
            BindGrid();
        }
        
        
        
        protected void deleteDirectory(string directoryName) {
            string directoryPath = Server.MapPath("images_upload")+"\\"+directoryName;
            Directory.Delete(directoryPath, true);

        }
        protected void rpOrder_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            tblOrder or = OrderServices.Order_GetById(int.Parse(e.CommandArgument.ToString()));
            if (or != null)
            {
                if (e.CommandName.Equals("View"))
                {
                    txtAddress.Text = or.Address;
                    txtCreditNumber.Text = or.CreditNumber;
                    txtDateOfAssign.Text = or.DateOfAssign.ToString();
                    txtID.Value = or.OrderID.ToString();
                    txtDateOfOrder.Text = or.DateOfOrder.ToString();
                    txtDirectoryName.Text = or.DirectoryName;
                    txtPhone.Text = or.Phone;
                    txtPaytype.Text = or.Paytype;
                    if (or.Status == false)
                    {
                        txtStatus.Text = "Not Assigned";
                    }
                    else
                    {
                        txtStatus.Text = " Assigned";
                    }
                    txtRequest.Text = or.Request;
                    txtTotalPrice.Text = or.TotalPrice.ToString();

                    using (ODPPEntities ctx = new ODPPEntities())
                    {
                        var q = from
                                     us in ctx.tblUsers
                                where us.UserID == or.UserID

                                select new { us.UserName };
                        q.ToList();
                        
                    }
                    txtUserName.Text = or.UserID.ToString();
                    order_details(or.OrderID);
                    pnlshow.Visible = false;
                    pnlupload.Visible = true;
                   
                }
                if (e.CommandName.Equals("Assigned"))
                {
                    
                    if (or.Status == false)
                    {
                        or.Status = true;
                        OrderServices.Order_Update(or);
                        alert.Visible = true;
                        txtalert.Text = "Assigned complete";
                    }

                }

            }
            BindGrid();
        }
        protected string getSize(string id)
        {
            if (id != null && id.Trim().Length > 0)
            {
                return SizeServices.Size_GetById(int.Parse(id)).Size;
            }
            return "";
        }
    }
}