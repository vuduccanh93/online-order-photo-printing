<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admintrator.Master" AutoEventWireup="true" CodeBehind="FAQs.aspx.cs" Inherits="ODPP.Admin.FAQs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h3><i class=" fa fa-comment"></i> FAQs Manager</h3>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="Form1" runat="server">
    
    <div class="row">
    <div class="col-lg-12">
        <div class="box">
             <header>
                <div class="icons"><i class="fa fa-th-large"></i></div>
                <h5>FAQs Data Table</h5>
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
    <th>Question</th>
    <th>Answer</th>
    <th>Function</th>
</tr>
</thead>
<tbody>


            <asp:Repeater ID="rpFAQs" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><asp:CheckBox ID="chkSelect" runat="server" /></td>
                        <td style="display:none"><%#Eval("FaqID").ToString()%></td>
                        <td><%#Eval("Question").ToString()%></td>
                       <td><%#Eval("Answer").ToString()%></td>
                        
                       
                       
                        <td>
                            <asp:ImageButton ID="cmdEdit" runat="server" 
                    AlternateText="Sửa" 
                    CommandArgument='<%#DataBinder.Eval(Container.DataItem,"FaqID")%>' 
                    CommandName="Edit" CssClass="Edit" ImageUrl="assets/img/edit.png" 
                    ToolTip="Sửa" />
                        <asp:ImageButton ID="cmdDelete" runat="server" 
                    AlternateText="Xóa" 
                    CommandArgument='<%#DataBinder.Eval(Container.DataItem,"FaqID")%>' 
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
    </form>
    <%--end data grid--%>
    <div class="row">
    <div class="col-lg-12">
        <div class="box">
            <header class="dark">
                <div class="icons"><i class="fa fa-th-large"></i></div>
                <h5>FAQs Update Data</h5>
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
                 <form class="form-horizontal" id="popup-validation">

                    <div class="row">
                        
                        <div class="col-lg-9 pd-20">
                        
                       <div class="form-group">
                        <label class="control-label col-lg-4" for="txtQuestion">Question</label>
                        <div class="col-lg-4">
                            <textarea placeholder="Question" runat="server" type="text" class="validate[required,maxSize[30]] form-control" name="req" id="txtQuestion"></textarea>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-lg-4" for="txtAnswer">Answer</label>

                        <div class=" col-lg-4">
                            <textarea placeholder="Answer" class="validate[required,,maxSize[30]] form-control" type="text" name="numbe2r" id="txtAnswer" runat="server"></textarea>
                           
                        </div>
                    </div>
                    <div class="form-actions no-margin-bottom">
                        <label class="control-label col-lg-5"></label>
                        <button type="submit" value="Save"  id="btnSave" onclick="btnSave_click" class="btn btn-default"><i class=" fa fa-save"></i>Save</button>
                        
                         <button type="reset" value="Clear"  id="btnClear" onclick="btnClear_Click" mutiline class="btn btn-default"><i class=" fa fa-cut">Clear</i></button>
                
                    </div>
                                                
                        </div>
                    </div>


                   

                    
                </form>
            </div>
        </div>
    </div>
    <!-- /.col-lg-12 -->
</div>
<!-- /.row -->
</asp:Content>
