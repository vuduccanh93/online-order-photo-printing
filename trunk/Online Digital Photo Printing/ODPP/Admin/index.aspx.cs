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
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                loaddata();
            }
        }
        void loaddata() {
            List<tblOrder> or = OrderServices.Order_GetByAll();
            double price = 0;
            foreach (tblOrder items in or)
            {
                
                    price+= items.TotalPrice;
            }
            
             
                totalsPri.Text=price+"";
                User.Text = UserServices.User_GetByAll().Count().ToString();
                Order.Text = OrderServices.Order_GetByAll().Count.ToString();
            
        }
    }
}