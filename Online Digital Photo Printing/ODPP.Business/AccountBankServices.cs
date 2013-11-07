using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ODPP.Data;
using System.Data.Entity;
using ODPP;

namespace ODPP.Business
{
    public class AccountBankServices
    {
        public static List<tblAccountBank> AccountBank_GetByAll()
        {
            using (ODPPEntities ett = new ODPPEntities())
            {
                List<tblAccountBank> lst = new List<tblAccountBank>();
                lst = ett.tblAccountBanks.ToList();
                return lst;
            }
        }
        public static bool isExistAccount(string pin, string credit){
            using (ODPPEntities ett = new ODPPEntities())
            {
                List<tblAccountBank> lst = new List<tblAccountBank>();
                tblAccountBank obj = ett.tblAccountBanks.FirstOrDefault(e => e.PIN == pin && e.CreditNumber == credit);
                if (obj != null)
                {
                    return true;
                }
            }
            return false;                                                   
        }








    }
}
