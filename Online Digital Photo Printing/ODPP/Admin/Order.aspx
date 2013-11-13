<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admintrator.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="ODPP.Admin.Order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h3><i class="  fa fa-truck"></i> Order Photo Manager</h3>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
   <form id="popup_validation" class="form-horizontal"  runat="server">
   <asp:Panel ID="pnlshow" runat="server">
    <div class="row">
    <div class="col-lg-12">
        <div class="box">
             <header>
                <div class="icons"><i class="fa fa-th-large"></i></div>
                <h5>Order Photo order data</h5>
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
                <a id="vbak" href="javascript:void(0);" onclick="window.history.go(-1);"  data-toggle="tooltip" class="btn btn-default btn-sm">
                    <i class="fa fa-undo"></i>
                    Back
                </a>
            </div>
            </div>
        <table id="dataTable" class="table table-bordered table-condensed table-hover table-striped">
                    <thead>
<tr>
    <th></th>
    <th style="display:none">ID</th>
    <th>Customer Name</th>
    <th>Date Order</th>
 <%--   <th>Date Assign</th>--%>
    <th>Total Price</th>
    <th>Status</th>
    <th>Function</th>
</tr>
</thead>
<tbody>


            <asp:Repeater ID="rpOrder" runat="server" onitemcommand="rpOrder_ItemCommand">
                <ItemTemplate>
                    <tr>
                        <td><asp:CheckBox ID="chkSelect" runat="server" /></td>
                        <td style="display:none"><%#Eval("OrderID").ToString()%></td>                        
                       <td><%#Eval("FirstName").ToString()%> <%#Eval("LastName").ToString()%></td>                        
                        <td><%#Eval("DateOfOrder").ToString()%></td>
                        <%--<td><%#Eval("DateOfAssign").ToString()%></td>--%>
                        <td><%#Eval("TotalPrice").ToString()%></td>
                        <td><%#Eval("Status").ToString()=="False"?"Agin":"Not Adgin"%></td>
                        <td>
                            <asp:ImageButton ID="cmdEdit" runat="server" 
                    AlternateText="Sửa" 
                    CommandArgument='<%#DataBinder.Eval(Container.DataItem,"OrderID")%>' 
                    CommandName="Edit" CssClass="Edit" ImageUrl="assets/img/edit.png" 
                    ToolTip="Sửa" />
                        <asp:ImageButton ID="cmdDelete" runat="server" 
                    AlternateText="Xóa" 
                    CommandArgument='<%#DataBinder.Eval(Container.DataItem,"OrderID")%>' 
                    CommandName="Delete" CssClass="Delete" 
                    ImageUrl="assets/img/delete.png" 
                    OnClientClick="javascript:return confirm('Are you want delete?');" ToolTip="Xóa" />
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
    <asp:Panel ID="pnlupload" runat="server" Visible="false">
     <div class="row">
    <div class="col-lg-12">
        <div class="box">
            <header class="dark">
                <div class="icons"><i class="fa fa-th-large"></i></div>
                <h5>Order Photo Update Data</h5>
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
                 <div class="row">
                     <asp:GridView ID="grvorderdetails" runat="server">
                     </asp:GridView>
                            <form>
                            <div class="col-lg-3">
                                <div class="form-group pd-30">
                                    <input type="text" name="photo" id="photo" runat="server" visible="false" />
                                    <div class="fileupload fileupload-new" data-provides="fileupload">
                                        <div class="fileupload-new thumbnail" style="width: 200px; height: 150px;">
                                            <asp:Image ID="imgPhoto" runat="server" /></div>
                                        <div class="fileupload-preview fileupload-exists thumbnail" style="max-width: 200px;
                                            max-height: 150px; line-height: 20px;">
                                        </div>
                                        <div>
                                            <span class="btn btn-file btn-primary"><span class="fileupload-new">Select image</span><span
                                                class="fileupload-exists">Change</span><asp:FileUpload ID="fuUserAvatar" runat="server" /></span>
                                            <a href="#" class="btn btn-danger fileupload-exists" data-dismiss="fileupload">Remove</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-9 pd-20">
                                <input runat="server" id="txtID" visible="false" name="txtID" type="text" />
                                <div class="form-group">
                                    <label class="control-label col-lg-4" for="txtUserName">
                                        UserName</label>
                                    <div class="col-lg-4">
                                        <asp:TextBox placeholder="User Name" CssClass="validate[required] form-control" ID="UserName"
                                            runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-lg-4" for="txtDateOfOrder">
                                        DateOfOrder</label>
                                    <div class=" col-lg-4">
                                        <input placeholder="Password" class="validate[required] form-control" runat="server"
                                            type="text" name="txtDateOfOrder" id="txtDateOfOrder" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-lg-4" for="txtDateOfAssign">
                                        Date Of Assign</label>
                                    <div class=" col-lg-4">
                                        <input placeholder="Confirm Password" class="validate[required] form-control" type="text"
                                            runat="server" name="txtDateOfAssign" id="txtDateOfAssign" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-lg-4" for="txtTotalPrice">
                                        Total Price</label>
                                    <div class="col-lg-4">
                                        <input placeholder="First Name" runat="server" type="text" class="validate[required,minSize[5],maxSize[50]] form-control"
                                            name="txtTotalPrice" id="txtTotalPrice">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-lg-4" for="txtDirectoryName">
                                        DirectoryName</label>
                                    <div class="col-lg-4">
                                        <input placeholder="Last Name" runat="server" type="text" class="validate[required,minSize[5],maxSize[50]] form-control"
                                            name="txtDirectoryName" id="txtDirectoryName">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-lg-4" for="txtStatus">
                                        Status</label>
                                    <div class="col-lg-4">
                                        <select name="sport2" runat="server" id="txtStatus" multiple class="validate[required] form-control">
                                            <option value="">Choose a Status</option>
                                            <option value="True">Assigned</option>
                                            <option value="False">not Assigned</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-lg-4" for="txtPaytype">
                                        E-mail</label>
                                    <div class=" col-lg-4">
                                        <input placeholder="Pay type" runat="server" class="validate[required] form-control"
                                            type="text" name="txtPaytype" id="txtPaytype" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-lg-4" for="txtReceiver">
                                        Receiver</label>
                                    <div class=" col-lg-4">
                                        <div class="input-group">
                                            <input placeholder="Phone number" runat="server" class="validate[required] form-control"
                                                type="text" id="txtReceiver" >
                                            
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-lg-4" for="txtPhone">
                                       Phone</label>
                                    <div class=" col-lg-4">
                                        <input type="text" class="form-control" runat="server" value="02-16-2012" id="txtPhone"
                                            name="txtPhone">
                                        <%--<input placeholder="Date of Birth" class="validate[required,custom[date]] form-control" type="text"
                                   name="date3" id="dp1"/>--%>
                                       
                                    </div>
                                </div>
                                 <div class="form-group">
                                    <label class="control-label col-lg-4" for="txtRequest">
                                        Request</label>
                                    <div class=" col-lg-4">
                                        <textarea placeholder="Address" runat="server" class="validate[required,minSize[5],maxSize[100]] form-control"
                                            type="text" name="txtRequest" id="txtRequest"></textarea>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-lg-4" for="txtAddress">
                                        Address</label>
                                    <div class=" col-lg-4">
                                        <textarea placeholder="Address" runat="server" class="validate[required,minSize[5],maxSize[100]] form-control"
                                            type="text" name="txtAddress" id="txtAddress"></textarea>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-lg-4" for="txtCreditNumber">
                                        CreditNumber</label>
                                    <div class=" col-lg-4">
                                        <textarea placeholder="Address" runat="server" class="validate[required,minSize[5],maxSize[100]] form-control"
                                            type="text" name="txtCreditNumber" id="txtCreditNumber"></textarea>
                                    </div>
                                </div>
                                <div class="form-actions no-margin-bottom">
                                    <label class="control-label col-lg-5">
                                    </label>
                                    <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_click" CssClass="btn btn-default" />
                                    <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" CssClass="btn btn-default" />
                                </div>
                            </div>
                            </form>
                        </div>
            </div>
        </div>
    </div>
    <!-- /.col-lg-12 -->
</div>
   </asp:Panel>
   
 </form>
</asp:Content>
