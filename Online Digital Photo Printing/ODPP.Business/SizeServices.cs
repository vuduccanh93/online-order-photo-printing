﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ODPP.Data;
using System.Data.Entity;


namespace ODPP.Business
{
    public class SizeServices
    {
        public static List<tblSize> Size_GetByAll()
        {
            using (ODPPEntities ett = new ODPPEntities())
            {
                List<tblSize> lst = new List<tblSize>();
                lst = ett.tblSizes.ToList();
                return lst;
            }
        }

        public static tblSize Size_GetById(int Id)
        {
            using (ODPPEntities ett = new ODPPEntities())
            {
                tblSize obj = new tblSize();
                obj = ett.tblSizes.FirstOrDefault(e => e.SizeID == Id);
                return obj;
            }
        }

        public static bool Size_Insert(tblSize data)
        {
            using (ODPPEntities ett = new ODPPEntities())
            {
                ett.tblSizes.AddObject(data);
                ett.SaveChanges();
            }
            return true;
        }

        public static bool Size_Update(tblSize data)
        {
            using (ODPPEntities ett = new ODPPEntities())
            {
                tblSize obj = ett.tblSizes.FirstOrDefault(e => e.SizeID == data.SizeID);
                obj.SizeID = data.SizeID;
                obj.Size = data.Size;
                obj.Price = data.Price;
                ett.SaveChanges();
            }
            return true;
        }

        public static bool Size_Delete(int Id)
        {
            using (ODPPEntities ett = new ODPPEntities())
            {
                tblSize obj = ett.tblSizes.FirstOrDefault(e => e.SizeID == Id);
                ett.tblSizes.DeleteObject(obj);
                ett.SaveChanges();
            }
            return true;
        }
    }
}
