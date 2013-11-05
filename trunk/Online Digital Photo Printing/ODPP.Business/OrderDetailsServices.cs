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
            using (ODPPEntities ett = new ODPPEntities())
            {
                List<tblOrderDetail> lst = new List<tblOrderDetail>();
                lst = ett.tblOrderDetails.ToList();
                return lst;
            }
        }
        public static bool OrdderDetail_Insert(tblOrderDetail data)
        {
            using (ODPPEntities ett = new ODPPEntities())
            {
                ett.tblOrderDetails.AddObject(data);
                ett.SaveChanges();
            }
            return true;
        }

        public static bool OrderDetail_Update(tblOrderDetail data)
        {
            using (ODPPEntities ett = new ODPPEntities())
            {
                tblOrderDetail obj = ett.tblOrderDetails.FirstOrDefault(e => e.OrderID == data.OrderID);
                obj.SizeID = data.SizeID;
                obj.Quantity = data.Quantity;
                obj.ImageName = data.ImageName;
                obj.ImageRaw = data.ImageRaw;
                
                ett.SaveChanges();
            }
            return true;
        }

        public static bool OederDetail_Delete(int Id)
        {
            using (ODPPEntities ett = new ODPPEntities())
            {
                tblOrderDetail obj = ett.tblOrderDetails.FirstOrDefault(e => e.OrderID == Id);
                ett.tblOrderDetails.DeleteObject(obj);
                ett.SaveChanges();
            }
            return true;
        }
    }
}
