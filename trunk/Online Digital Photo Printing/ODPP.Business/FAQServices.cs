using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ODPP.Data;
using System.Data.Entity;

namespace ODPP.Business
{
    public class FAQServices
    {
        public static List<tblFAQ> FAQ_GetByAll()
        {
            using (ProjectIIIEntities2 ett = new ProjectIIIEntities2())
            {
                List<tblFAQ> lst = new List<tblFAQ>();
                lst = ett.tblFAQs.ToList();
                return lst;
            }
        }

        public static tblFAQ FAQ_GetById(int Id)
        {
            using (ProjectIIIEntities2 ett = new ProjectIIIEntities2())
            {
                tblFAQ obj = new tblFAQ();
                obj = ett.tblFAQs.FirstOrDefault(e => e.FaqID == Id);
                return obj;
            }
        }

        public static bool FAQ_Insert(tblFAQ data)
        {
            using (ProjectIIIEntities2 ett = new ProjectIIIEntities2())
            {
                ett.tblFAQs.AddObject(data);
                ett.SaveChanges();
            }
            return true;
        }

        public static bool User_Update(tblFAQ data)
        {
            using (ProjectIIIEntities2 ett = new ProjectIIIEntities2())
            {
                tblFAQ obj = ett.tblFAQs.FirstOrDefault(e => e.FaqID == data.FaqID);
                obj.FaqID = data.FaqID;
                obj.Question = data.Question;
                obj.Answer = data.Answer;
               
                ett.SaveChanges();
            }
            return true;
        }

        public static bool FAQ_Delete(int Id)
        {
            using (ProjectIIIEntities2 ett = new ProjectIIIEntities2())
            {
                tblFAQ obj = ett.tblFAQs.FirstOrDefault(e => e.FaqID == Id);
                ett.tblFAQs.DeleteObject(obj);
                ett.SaveChanges();
            }
            return true;
        }
    }
}
