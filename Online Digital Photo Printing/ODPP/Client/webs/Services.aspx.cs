using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ODPP.Client.upload;
using System.Collections;
using System.Net;
using System.IO;
namespace ODPP.Client.Webs
{
    public partial class Services : System.Web.UI.Page
    {
        public static Dictionary<string, ImageObj> imgList = new Dictionary<string, ImageObj>();
        public void Page_Load(object sender, EventArgs e){
            imgList.Clear();
            Random r = new Random();
            int num = r.Next(0, 1000);
            Session["folder"] = "temp_"+num;
            string path = Server.MapPath("/images_upload/");
            
            Session["folder_path"] = path + Session["folder"] + "\\";
            if (Session["user"] == null)
            {
                pnlOrder.Visible = false;
                pnlUnOrder.Visible = true;
            }
            else
            {
                pnlUnOrder.Visible = false;
                pnlOrder.Visible = true;
                ODPP.Client.obj.User obj = (ODPP.Client.obj.User)Session["user"];
                Session["username"] = obj.FirstName + " " + obj.LastName;
                Session["dateOrder"] = DateTime.Now.ToShortDateString();
            }
        }

        protected void btnTakeOder_Click(object sender, EventArgs e)
        {
            if (imgList.Count == 0)
            {
                return;
            }
            Session["imgList"] = imgList;  
            imgList.Clear();
        }
       

    }
}