using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ODPP.Data;
using System.Data.Entity;

namespace ODPP.Business
{
    public class ContactService
    {
        public static List<tblContact> Contact_GetByAll()
        {
            using (ProjectIIIEntities2 ett = new ProjectIIIEntities2())
            {
                List<tblContact> lst = new List<tblContact>();
                lst = ett.tblContacts.ToList();
                return lst;
            }
        }

        public static tblContact Contact_GetById(int Cart)
        {
            using (ProjectIIIEntities2 ett = new ProjectIIIEntities2())
            {
                tblContact obj = new tblContact();
                obj = ett.tblContacts.FirstOrDefault(e => e.ContactID == Cart);
                return obj;
            }
        }

        public static bool Contact_Insert(tblContact data)
        {
            using (ProjectIIIEntities2 ett = new ProjectIIIEntities2())
            {
                ett.tblContacts.AddObject(data);
                ett.SaveChanges();
            }
            return true;
        }

        public static bool Contact_Update(tblContact data)
        {
            using (ProjectIIIEntities2 ett = new ProjectIIIEntities2())
            {
                tblContact obj = ett.tblContacts.FirstOrDefault(e => e.ContactID == data.ContactID);
                obj.Name = data.Name;
                obj.Email = data.Email;
                obj.Message = data.Message;
                obj.Phone = data.Phone;
                ett.SaveChanges();
            }
            return true;
        }

        public static bool Contact_Delete(int Id)
        {
            using (ProjectIIIEntities2 ett = new ProjectIIIEntities2())
            {
                tblContact obj = ett.tblContacts.FirstOrDefault(e => e.ContactID == Id);
                ett.tblContacts.DeleteObject(obj);
                ett.SaveChanges();
            }
            return true;
        }
    }
}
