<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admintrator.Master" AutoEventWireup="true" CodeBehind="AccBank.aspx.cs" Inherits="ODPP.Admin.AccBank" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3><i class=" fa fa-credit-card"></i> Banks Account View</h3>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="Form1" runat="server">
    
    <div class="row">
    <div class="col-lg-12">
        <div class="box">
             <header>
                <div class="icons"><i class="fa fa-th-large"></i></div>
                <h5>Banks Acount Data Table</h5>
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
    
    <th style="display:none">ID</th>
    <th>Card Number</th>
    
  
</tr>
</thead>
<tbody>


            <asp:Repeater ID="rpAccBank" runat="server">
                <ItemTemplate>
                    <tr>
                       
                        <td style="display:none"><%#Eval("AccountID").ToString()%></td>
                        <td><%#Eval("CreditNumber").ToString()%></td>                       
                        
                        
                       
                       
                        
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
    </form>
    <%--end data grid--%>
   
    <!-- /.col-lg-12 -->
</div>
<!-- /.row -->
</asp:Content>
