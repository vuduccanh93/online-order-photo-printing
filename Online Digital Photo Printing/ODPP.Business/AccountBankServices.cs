using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ODPP.Data;
using System.Data.Entity;

namespace ODPP.Business
{
   public class AccountBankServices
    {
        public static List<tblAccountBank> AccountBank_GetByAll()
        {
            using (ProjectIIIEntities ett = new ProjectIIIEntities())
            {
                List<tblAccountBank> lst = new List<tblAccountBank>();
                lst = ett.tblAccountBanks.ToList();
                return lst;
            }
        }

        public static tblAccountBank AccountBank_GetByCart(int Cart)
        {
            using (ProjectIIIEntities ett = new ProjectIIIEntities())
            {
                tblAccountBank obj = new tblAccountBank();
                obj = ett.tblAccountBanks.FirstOrDefault(e => e.CreditCard == Cart);
                return obj;
            }
        }

        public static bool AccountBank_Insert(tblAccountBank data)
        {
            using (ProjectIIIEntities ett = new ProjectIIIEntities())
            {
                ett.tblAccountBanks.AddObject(data);
                ett.SaveChanges();
            }
            return true;
        }

        public static bool AccountBank_Update(tblAccountBank data)
        {
            using (ProjectIIIEntities ett = new ProjectIIIEntities())
            {
                tblAccountBank obj = ett.tblAccountBanks.FirstOrDefault(e => e.CreditCard == data.CreditCard);
                obj.CreditCard = data.CreditCard;
                obj.FirstName = data.FirstName;
                obj.LastName = data.LastName;
                ett.SaveChanges();
            }
            return true;
        }

        public static bool AccountBank_Delete(int Id)
        {
            using (ProjectIIIEntities ett = new ProjectIIIEntities())
            {
                tblAccountBank obj = ett.tblAccountBanks.FirstOrDefault(e => e.CreditCard == Id);
                ett.tblAccountBanks.DeleteObject(obj);
                ett.SaveChanges();
            }
            return true;
        }
    }
}
