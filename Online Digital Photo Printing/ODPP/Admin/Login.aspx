<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ODPP.Admin.Login" %>

<%@ Register src="adm-controls/jquery-slide.ascx" tagname="jquery" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Online Digital Photo Printing</title>
    
    <link href="css/adm-style.css" rel="stylesheet" type="text/css" />
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/bootstrap-theme.css" rel="stylesheet" type="text/css" />
    <link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css" />
</head>
<body>
    
    <div id="web-page" class="row">
        <div id="main" class="alert">
            <div id="main-left" class="col-md-8">
                
                
                
                <uc1:jquery ID="jquery1" runat="server" />
                
                
                
            </div><%--end main-left--%>
            <div id="main-right" class="col-md-4">
            <form id="frmlogin" runat="server">
               <asp:Label ID="Label3"  runat="server" Text="Login" Font-Bold="True" 
                   Font-Size="20pt" Font-Italic="False" Font-Names="Tahoma"></asp:Label>   
                   <br />
            <asp:Label ID="Label4" runat="server" Text="Login by admin account" 
                   Font-Size="10pt"></asp:Label>
               <hr />      
              <div class="form-group">
                <asp:Label ID="Label1" CssClass="bold" runat="server" Text="UserName" ></asp:Label>                
                
                <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control" 
                      Text="Username" ForeColor="#E2E2E2"></asp:TextBox>
              </div>
              <div class="form-group">
                <asp:Label ID="Label2" CssClass="bold" runat="server" Text="Password"></asp:Label>                  
                <asp:TextBox ID="txtpass" runat="server" CssClass="form-control" 
                      Text="Password" ForeColor="#E2E2E2"></asp:TextBox>
              </div>              
              <div class="checkbox">
                <label>
                     <asp:CheckBox ID="check" runat="server" Text="Remember me" Font-Size="10pt"/>                  
                </label>
              </div>
              
             <asp:Button ID="btnLogin" runat="server" Text="Sign in" CssClass="btn btn-primary"/>              
            </form><%--end form login--%>
           </div><%-- end main-right--%>
        </div><%--end main--%>
    </div> <%--end web-page--%>
    
</body>
</html>
