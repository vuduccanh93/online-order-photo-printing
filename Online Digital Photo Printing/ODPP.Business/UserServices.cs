using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ODPP.Data;
using System.Data.Entity;

namespace ODPP.Business
{
    public class UserServices
    {
        public static List<tblUser> User_GetByAll()
        {
            using (ProjectIIIEntities ett = new ProjectIIIEntities())
            {
                List<tblUser> lst = new List<tblUser>();
                lst = ett.tblUsers.ToList();
                return lst;
            }
        }

        public static tblUser User_GetById(int Id)
        {
            using (ProjectIIIEntities ett = new ProjectIIIEntities())
            {
                tblUser obj = new tblUser();
                obj = ett.tblUsers.FirstOrDefault(e => e.UserID == Id);
                return obj;
            }
        }

        public static bool User_Insert(tblUser data)
        {
            using (ProjectIIIEntities ett = new ProjectIIIEntities())
            {
                ett.tblUsers.AddObject(data);
                ett.SaveChanges();
            }
            return true;
        }

        public static bool User_Update(tblUser data)
        {
            using (ProjectIIIEntities ett = new ProjectIIIEntities())
            {
                tblUser obj = ett.tblUsers.FirstOrDefault(e => e.UserID == data.UserID); obj.UserID = data.UserID;
                obj.UserName = data.UserName;
                ett.SaveChanges();
            }
            return true;
        }

        public static bool User_Delete(int Id)
        {
            using (ProjectIIIEntities ett = new ProjectIIIEntities())
            {
                tblUser obj = ett.tblUsers.FirstOrDefault(e => e.UserID == Id);
                ett.tblUsers.DeleteObject(obj);
                ett.SaveChanges();
            }
            return true;
        }
    }
}
