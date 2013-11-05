using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using System.Data.Entity;
using ODPP.Data;

namespace ODPP.Business
{
    public class AdminServices
    {
        public static List<tblAdmin> Admin_GetByAll()
        {
            using (ODPPEntities ett = new ODPPEntities())
            {
                List<tblAdmin> lst = new List<tblAdmin>();
                lst = ett.tblAdmins.ToList();
                return lst;
            }
        }

        public static tblAdmin Admin_GetById(int Id)
        {
            using (ODPPEntities ett = new ODPPEntities())
            {
                tblAdmin obj = new tblAdmin();
                obj = ett.tblAdmins.FirstOrDefault(e => e.AdminID == Id);
                return obj;
            }
        }

        public static bool Admin_Insert(tblAdmin data)
        {
            using (ODPPEntities ett = new ODPPEntities())
            {
                ett.tblAdmins.AddObject(data);
                ett.SaveChanges();
            }
            return true;
        }

        public static bool Admin_Update(tblAdmin data)
        {
            using (ODPPEntities ett = new ODPPEntities())
            {
                tblAdmin obj = ett.tblAdmins.FirstOrDefault(e => e.AdminID == data.AdminID);

                obj.FirstName = data.FirstName;
                obj.LastName = data.LastName;
                obj.DateOfBirth = data.DateOfBirth;
                obj.Phone = data.Phone;
                obj.Email = data.Email;
                obj.UserName = data.UserName;
                obj.Password = data.Password;
                obj.Phone = data.Phone;
                obj.Sex = data.Sex;



                ett.SaveChanges();
            }
            return true;
        }

        public static bool Admin_Delete(int Id)
        {
            using (ODPPEntities ett = new ODPPEntities())
            {
                tblAdmin obj = ett.tblAdmins.FirstOrDefault(e => e.AdminID == Id);
                ett.tblAdmins.DeleteObject(obj);
                ett.SaveChanges();
            }
            return true;
        }
    }
}
