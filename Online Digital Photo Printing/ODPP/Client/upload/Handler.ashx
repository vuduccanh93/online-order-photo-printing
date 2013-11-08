<%@ WebHandler Language="C#" Class="Handler" %>

using System;
using System.Web;
using System.Web.Script.Serialization;
using System.Configuration;
using System.Web.SessionState;
using ODPP.Client.upload;
using System.Collections.Generic;
using ODPP.Client.Webs;
using System.IO;

public class Handler : IHttpHandler
{

    // Handle request based on method
    private void HandleMethod(HttpContext context)
    {

        switch (context.Request.HttpMethod)
        {
            case "DELETE":
                DeleteFile(context);
                ODPP.Client.Webs.Services.imgList.Remove(context.Request["n"]);
                break;
            case "DELETE_ALL":
                DeleteAllFiles(context);
                break;
        }
    }

    // Delete file from the server
    private void DeleteFile(HttpContext context)
    {
        var filePath = context.Request["f"];
        if (System.IO.File.Exists(filePath))
        {
            System.IO.File.Delete(filePath);
        }
    }
    private void DeleteAllFiles(HttpContext context)
    {
        var filePath = context.Request["fdr"];
        Array.ForEach(Directory.GetFiles(filePath), File.Delete);
    }

    public void ProcessRequest(HttpContext context)
    {

        HandleMethod(context);
        try
        {
            if (!Directory.Exists(context.Request.Form.GetValues("filePath")[0].ToString()))
            {
                Directory.CreateDirectory(context.Request.Form.GetValues("filePath")[0].ToString());
            }
            context.Response.ContentType = "text/plain";//"application/json";
            var r = new System.Collections.Generic.List<ViewDataUploadFilesResult>();
            JavaScriptSerializer js = new JavaScriptSerializer();
            foreach (string file in context.Request.Files)
            {
                HttpPostedFile hpf = context.Request.Files[file] as HttpPostedFile;


                string FileName = string.Empty;
                if (HttpContext.Current.Request.Browser.Browser.ToUpper() == "IE")
                {
                    string[] files = hpf.FileName.Split(new char[] { '\\' });
                    FileName = files[files.Length - 1];
                }
                else
                {
                    FileName = hpf.FileName;

                }
                if (hpf.ContentLength == 0)
                    continue;


                string savedFileName = context.Request.Form.GetValues("filePath")[0] + FileName;
                string size = context.Request.Form.GetValues("imageSize")[0].ToString();
                int quantity = int.Parse(context.Request.Form.GetValues("number")[0]);
                hpf.SaveAs(savedFileName);

                try
                {
                    Services.imgList.Add(FileName, new ImageObj(FileName, quantity, size));
                }
                catch (Exception ex)
                {
                    return;
                }


                r.Add(new ViewDataUploadFilesResult()
                {

                    Thumbnail_url = savedFileName,
                    Name = FileName,
                    Length = hpf.ContentLength,
                    Type = hpf.ContentType
                });
                var uploadedFiles = new
                {
                    files = r.ToArray()
                };
                var jsonObj = js.Serialize(uploadedFiles);
                //jsonObj.ContentEncoding = System.Text.Encoding.UTF8;
                //jsonObj.ContentType = "application/json;";
                context.Response.Write(jsonObj.ToString());
            }
        }
        catch (Exception)
        {


        }
    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

}

public class ViewDataUploadFilesResult
{
    public string Thumbnail_url { get; set; }
    public string Name { get; set; }
    public int Length { get; set; }
    public string Type { get; set; }
}