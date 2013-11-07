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
            using (ODPPEntities ett = new ODPPEntities())
            {
                List<tblUser> lst = new List<tblUser>();
                lst = ett.tblUsers.ToList();
                return lst;
            }
        }


        public static tblUser User_GetById(int Id)
        {
            using (ODPPEntities ett = new ODPPEntities())
            {
                tblUser obj = new tblUser();
                obj = ett.tblUsers.FirstOrDefault(e => e.UserID == Id);
                return obj;
            }
        }

        public static void User_ChangeAccount(string username, string password)
        {
            using (ODPPEntities ett = new ODPPEntities())
            {
                tblUser obj = new tblUser();
                obj = ett.tblUsers.FirstOrDefault(e => e.UserName == username);
                obj.Password = password;
                ett.SaveChanges();
            }
        }

        public static tblUser User_GetByAccount(string username, string password)
        {
            using (ODPPEntities ett = new ODPPEntities())
            {
                tblUser obj = new tblUser();
                obj = ett.tblUsers.FirstOrDefault(e => e.UserName == username && e.Password == password);
                return obj;
            }
        }


        public static bool User_GetByAccount(string username)
        {
            using (ODPPEntities ett = new ODPPEntities())
            {
                tblUser obj = new tblUser();
                obj = ett.tblUsers.FirstOrDefault(e => e.UserName == username);
                if (obj != null)
                {
                    return true;
                }
                return false;
            }
        }

        public static bool User_Insert(tblUser data)
        {

            using (ODPPEntities ett = new ODPPEntities())
            {
                ett.tblUsers.AddObject(data);
                ett.SaveChanges();
            }
            return true;
        }

        public static bool User_Update(tblUser data)
        {
            using (ODPPEntities ett = new ODPPEntities())
            {
                tblUser obj = ett.tblUsers.FirstOrDefault(e => e.UserID == data.UserID);
                obj.FirstName = data.FirstName;
                obj.LastName = data.LastName;
                obj.DateOfBirth = data.DateOfBirth;
                obj.Address = data.Address;
                obj.Phone = data.Phone;
                obj.Email = data.Email;
                obj.Sex = data.Sex;
                obj.Photo = data.Photo;
                ett.SaveChanges();
            }
            return true;
        }

        public static bool User_Delete(int Id)
        {
            using (ODPPEntities ett = new ODPPEntities())
            {
                tblUser obj = ett.tblUsers.FirstOrDefault(e => e.UserID == Id);
                ett.tblUsers.DeleteObject(obj);
                ett.SaveChanges();
            }
            return true;
        }
    }
}
