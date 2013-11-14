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
                
                
                <asp:Button ID="btnUpdate" CssClass="btn btn-default btn-sm" OnClick="btnUpdate_click"
                                    runat="server" Text="Assigned" />
               
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
                        <td><%#Eval("Status").ToString() == "False" ? "Not Assigned" : "Assigned"%></td>
                        <td>
                           
                        <asp:ImageButton ID="cmdUp" runat="server" 
                    AlternateText="Xóa" 
                    CommandArgument='<%#DataBinder.Eval(Container.DataItem,"OrderID")%>' 
                    CommandName="Assigned" CssClass="Delete" 
                    ImageUrl="assets/img/valid.jpg" 
                    OnClientClick="javascript:return confirm('Assigned photo?');" ToolTip="Assigned" />
                     <asp:ImageButton ID="cmdEdit" runat="server" 
                    AlternateText="View" 
                    CommandArgument='<%#DataBinder.Eval(Container.DataItem,"OrderID")%>' 
                    CommandName="View" CssClass="Edit" ImageUrl="assets/img/view.png"
                    ToolTip="View" />
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
                <h5>Order Photo View Data</h5>
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
            <a id="A1" href="javascript:void(0);" onclick="window.history.go(-1);"  data-toggle="tooltip" class="btn btn-default btn-sm">
                    <i class="fa fa-undo"></i>
                    Back
                </a>
                 <div class="row">
                     
                            <form class="form-horizontal">
                            <div class="col-lg-6 pd-10">
                                <div class="form-group">
                                    <label class="control-label col-lg-4" for="txtUserName">
                                        UserName</label>
                                    <div class="col-lg-4">
                                        <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                                       
                                        
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-lg-4" for="txtReceiver">
                                        Receiver</label>
                                    <div class="col-lg-4">
                                        <asp:TextBox ID="txtReceiver" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                                        
                                        
                                    </div>
                                </div>
                                 <div class="form-group">
                                    <label class="control-label col-lg-4" for="txtPhone">
                                        Phone</label>
                                    <div class="col-lg-4">
                                         <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                                        
                                        
                                    </div>
                                </div>
                                 <div class="form-group">
                                    <label class="control-label col-lg-4" for="txtAddress">
                                        Address</label>
                                    <div class="col-lg-4">
                                        
                                        <asp:TextBox  ID="txtAddress" runat="server" CssClass="form-control" 
                                            Enabled="false" TextMode="MultiLine"></asp:TextBox>
                                        
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 pd-10">
                                <input runat="server" id="txtID" visible="false" name="txtID" type="text" />
                                
                                 
                                <div class="form-group">
                                    <label class="control-label col-lg-4" for="txtDirectoryName">
                                        Directory Name</label>
                                    <div class="col-lg-4">
                                       
                                        <asp:TextBox ID="txtDirectoryName" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                                        
                                    </div>
                                </div>
                                 <div class="form-group">
                                    <label class="control-label col-lg-4" for="txtRequest">
                                        Request</label>
                                    <div class="col-lg-4">
                                        
                                        <asp:TextBox ID="txtRequest" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                                        
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-lg-4" for="txtTotalPrice">
                                        Total Price</label>
                                    <div class="col-lg-4">
                                        
                                        <asp:TextBox ID="txtTotalPrice" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                                        
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-lg-4" for="txtPaytype">
                                        Pay type</label>
                                    <div class="col-lg-4">
                                       
                                        <asp:TextBox ID="txtPaytype" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                                        
                                    </div>
                                </div>
                                 <div class="form-group">
                                    <label class="control-label col-lg-4" for="txtCreditNumber">
                                        Credit Number</label>
                                    <div class="col-lg-4">
                                        
                                        <asp:TextBox ID="txtCreditNumber" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                                        
                                    </div>
                                </div>
                                 <div class="form-group">
                                    <label class="control-label col-lg-4" for="txtDateOfOrder">
                                        Date Order</label>
                                    <div class="col-lg-4">
                                        
                                        <asp:TextBox ID="txtDateOfOrder" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                                        
                                    </div>
                                  
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-lg-4" for="txtDateOfAssign">
                                        Date Assign</label>
                                    <div class="col-lg-4">
                                        
                                        <asp:TextBox ID="txtDateOfAssign" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                                        
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-lg-4" for="txtStatus">
                                        Status</label>
                                    <div class="col-lg-4">
                                        
                                        <asp:TextBox ID="txtStatus" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                                        
                                    </div>
                                </div>
                                
                                
                            </div>
                            </form>
                            <div class="pd-10">
                                 <table id="Table1" class="table table-bordered table-condensed table-hover table-striped" <%if(rpDetail.Items.Count<=0){ %>style="display:none;"<%} %>  width="90%">
                    <thead>
<tr>

    <th >Size</th>
    <th>ImageName</th>
    <th>ImageRaw</th>
    <th>Quantity</th>
</tr>
</thead>
<tbody>


            <asp:Repeater ID="rpDetail" runat="server">
                <ItemTemplate>
                    <tr>
                        
                       <td><%#getSize(Eval("SizeID").ToString())%></td>
                       <td>
                       <%#Eval("ImageName").ToString()%></td>
                       <td>
                       <img src="Handler.ashx?imgdata=<%#DataBinder.Eval(Container.DataItem, "ImageRaw") %>" />
                      
                       </td>
                       <td><%#Eval("Quantity").ToString()%></td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
     

</tbody>
                </table>
                            </div>
                        </div>
            </div>
        </div>
    </div>
    <!-- /.col-lg-12 -->
</div>
   </asp:Panel>
   
 </form>
</asp:Content>
