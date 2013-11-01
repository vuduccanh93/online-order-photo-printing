﻿using System;
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
            using (ProjectIIIEntities2 ett = new ProjectIIIEntities2())
            {
                List<tblOrder> lst = new List<tblOrder>();
                lst = ett.tblOrders.ToList();
                return lst;
            }
        }

        public static tblOrder Order_GetById(int Id)
        {
            using (ProjectIIIEntities2 ett = new ProjectIIIEntities2())
            {
                tblOrder obj = new tblOrder();
                obj = ett.tblOrders.FirstOrDefault(e => e.OrderID == Id);
                return obj;
            }
        }

        public static bool Ordder_Insert(tblOrder data)
        {
            using (ProjectIIIEntities2 ett = new ProjectIIIEntities2())
            {
                ett.tblOrders.AddObject(data);
                ett.SaveChanges();
            }
            return true;
        }

        public static bool Order_Update(tblOrder data)
        {
            using (ProjectIIIEntities2 ett = new ProjectIIIEntities2())
            {
                tblOrder obj = ett.tblOrders.FirstOrDefault(e => e.OrderID == data.OrderID);
                obj.UserID = data.UserID;
                obj.DateOfOrder = data.DateOfOrder;
                obj.DateOfAssign = data.DateOfAssign;
                obj.TotalPrice = data.TotalPrice;
                obj.Status = data.Status;
                obj.DirectoryName = data.DirectoryName;
                obj.Paytype = data.Paytype;
                obj.CreditCard = data.CreditCard;
                obj.Receiver = data.Receiver;
                obj.Phone = data.Phone;

                ett.SaveChanges();
            }
            return true;
        }

        public static bool Oeder_Delete(int Id)
        {
            using (ProjectIIIEntities2 ett = new ProjectIIIEntities2())
            {
                tblOrder obj = ett.tblOrders.FirstOrDefault(e => e.OrderID == Id);
                ett.tblOrders.DeleteObject(obj);
                ett.SaveChanges();
            }
            return true;
        }
    }
}
