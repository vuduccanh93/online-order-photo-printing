using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using ODPP.Business;
using ODPP.Data;
using System.IO;
using System.Collections;
using System.Net;
using ODPP.Client.Webs;
using ODPP.Client.upload;
using ODPP.Client.obj;

namespace ODPP.Client.handler
{
    public partial class Handler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            switch (Context.Request["f"].ToString())
            {
                case "signout":
                    Session["user"] = null;
                    if (Response.Cookies["UserName"].Value != null)
                    {
                        Response.Cookies["UserName"].Expires = DateTime.Now.AddDays(-1D);
                        Response.Cookies["Password"].Expires = DateTime.Now.AddDays(-1D);
                    }
                    //Response.Redirect(Request.UrlReferrer.ToString());
                    string url = Request.UrlReferrer.ToString();
                    if (url.Contains("Information.aspx"))
                    {
                        Response.Redirect("../webs/Index.aspx");
                    }
                    Response.Redirect(Request.UrlReferrer.ToString());
                    break;
                case "order":
                    sendOrder();
                    break;
                case "login":
                    login();
                    string url2 = Request.UrlReferrer.ToString();
                    if (url2.Contains("Information.aspx")) 
                    {
                        Response.Redirect("../webs/Index.aspx");
                    }
                    Response.Redirect(url2);
                    break;
                case "contact":
                    sendContact();
                    break;
                case "edit_account":
                    editAccount();
                    break;
            }
        }
        private void editAccount()
        {
            User obj = (User)Session["user"];
            string password = Request.Form["pass_confirmation"].ToString();
            string username = obj.Username;
            UserServices.User_ChangeAccount(username, password);
            Response.Redirect("../webs/Information.aspx?p=edit_success");

        }
        private void sendContact()
        {
            string fullname = Request.Form["fullname"].ToString();
            string mail = Request.Form["email"].ToString();
            string phone = Request.Form["phone"].ToString();
            string message = Request.Form["contact"].ToString();
            tblContact obj = new tblContact();
            obj.Email = mail;
            obj.Message = message;
            obj.Name = fullname;
            obj.Phone = phone;
            ContactService.Contact_Insert(obj);
            Response.Redirect("../webs/Information.aspx?p=sending_contact");
        }
        private void sendOrder()
        {
            if (Services.imgList.Count == 0)
            {
                Directory.Delete(Session["folder_path"].ToString(),true);
                Response.Redirect("../webs/Information.aspx?p=notImg");
            }
            tblOrder objOrder = new tblOrder();
            objOrder.Paytype = Request.Form["paytype"].ToString();
            string credit = null ;
            if (objOrder.Paytype.Equals("credit"))
            {
                credit= Request.Form["creditNumber"].ToString();
                string pin = Request.Form["pin"].ToString();
                MyServices.EncryptDecrypt service = new MyServices.EncryptDecrypt();
                string myEncrypt = service.EnCrypt(credit);
                credit = service.DeCrypt(myEncrypt);
                if (!AccountBankServices.isExistAccount(pin, credit))
                {
                    Services.imgList.Clear();
                    Directory.Delete(Session["folder_path"].ToString(), true);
                    Response.Redirect("../webs/Information.aspx?p=order_faled");
                }


            }
            objOrder.DateOfOrder = DateTime.Now;
            User obj = (User)Session["user"];
            objOrder.UserID = obj.Id;
            objOrder.Status = false;
            objOrder.Request = Request.Form["request"].ToString();
            objOrder.Address = Request.Form["add"].ToString();
            objOrder.DirectoryName = Session["folder"].ToString();
            objOrder.Phone = Request.Form["phoneContact"].ToString();
            objOrder.Receiver = Request.Form["receiver"].ToString();
            float price = 0;
            //calculate price
            for (int i = 0; i < Services.imgList.Count; i++)
            {
                ImageObj objimg = Services.imgList.ElementAt(i).Value;
                price += float.Parse(SizeServices.Size_GetById(int.Parse(objimg.Size)).Price.ToString());
            }
            objOrder.TotalPrice = price;
            objOrder.CreditNumber = credit;
            int id = OrderServices.Order_Insert(objOrder);
            OrderServices.Order_UpdateDirectoryName(id, "folder_" + id);
            Directory.Move(Session["folder_path"].ToString(), Server.MapPath("/images_upload") + "/folder_" + id);
            for (int i = 0; i < Services.imgList.Count; i++)
            {

                ImageObj objImage = Services.imgList.ElementAt(i).Value;
                FileStream fs = new FileStream(Server.MapPath("/images_upload") + "/folder_" + id + "/" + objImage.Name, FileMode.Open, FileAccess.Read);
                BinaryReader br = new BinaryReader(fs);
                tblOrderDetail obj2 = new tblOrderDetail();
                obj2.ImageName = objImage.Name;
                obj2.Quantity = objImage.Quantity;
                obj2.SizeID = int.Parse(objImage.Size);
                obj2.ImageRaw = br.ReadBytes((int)fs.Length);
                obj2.OrderID = id;
                OrderDetailsServices.OrdderDetail_Insert(obj2);
            }
            Services.imgList.Clear();
            Response.Redirect("../webs/Information.aspx?p=order_success");
        }
        private void login()
        {
            string username = Request.Form["user"].ToString();
            string pwd = Request.Form["password"].ToString();
            tblUser obj = UserServices.User_GetByAccount(username, pwd);

            if (obj != null)
            {
                Session["account"] = obj.UserName;
                User user = new User(obj.UserID, obj.FirstName, obj.LastName, obj.Email, obj.DateOfBirth, obj.Address, obj.Phone, obj.UserName, obj.Password, obj.Photo, obj.Sex);
                Session["user"] = user;
                try
                {
                    if (Request.Form["remember"].ToString().Equals("1"))
                    {
                        Response.Cookies["UserName"].Expires = DateTime.Now.AddDays(30);
                        Response.Cookies["Password"].Expires = DateTime.Now.AddDays(30);
                        Response.Cookies["UserName"].Value = username.Trim();
                        Response.Cookies["Password"].Value = pwd.Trim();
                    }
                }
                catch (Exception)
                {
                }
            }
            else
            {
                Response.Redirect("../webs/Information.aspx?p=login_failed");
            }
        }
    }
}