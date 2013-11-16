<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admintrator.Master" AutoEventWireup="true"
    CodeBehind="AccAdmin.aspx.cs" Inherits="ODPP.Admin.AccAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>
        <i class="fa fa-group"></i>Admin Account Manager</h3>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
   <%-- <form id="popup-validation" class="form-horizontal">--%>
    <form id="popup_validation" runat="server" class="form-horizontal">
    <asp:Panel ID="pnlshow" runat="server">
        <div class="row">
            <div class="col-lg-12">
                <div class="box">
                    <header>
                <div class="icons"><i class="fa fa-th-large"></i></div>
                <h5>Admin Acount Data Table</h5>
                <div class="toolbar">
                    <ul class="nav">
                        <li>
                            <div class="btn-group">
                                <a class="accordion-toggle btn btn-xs minimize-box" data-toggle="collapse"
                                   href="#collapse1">
                                    <i class="fa fa-chevron-up"></i>
                                </a>
                                <button class="btn btn-xs btn-danger close-box">
                                    <i class="fa fa-remove"></i>
                                </button>
                            </div>
                        </li>
                    </ul>
                </div>

            </header>
                    <div id="collapse1" class="body collapse in">
                        <div class="alert alert-success" id="alert" runat="server" visible="false">
                            <button type="button" class="close" data-dismiss="alert">
                                ×</button>
                            <strong>OK,</strong>
                            <asp:Label ID="txtalert" runat="server" Text="Label"></asp:Label>
                        </div>
                        <div class="btn-toolbar mg-b10 ">
                            <div class="btn-group">
                                <asp:Button ID="btnAdd" CssClass="btn btn-default btn-sm" OnClick="btnadd_click"
                                    runat="server" Text="Add" />
                                <asp:Button ID="btnDel" CssClass="btn btn-default btn-sm" OnClick="btndel_click"
                                    runat="server" Text="Delete" />
                                <asp:Button ID="btnRef" CssClass="btn btn-default btn-sm" OnClick="btnref_click"
                                    runat="server" Text="Refresh" />
                                <a id="vbak" href="javascript:void(0);" onclick="window.history.go(-1);" data-toggle="tooltip"
                                    class="btn btn-default btn-sm"><i class="fa fa-undo"></i>Back </a>
                            </div>
                        </div>
                        <table id="dataTable" class="table table-bordered table-condensed table-hover table-striped">
                            <thead>
                                <tr>
                                    <th>
                                    </th>
                                    <th style="display: none">
                                        ID
                                    </th>
                                    <th>
                                        User Name
                                    </th>
                                    <th>
                                        Admin Roles
                                    </th>
                                    <th>
                                        Name
                                    </th>
                                    <th>
                                        Phone
                                    </th>
                                    <th>
                                        E-mail
                                    </th>
                                    <th>
                                        Function
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:Repeater ID="rpAadmin" runat="server" OnItemCommand="rpAadmin_ItemCommand">
                                    <ItemTemplate>
                                        <tr>
                                            <td>
                                                <asp:CheckBox ID="chkSelect" runat="server" />
                                            </td>
                                            <td style="display: none">
                                                <%#Eval("AdminID").ToString()%>
                                            </td>
                                            <td>
                                                <%#Eval("UserName").ToString()%>
                                            </td>
                                            <td>
                                                <%#Eval("AdminRole").ToString()%>
                                            </td>
                                            <td>
                                                <%#Eval("FirstName").ToString()%>
                                                <%#Eval("LastName").ToString()%>
                                            </td>
                                            <td>
                                                <%#Eval("Phone").ToString()%>
                                            </td>
                                            <td>
                                                <%#Eval("Email").ToString()%>
                                            </td>
                                            <td>
                                                <asp:ImageButton ID="cmdEdit" runat="server" AlternateText="Sửa" CommandArgument='<%#DataBinder.Eval(Container.DataItem,"AdminID")%>'
                                                    CommandName="Edit" CssClass="Edit" ImageUrl="assets/img/edit.png" ToolTip="Sửa" />
                                                <asp:ImageButton ID="cmdDelete" runat="server" AlternateText="Xóa" CommandArgument='<%#DataBinder.Eval(Container.DataItem,"AdminID")%>'
                                                    CommandName="Delete" CssClass="Delete" ImageUrl="assets/img/delete.png" OnClientClick="javascript:return confirm('Are you want delete?');"
                                                    ToolTip="Xóa" />
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <!-- /.col-lg-12 -->
        </div>
    </asp:Panel>
    <%--end data grid--%>
    <asp:Panel ID="pnlupdate" runat="server" Visible="false">
        <div class="row">
            <div class="col-lg-12">
                <div class="box">
                    <header class="dark">
                <div class="icons"><i class="fa fa-th-large"></i></div>
                <h5>Admin Account Update Data</h5>
                <div class="toolbar">
                    <ul class="nav">
                        <li>
                            <div class="btn-group">
                                <a class="accordion-toggle btn btn-xs minimize-box" data-toggle="collapse"
                                   href="#collapse2">
                                    <i class="fa fa-chevron-up"></i>
                                </a>
                                <button class="btn btn-xs btn-danger close-box"><i class="fa fa-remove"></i></button>
                            </div>
                        </li>
                    </ul>
                </div>

            </header>
                    <div id="collapse2" class="body collapse in">
                     <div class="alert alert-danger"  id="err" runat="server" visible="false">
                                <button type="button" class="close" data-dismiss="alert">×</button>
                                <strong>Error,</strong> 
        <asp:Label ID="txterr" runat="server" Text="Label"></asp:Label>
                            </div>
                        <div class="btn-toolbar mg-b10 ">
                            <div class="btn-group">
                                <a id="A4" href="javascript:void(0);" onclick="window.history.go(-1);" data-toggle="tooltip"
                                    class="btn btn-default btn-sm"><i class="fa fa-undo"></i> Back </a>
                            </div>
                        </div>
                        <form class="form-horizontal" enctype="multipart/form-data">
                        <div class="row">
                            <div class="col-lg-3">
                                <div class="form-group pd-30">
                                    <input placeholder="User Name" runat="server" type="text" class="validate[required] form-control"
                                        name="txtID" id="txtID" visible="false">
                                    <div class="fileupload fileupload-new" data-provides="fileupload">
                                        <div class="fileupload-new thumbnail" style="width: 200px; height: 150px;">
                                            <%-- <img src="assets/img/no-image.jpeg" runat="server"  id="avt_img"/>--%>
                                            <asp:Image ID="imgAdminPhoto" runat="server" /></div>
                                        <div class="fileupload-preview fileupload-exists thumbnail" style="max-width: 200px;
                                            max-height: 150px; line-height: 20px;">
                                            <asp:TextBox ID="txtphoto" runat="server" Visible="false"></asp:TextBox>
                                        </div>
                                        <div>
                                            <span class="btn btn-file btn-primary"><span class="fileupload-new">Select image</span><span
                                                class="fileupload-exists">Change</span><asp:FileUpload ID="fuAdminAvatar" runat="server" />
                                            </span><a href="#" class="btn btn-danger fileupload-exists" data-dismiss="fileupload">
                                                Remove</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-9 pd-20">
                                <div class="form-group">
                                    <label class="control-label col-lg-4" for="txtUserName">
                                        UserName</label>
                                    <div class="col-lg-4">
                                        <asp:TextBox placeholder="User Name" ID="txtUserName" CssClass="validate[required] form-control"
                                            runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-lg-4" for="txtPassword">
                                        Password</label>
                                    <div class=" col-lg-4">
                                        <input placeholder="Password" class="validate[required] form-control" type="password"
                                            runat="server" name="pass1" id="pass1" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-lg-4" for="txtPassword2">
                                        Confirm Password</label>
                                    <div class=" col-lg-4">
                                        <input placeholder="Confirm Password" class="validate[required] form-control" type="password"
                                            runat="server" name="pass2" id="pass2" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-lg-4" for="txtRole">
                                        Admin Roles</label>
                                    <div class="col-lg-4">
                                        
                                        <br />
                                        <asp:DropDownList ID="dlRole" runat="server" CssClass="validate[required] form-control">
                                            <asp:ListItem Value="AA">Administrator</asp:ListItem>
                                            <asp:ListItem Value="MN">Manager</asp:ListItem>
                                        </asp:DropDownList>
                                        
                                       
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-lg-4" for="txtFirstName">
                                        First Name</label>
                                    <div class="col-lg-4">
                                        <input placeholder="First Name" runat="server" type="text" class="validate[required,minSize[5],maxSize[50]] form-control"
                                            name="req" id="txtFirstName">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-lg-4" for="txtLastName">
                                        LastName</label>
                                    <div class="col-lg-4">
                                        <input placeholder="Last Name" runat="server" type="text" class="validate[required,minSize[5],maxSize[50]] form-control"
                                            name="req" id="txtLastName">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-lg-4" for="txtsex">
                                        Gender</label>
                                    <div class="col-lg-4">
                                        <select name="sport2" runat="server" id="txtsex" multiple class="validate[required] form-control">
                                            <option value="">Choose a gender</option>
                                            <option value="True">Male</option>
                                            <option value="False">Female</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-lg-4">
                                        E-mail</label>
                                    <div class=" col-lg-4">
                                        <input placeholder="E-mail" runat="server" class="validate[required,custom[email]] form-control"
                                            type="text" name="txtEmail" id="txtEmail" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-lg-4" for="txtPhone">
                                        Phone Number</label>
                                    <div class=" col-lg-4">
                                        <div class="input-group">
                                            <input placeholder="Phone number" runat="server" class="validate[required,minSize[9]] form-control"
                                                type="text" id="txtPhone" data-mask="(999) 999-9999">
                                            <span class="input-group-addon">(999) 999-9999</span>
                                        </div>
                                    </div>
                                </div>
                                <%--<div class="form-group has-success">
                        <label class="control-label col-lg-4">Date</label>

                        <div class="col-lg-8">
                            <input type="date" id="date" name="date" class="form-control col-lg-6">
                        </div>
                    </div>--%>
                                <div class="form-group">
                                    <label class="control-label col-lg-4" for="txtbirth">
                                        Date Of birth</label>
                                    <div class=" col-lg-4">
                                        <input type="text" class="form-control validate[required,custom[date]]" runat="server"
                                            value="02-16-2012" id="txtbirth" name="txtbirth">
                                           
                                        <%--<input placeholder="Date of Birth" class="validate[required,custom[date]] form-control" type="text"
                                   name="date3" id="dp1"/>--%>
                                        <span class="help-block">ISO 8601 dates only YYYY-mm-dd</span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-lg-4" for="txtAddress">
                                        Address</label>
                                    <div class=" col-lg-4">
                                        <textarea placeholder="Address" class="validate[required] form-control" type="text"
                                            name="txtAddress" runat="server" id="txtAddress"></textarea>
                                    </div>
                                </div>
                                <div class="form-actions no-margin-bottom">
                                    <label class="control-label col-lg-5">
                                    </label>
                                    <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_click" CssClass="btn btn-default" />
                                    <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_click" CssClass="btn btn-default" />
                                </div>
                            </div>
                        </div>
                        </form>
                    </div>
                </div>
            </div>
            <!-- /.col-lg-12 -->
        </div>
    </asp:Panel>
    <!-- /.row -->
    </form>
<%--    </form>--%>
</asp:Content>
