using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ODPP.Data;
using System.Data.Entity;

namespace ODPP.Business
{
   public class AdminServices
    {
        public static List<tblAdmin> Admin_GetByAll()
        {
            using (ProjectIIIEntities ett = new ProjectIIIEntities())
            {
                List<tblAdmin> lst = new List<tblAdmin>();
                lst = ett.tblAdmins.ToList();
                return lst;
            }
        }

        public static tblAdmin Admin_GetById(int Id)
        {
            using (ProjectIIIEntities ett = new ProjectIIIEntities())
            {
                tblAdmin obj = new tblAdmin();
                obj = ett.tblAdmins.FirstOrDefault(e => e.AdminID == Id);
                return obj;
            }
        }

        public static bool Admin_Insert(tblAdmin data)
        {
            using (ProjectIIIEntities ett = new ProjectIIIEntities())
            {
                ett.tblAdmins.AddObject(data);
                ett.SaveChanges();
            }
            return true;
        }

        public static bool Admin_Update(tblAdmin data)
        {
            using (ProjectIIIEntities ett = new ProjectIIIEntities())
            {
                tblAdmin obj = ett.tblAdmins.FirstOrDefault(e => e.AdminID == data.AdminID);
                obj.AdminID = data.AdminID;
                obj.FirstName = data.FirstName;
                obj.LastName = data.LastName;
                ett.SaveChanges();
            }
            return true;
        }

        public static bool Admin_Delete(int Id)
        {
            using (ProjectIIIEntities ett = new ProjectIIIEntities())
            {
                tblAdmin obj = ett.tblAdmins.FirstOrDefault(e => e.AdminID == Id);
                ett.tblAdmins.DeleteObject(obj);
                ett.SaveChanges();
            }
            return true;
        }
    }
}
