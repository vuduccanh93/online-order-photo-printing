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
        protected void btnadd_click(object sender, EventArgs e)
        {
            pnlshow.Visible = false;
            pnlupload.Visible = true;
        }
        public string order_details(int ID) {
            using (ODPPEntities ctx = new ODPPEntities())
            {
                var q = from 
                         us in ctx.tblOrderDetails where us.OrderID==ID
                        
                        select new {us.ImageRaw,us.ImageName,us.SizeID,us.Quantity };

                grvorderdetails.DataSource = q.ToList();
                grvorderdetails.DataBind();
            }
            return "";
        }
        protected void btnref_click(object sender, EventArgs e)
        {
            BindGrid();
        }
        protected void btndel_click(object sender, EventArgs e)
        {

        }
        protected void btnSave_click(object sender, EventArgs e)
        {

        }
        protected void btnClear_Click(object sender, EventArgs e)
        {

        }
        protected void deleteDirectory(string directoryName) {
            string directoryPath = Server.MapPath("images_upload")+"\\"+directoryName;
            Directory.Delete(directoryPath, true);

        }
        protected void rpOrder_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            tblOrder admin = OrderServices.Order_GetById(int.Parse(e.CommandArgument.ToString()));
            if (admin != null)
            {
                if (e.CommandName.Equals("Edit"))
                {
                    txtAddress.Value = admin.Address;
                    txtCreditNumber.Value = admin.CreditNumber;
                    txtDateOfAssign.Value = admin.DateOfAssign.ToString();
                    txtID.Value = admin.OrderID.ToString();
                    txtDateOfOrder.Value = admin.DateOfOrder.ToString();
                    txtDirectoryName.Value = admin.DirectoryName;
                    txtPhone.Value = admin.Phone;
                    txtPaytype.Value = admin.Paytype;
                    txtStatus.Value = admin.Status.ToString();
                    txtRequest.Value = admin.Request;
                    txtTotalPrice.Value = admin.TotalPrice.ToString();

                    order_details(admin.OrderID);
                    pnlshow.Visible = false;
                    pnlupload.Visible = true;
                   
                }
                if (e.CommandName.Equals("Delete"))
                {
                    //List<tblOrder> ad = OrderServices.Order_GetByAll();
                    //foreach (tblOrder item in ad)
                    //{
                    //    if (item.UserName == Session["user"])
                    //        return;
                    //}
                    ////OrderServices.Admin_Delete(admin.AdminID);
                    //alert.Visible = true;
                    //txtalert.Text = "Delete complete";

                }

            }
            BindGrid();
        }
    }
}