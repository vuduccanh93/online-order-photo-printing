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
            using (ProjectIIIEntities1 ett = new ProjectIIIEntities1())
            {
                List<tblUser> lst = new List<tblUser>();
                lst = ett.tblUsers.ToList();
                return lst;
            }
        }

        public static tblUser User_GetById(int Id)
        {
            using (ProjectIIIEntities1 ett = new ProjectIIIEntities1())
            {
                tblUser obj = new tblUser();
                obj = ett.tblUsers.FirstOrDefault(e => e.UserID == Id);
                return obj;
            }
        }

        public static bool User_Insert(tblUser data)
        {
            using (ProjectIIIEntities1 ett = new ProjectIIIEntities1())
            {
                ett.tblUsers.AddObject(data);
                ett.SaveChanges();
            }
            return true;
        }

        public static bool User_Update(tblUser data)
        {
            using (ProjectIIIEntities1 ett = new ProjectIIIEntities1())
            {
                tblUser obj = ett.tblUsers.FirstOrDefault(e => e.UserID == data.UserID);
                obj.FirstName = data.FirstName;
                obj.LastName = data.LastName;
                obj.DateOfBirth = data.DateOfBirth;
                obj.Address = data.Address;
                obj.Phone = data.Phone;
                obj.Email = data.Email;
                obj.UserName = data.UserName;
                obj.Password = data.Password;
                obj.Photo = data.Photo;
                obj.Sex = data.Sex;

                ett.SaveChanges();
            }
            return true;
        }

        public static bool User_Delete(int Id)
        {
            using (ProjectIIIEntities1 ett = new ProjectIIIEntities1())
            {
                tblUser obj = ett.tblUsers.FirstOrDefault(e => e.UserID == Id);
                ett.tblUsers.DeleteObject(obj);
                ett.SaveChanges();
            }
            return true;
        }
    }
}
