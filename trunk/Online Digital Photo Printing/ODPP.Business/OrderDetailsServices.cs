using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ODPP.Data;
using System.Data.Entity;

namespace ODPP.Business
{
   public class OrderDetailsServices
    {
        public static List<tblOrderDetail> OrderDetail_GetByAll()
        {
            using (ProjectIIIEntities ett = new ProjectIIIEntities())
            {
                List<tblOrderDetail> lst = new List<tblOrderDetail>();
                lst = ett.tblOrderDetails.ToList();
                return lst;
            }
        }
    }
}
