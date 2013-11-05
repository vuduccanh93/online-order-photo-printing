﻿using System;
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
            using (ProjectIIIEntities2 ett = new ProjectIIIEntities2())
            {
                List<tblAdmin> lst = new List<tblAdmin>();
                lst = ett.tblAdmins.ToList();
                return lst;
            }
        }

        public static tblAdmin Admin_GetById(int Id)
        {
            using (ProjectIIIEntities2 ett = new ProjectIIIEntities2())
            {
                tblAdmin obj = new tblAdmin();
                obj = ett.tblAdmins.FirstOrDefault(e => e.AdminID == Id);
                return obj;
            }
        }

        public static bool Admin_Insert(tblAdmin data)
        {
            using (ProjectIIIEntities2 ett = new ProjectIIIEntities2())
            {
                ett.tblAdmins.AddObject(data);
                ett.SaveChanges();
            }
            return true;
        }

        public static bool Admin_Update(tblAdmin data)
        {
            using (ProjectIIIEntities2 ett = new ProjectIIIEntities2())
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
            using (ProjectIIIEntities2 ett = new ProjectIIIEntities2())
            {
                tblAdmin obj = ett.tblAdmins.FirstOrDefault(e => e.AdminID == Id);
                ett.tblAdmins.DeleteObject(obj);
                ett.SaveChanges();
            }
            return true;
        }
    }
}
