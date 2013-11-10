<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admintrator.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="ODPP.Admin.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h3><i class="fa fa-globe"></i>Contact Account Manager</h3>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
  <form  id="popup-validation" class="form-horizontal"> 
    <form id="Form1" runat="server" class="form-horizontal">
    <asp:Panel ID="pnlshow" runat="server">
      <div class="row">
    <div class="col-lg-12">
        <div class="box">
             <header>
                <div class="icons"><i class="fa fa-th-large"></i></div>
                <h5>Contact Data Table</h5>
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
                
                
                <asp:Button ID="btnAdd" CssClass="btn btn-default btn-sm" OnClick="btnadd_click" runat="server" Text="Add" />   
                <asp:Button ID="btnDel" CssClass="btn btn-default btn-sm" OnClick="btndel_click" runat="server" Text="Delete" />
                <asp:Button ID="btnRef" CssClass="btn btn-default btn-sm" OnClick="btnref_click" runat="server" Text="Refresh"/>
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
    <th>Name</th>
    <th>E-mail</th>
    <th>Message</th>
    <th>Phone</th>
    
    <th>Function</th>
</tr>
</thead>
<tbody>


            <asp:Repeater ID="rpContact" runat="server" 
                onitemcommand="rpContact_ItemCommand">
                <ItemTemplate>
                    <tr>
                        <td><asp:CheckBox ID="chkSelect" runat="server" /></td>
                        <td style="display:none"><%#Eval("ContactID").ToString()%></td>
                        <td><%#Eval("Name").ToString()%></td>
                        <td><%#Eval("Email").ToString()%></td>
                        <td><%#Eval("Message").ToString()%> </td>
                        <td><%#Eval("Phone").ToString()%></td>
                       
                        
                        <td>
                            <asp:ImageButton ID="cmdEdit" runat="server" 
                    AlternateText="Sửa" 
                    CommandArgument='<%#DataBinder.Eval(Container.DataItem,"ContactID")%>' 
                    CommandName="Edit" CssClass="Edit" ImageUrl="assets/img/edit.png" 
                    ToolTip="Sửa"  />
                        <asp:ImageButton ID="cmdDelete" runat="server" 
                    AlternateText="Xóa" 
                    CommandArgument='<%#DataBinder.Eval(Container.DataItem,"ContactID")%>' 
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
    <asp:Panel ID="pnlupdate" runat="server" Visible="false">
    <div class="row">
    <div class="col-lg-12">
        <div class="box">
            <header class="dark">
                <div class="icons"><i class="fa fa-th-large"></i></div>
                <h5>Contact Update Data</h5>
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
                <div class="btn-toolbar mg-b10 ">
                        <div class="btn-group">
                
                
                            <a id="A4" href="javascript:void(0);" onclick="window.history.go(-1);"  data-toggle="tooltip" class="btn btn-default btn-sm">
                                <i class="fa fa-undo"></i>
                                Back
                            </a>
                        </div>
                        </div>
              <form class="form-horizontal">
                    
                    <div class="row">
                        
                        <div class="col-lg-9 pd-20">
                          <input placeholder="txtID" runat="server" visible="false" type="text" class="validate[required,minSize{5}] form-control" name="txtID" id="txtID">
                       <div class="form-group">
                        <label class="control-label col-lg-4" for="txtName">Name</label>
                        <div class="col-lg-4">
                            <input placeholder="Name" runat="server" type="text" class="validate[required,minSize{5}] form-control" name="req" id="txtName">
                        </div>
                    </div>
                 
                     
                    <div class="form-group">
                        <label class="control-label col-lg-4" for="txtemail">E-mail</label>

                        <div class=" col-lg-4">
                            <input placeholder="E-mail" runat="server" class="validate[required,custom[email]] form-control" type="text" name="txtemail"
                                   id="txtemail"/>
                        </div>
                    </div>



                    <div class="form-group">
                        <label class="control-label col-lg-4" for="txtPhone">Phone Number</label>

                        <div class=" col-lg-4">
                         <div class="input-group">
                                <input placeholder="Phone number" runat="server" class="validate[required,minSize[9]] form-control" type="text" id="txtPhone" data-mask="(999) 999-9999">
                                <span class="input-group-addon">(999) 999-9999</span>
                            </div>
                            
                        </div>
                    </div>

                   <div class="form-group">
                        <label class="control-label col-lg-4" for="txtMessage">Message</label>
                        <div class="col-lg-4">
                            <textarea placeholder="Message" runat="server" type="text" class="validate[required,minSize[5],maxSize[100]] form-control" name="req" id="txtMessage"></textarea>
                        </div>
                    </div>

                    
                    <div class="form-actions no-margin-bottom">
                        <label class="control-label col-lg-5"></label>
                         <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_click"  CssClass="btn btn-default"/>
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
    
 </form>
 </form>
<!-- /.row -->
</asp:Content>
