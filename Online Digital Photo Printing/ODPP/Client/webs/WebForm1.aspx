<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ODPP.Client.webs.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
               <asp:ScriptManager ID="ScriptManager" runat="server" />
                        <asp:UpdatePanel ID="UpdatePanel1" UpdateMode="Conditional" runat="server">
                            <ContentTemplate>
                                <fieldset>
                                    <legend>UpdatePanel content</legend>
                                    <!-- Other content in the panel. -->
                                    <asp:TextBox ID="txtuname" runat="server" data-validation="length" data-validation-length="5-20"
                                        data-validation-error-msg="The user name has to be a value between 5-20 characters"
                                        AutoPostBack="True" OnTextChanged="txtuname_TextChanged" />
                                    <br />
                                  <asp:Label ID="lblErrorUserName" runat="server" CssClass="error"></asp:Label>
                                </fieldset>
                            </ContentTemplate>
                        </asp:UpdatePanel>
    </div>
    </form>
</body>
</html>
