using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ODPP.Business;
using System.IO;


namespace ODPP.Admin
{
    /// <summary>
    /// Summary description for Handler
    /// </summary>
    public class Handler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {

            int id = int.Parse(context.Request.QueryString["id"]);
            byte[] bytes = OrderDetailsServices.OrderDetail_GetImageRawByID(id);

            context.Response.BinaryWrite(bytes);
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}