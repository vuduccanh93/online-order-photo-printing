<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admintrator.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="ODPP.Admin.Order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h3><i class="  fa fa-truck"></i> Order Photo Manager</h3>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
   <form id="Form1" runat="server">
    
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


            <asp:Repeater ID="rpOrder" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><asp:CheckBox ID="chkSelect" runat="server" /></td>
                        <td style="display:none"><%#Eval("OrderID").ToString()%></td>                        
                       <td><%#Eval("FirstName").ToString()%> <%#Eval("LastName").ToString()%></td>                        
                        <td><%#Eval("DateOfOrder").ToString()%></td>
                        <td><%#Eval("DateOfAssign").ToString()%></td>
                        <td><%#Eval("TotalPrice").ToString()%></td>
                        <td><%#Eval("Status").ToString()%></td>
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
    </form>
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
                <form class="form-horizontal" id="popup-validation">

                    <div class="row">
                        <div class="col-lg-3">
                             <div class="form-group pd-30">
                                
                                
                                    <div class="fileupload fileupload-new" data-provides="fileupload">
                                        <div class="fileupload-new thumbnail" style="width: 200px; height: 150px;">
                                            <img src="assets/img/no-image.jpeg" /></div>
                                        <div class="fileupload-preview fileupload-exists thumbnail" style="max-width: 200px; max-height: 150px; line-height: 20px;"></div>
                                        <div>
                                            <span class="btn btn-file btn-primary"><span class="fileupload-new">Select image</span><span class="fileupload-exists">Change</span><input type="file" /></span>
                                            <a href="#" class="btn btn-danger fileupload-exists" data-dismiss="fileupload">Remove</a>
                                        </div>
                                    </div>
                                
                            </div>
                         </div>
                        <div class="col-lg-9 pd-20">
                        
                       <div class="form-group">
                        <label class="control-label col-lg-4" for="txtUserName">UserName</label>
                        <div class="col-lg-4">
                            <input placeholder="User Name" runat="server" type="text" class="validate[required] form-control" name="req" id="UserName">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-lg-4" for="txtPassword">Password</label>

                        <div class=" col-lg-4">
                            <input placeholder="Password" class="validate[required] form-control" runat="server" type="password" name="pass1" id="txtPassword"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label  class="control-label col-lg-4" for="txtPassword2">Confirm Password</label>

                        <div class=" col-lg-4">
                            <input placeholder="Confirm Password" class="validate[required,equals[pass1]] form-control" type="password" runat="server" name="pass2"
                                   id="txtPassword2"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-lg-4" for="txtRole">Admin Roles</label>

                        <div class="col-lg-4">
                        
                            <select name="sport2" runat="server" id="txtRole"  class="validate[required] form-control">
                                <option value="">Choose a Roles</option>
                                <option value="option1">Admintrator</option>
                                <option value="option2">Admin</option>
                                <option value="option3">Manager</option>
                            </select>
                        </div>
                    </div>

                    
                     <div class="form-group">
                        <label class="control-label col-lg-4" for="txtFirstName">First Name</label>
                        <div class="col-lg-4">
                            <input placeholder="First Name" runat="server" type="text" class="validate[required,minSize[5],maxSize[50]] form-control" name="req" id="txtFirstName">
                        </div>
                    </div>
                     <div class="form-group">
                        <label class="control-label col-lg-4" for="txtLastName">LastName</label>
                        <div class="col-lg-4">
                            <input placeholder="Last Name" runat="server" type="text" class="validate[required,minSize[5],maxSize[50]] form-control" name="req" id="txtLastName">
                        </div>
                    </div>
                     <div class="form-group">
                        <label class="control-label col-lg-4" for="txtsex">Gender</label>

                        <div class="col-lg-4">
                            <select name="sport2" runat="server" id="txtsex" multiple class="validate[required] form-control">
                                <option value="">Choose a gender</option>
                                <option value="true">Male</option>
                                <option value="false">Female</option>
                                
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-lg-4">E-mail</label>

                        <div class=" col-lg-4">
                            <input placeholder="E-mail" class="validate[required,custom[email]] form-control" type="text" name="email1"
                                   id="email1"/>
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
                        <label class="control-label col-lg-4" for="dp1">Date Of birth</label>

                        <div class=" col-lg-4">
                             <input type="text" class="form-control" value="02-16-2012" id="dp1">
                             <%--<input placeholder="Date of Birth" class="validate[required,custom[date]] form-control" type="text"
                                   name="date3" id="dp1"/>--%>
                            <span class="help-block">ISO 8601 dates only YYYY-mm-dd</span>
                           
                           
                       
                        </div>
                    </div>
                    <div class="form-actions no-margin-bottom">
                        <label class="control-label col-lg-5"></label>
                        <button type="submit" value="Save"  id="btnSave" onclick="btnSave_click" class="btn btn-default"><i class=" fa fa-save"></i>Save</button>
                        
                         <button type="reset" value="Clear"  id="btnClear" onclick="btnClear_Click" class="btn btn-default"><i class=" fa fa-cut">Clear</i></button>
                
                    </div>
                                                
                        </div>
                    </div>


                   

                    
                </form>
            </div>
        </div>
    </div>
    <!-- /.col-lg-12 -->
</div>
</asp:Content>
