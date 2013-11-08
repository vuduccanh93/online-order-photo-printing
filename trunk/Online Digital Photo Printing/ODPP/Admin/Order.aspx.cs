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
namespace ODPP.Admin
{
    public partial class Order : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                BindGrid();
            }
        }
        public string BindGrid() {
            //using (ODPPEntities ctx = new ODPPEntities())
            //{
            //    var q = from cg in ctx.tblOrders
            //            join us in ctx.tblUsers on cg.UserID equals us.UserID
            //            select new { cg.OrderID, us.FirstName, us.LastName, cg.DateOfOrder, cg.DateOfAssign,cg.TotalPrice,cg.Status };
            //    rpOrder.DataSource = q;
            //    rpOrder.DataBind();

               
            //}
            return "";
        }
        protected void btnref_click(object sender, EventArgs e)
        {
            BindGrid();
        }
        protected void btndel_click(object sender, EventArgs e)
        {

        }
    }
}