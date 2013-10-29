using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ODPP.Data;
using System.Data.Entity;

namespace ODPP.Business
{
    public class ImagesServieces
    {
        public static List<tblImage> Images_GetByAll()
        {
            using (ProjectIIIEntities1 ett = new ProjectIIIEntities1())
            {
                List<tblImage> lst = new List<tblImage>();
                lst = ett.tblImages.ToList();
                return lst;
            }
        }

        public static tblImage Images_GetById(int Id)
        {
            using (ProjectIIIEntities1 ett = new ProjectIIIEntities1())
            {
                tblImage obj = new tblImage();
                obj = ett.tblImages.FirstOrDefault(e => e.ImageID == Id);
                return obj;
            }
        }

        public static bool Images_Insert(tblImage data)
        {
            using (ProjectIIIEntities1 ett = new ProjectIIIEntities1())
            {
                ett.tblImages.AddObject(data);
                ett.SaveChanges();
            }
            return true;
        }

        public static bool Images_Update(tblImage data)
        {
            using (ProjectIIIEntities1 ett = new ProjectIIIEntities1())
            {
                tblImage obj = ett.tblImages.FirstOrDefault(e => e.ImageID == data.ImageID);
                obj.ImageName = data.ImageName;
                obj.ImageRaw = data.ImageRaw;
                ett.SaveChanges();
            }
            return true;
        }

        public static bool Images_Delete(int Id)
        {
            using (ProjectIIIEntities1 ett = new ProjectIIIEntities1())
            {
                tblImage obj = ett.tblImages.FirstOrDefault(e => e.ImageID == Id);
                ett.tblImages.DeleteObject(obj);
                ett.SaveChanges();
            }
            return true;
        }
    }
}
