using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ODPP.Data;
using System.Data.Entity;

namespace ODPP.Business
{
    public class OrderServices
    {
        public static List<tblOrder> Order_GetByAll()
        {
            using (ProjectIIIEntities ett = new ProjectIIIEntities())
            {
                List<tblOrder> lst = new List<tblOrder>();
                lst = ett.tblOrders.ToList();
                return lst;
            }
        }

        public static tblOrder Order_GetById(int Id)
        {
            using (ProjectIIIEntities ett = new ProjectIIIEntities())
            {
                tblOrder obj = new tblOrder();
                obj = ett.tblOrders.FirstOrDefault(e => e.OrderID == Id);
                return obj;
            }
        }

        public static bool Ordder_Insert(tblOrder data)
        {
            using (ProjectIIIEntities ett = new ProjectIIIEntities())
            {
                ett.tblOrders.AddObject(data);
                ett.SaveChanges();
            }
            return true;
        }

        public static bool Order_Update(tblOrder data)
        {
            using (ProjectIIIEntities ett = new ProjectIIIEntities())
            {
                tblOrder obj = ett.tblOrders.FirstOrDefault(e => e.OrderID == data.OrderID);
                obj.OrderID = data.OrderID;
                ett.SaveChanges();
            }
            return true;
        }

        public static bool Oeder_Delete(int Id)
        {
            using (ProjectIIIEntities ett = new ProjectIIIEntities())
            {
                tblOrder obj = ett.tblOrders.FirstOrDefault(e => e.OrderID == Id);
                ett.tblOrders.DeleteObject(obj);
                ett.SaveChanges();
            }
            return true;
        }
    }
}
