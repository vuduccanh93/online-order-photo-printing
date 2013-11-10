<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admintrator.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="ODPP.Admin.Order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h3><i class="  fa fa-truck"></i> Order Photo Manager</h3>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
   <form id="Form1" class="form-horizontal"  runat="server">
    
    <div class="row">
    <div class="col-lg-12">
        <div class="box">
             <header>
                <div class="icons"><i class="fa fa-th-large"></i></div>
                <h5>Order Photo Data Table</h5>
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
                <div class="btn-toolbar mg-b10 ">
            <div class="btn-group">
                
                
                <a  data-toggle="tooltip" class="btn btn-default btn-sm" runat="server" onserverclick="btndel_click" id="btndel">
                    <i class="glyphicon glyphicon-remove"></i>
                    Delete
                </a>
                <a  data-toggle="tooltip" runat="server" onserverclick="btnref_click" id="btnref" class="btn btn-default btn-sm">
                    <i class="glyphicon glyphicon-refresh"></i>
                    Refresh
                </a>
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
    <th>Date Assign</th>
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
                        <td><%#Eval("DateOfAssign").ToString()%></td>
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
   
    <%--end data grid--%>
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
                <form>
                    <div id="uploader"></div>
                </form>
            </div>
        </div>
    </div>
    <!-- /.col-lg-12 -->
</div>
 </form>
</asp:Content>
