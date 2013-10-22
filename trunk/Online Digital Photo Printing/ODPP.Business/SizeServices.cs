using System;
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
            using (ProjectIIIEntities ett = new ProjectIIIEntities())
            {
                List<tblSize> lst = new List<tblSize>();
                lst = ett.tblSizes.ToList();
                return lst;
            }
        }

        public static tblSize Size_GetByType(int Type)
        {
            using (ProjectIIIEntities ett = new ProjectIIIEntities())
            {
                tblSize obj = new tblSize();
                obj = ett.tblSizes.FirstOrDefault(e => e.SizeType == Type);
                return obj;
            }
        }

        public static bool Size_Insert(tblSize data)
        {
            using (ProjectIIIEntities ett = new ProjectIIIEntities())
            {
                ett.tblSizes.AddObject(data);
                ett.SaveChanges();
            }
            return true;
        }

        public static bool Size_Update(tblSize data)
        {
            using (ProjectIIIEntities ett = new ProjectIIIEntities())
            {
                tblSize obj = ett.tblSizes.FirstOrDefault(e => e.SizeType == data.SizeType);
                obj.SizeType = data.SizeType;
                ett.SaveChanges();
            }
            return true;
        }

        public static bool Size_Delete(int Type)
        {
            using (ProjectIIIEntities ett = new ProjectIIIEntities())
            {
                tblSize obj = ett.tblSizes.FirstOrDefault(e => e.SizeType == Type);
                ett.tblSizes.DeleteObject(obj);
                ett.SaveChanges();
            }
            return true;
        }
    }
}
