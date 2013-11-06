<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/dist/Admin.Master" AutoEventWireup="true" CodeBehind="AccAdmin.aspx.cs" Inherits="ODPP.Admin.dist.assets.AccAdmin" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h3><i class="fa fa-group"></i> Admin Account</h3>
  
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="pnlshow" runat="server">
    <!--Begin Datatables-->

        <div class="box">
            <header>
                <div class="icons"><i class="icon-move"></i></div>
                <h5>Account Admin Management</h5>
            </header>
             <div class="btn-toolbar row">
            
               <div class="col-lg-6 mg-20">
                 <div class="btn-group">
                <a data-placement="bottom" data-original-title="Show / Hide Sidebar" runat="server" data-toggle="tooltip" class="btn btn-default btn-sm" id="btnNew" OnServerClick="btnNew_click">
                 <i class="fa fa-plus"></i> <span >New</span>
                </a>
             <a data-placement="bottom" data-original-title="Show / Hide Sidebar" data-toggle="tooltip" class="btn btn-default btn-sm" runat="server" id="btnDel" OnServerClick="btnDel_click">
                 <i class="fa fa-minus"></i> <span >Delete</span>
                </a>
                 <a data-placement="bottom" data-original-title="Show / Hide Sidebar" data-toggle="tooltip" class="btn btn-default btn-sm" runat="server" id="btnRef" OnServerClick="btnRef_click">
                 <i class=" fa fa-refresh"></i> <span >Refresh</span>
                </a>
                 <a data-placement="bottom" data-original-title="Show / Hide Sidebar" data-toggle="tooltip" href="javascript:void(0);" runat="server"  onclick="window.history.go(-1);" class="btn btn-default btn-sm" id="btnvbak">
                 <i class="fa fa-undo"></i> <span >Back</span>
                </a>
                </div>
               </div>
            
            </div>
            <div id="collapse4" class="body"
                
              

             </div>
            
                <asp:DataGrid ID="grvAccAdmin" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" CssClass="table table-bordered table-condensed table-hover table-striped dataTable" 
                    PagerStyle-HorizontalAlign="Center" PagerStyle-Mode="NumericPages" 
                    PageSize="25" width="100%">
                    <HeaderStyle CssClass="trHeader" />
                    <ItemStyle CssClass="trOdd" />
                    <AlternatingItemStyle CssClass="trEven" />
                    <Columns>
                        <asp:TemplateColumn ItemStyle-CssClass="tdCenter">
                            <HeaderTemplate>
                                <asp:CheckBox ID="chkSelectAll" Runat="server" AutoPostBack="true"
                                 oncheckedchanged="chkSelectAll_CheckedChanged"/>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:CheckBox ID="chkSelect" runat="server" />
                            </ItemTemplate>
                            <ItemStyle CssClass="tdCenter" />
                        </asp:TemplateColumn>
                        <asp:BoundColumn DataField="AdminID" HeaderText="AdminID" Visible="False" />
                        <asp:BoundColumn DataField="AdminRole" HeaderText="Admin Roles" 
                            ItemStyle-CssClass="Text" Visible="true" />
                        <asp:BoundColumn DataField="UserName" HeaderText="UserName" ItemStyle-CssClass="Text" 
                            Visible="true" />
                        <asp:BoundColumn DataField="FirstName" HeaderText="First Name" ItemStyle-CssClass="Text" 
                            Visible="true" />
                        <asp:TemplateColumn ItemStyle-CssClass="Function">
                            <HeaderTemplate>
                                Gender
                            </HeaderTemplate>
                            <ItemTemplate>
                                <%# Eval("Sex").ToString() == "1" ? "Male" : "Female" %>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:BoundColumn DataField="DateOfBirth" HeaderText="Date Of Birth" 
                            ItemStyle-CssClass="Text" Visible="true" />
                        
                        <asp:TemplateColumn ItemStyle-CssClass="Function">
                         <HeaderTemplate>Function</HeaderTemplate>
                          <ItemTemplate><asp:ImageButton ID="cmdEdit" runat="server" AlternateText="Sửa" CommandName="Edit" CssClass="Edit" ToolTip="Sửa" ImageUrl="../dist/assets/img/pattern/edit.png" CommandArgument='<%#DataBinder.Eval(Container.DataItem,"AdminID")%>' />
                          <asp:ImageButton ID="cmdDelete" runat="server" AlternateText="Xóa" CommandName="Delete" CssClass="Delete" ToolTip="Xóa" ImageUrl="../dist/assets/img/pattern/delete.png" CommandArgument='<%#DataBinder.Eval(Container.DataItem,"AdminID")%>' OnClientClick="javascript:return confirm('Bạn có muốn xóa?');" />
                          </ItemTemplate>
                            
                           </asp:TemplateColumn>
                    </Columns>
                    <PagerStyle CssClass="Paging" HorizontalAlign="Center" Mode="NumericPages" 
                        NextPageText="Previous" Position="Bottom" PrevPageText="Next" />
                </asp:DataGrid>
            
        </div>

<!-- /.row -->
<!--End Datatables-->
    </asp:Panel>
    
    <asp:Panel ID="pnlupdate" runat="server" Visible="false">
    <div class="box" >
        <div class="row"style="padding:20px">
        
          <form class="form-horizontal" id="popup-validation">
        <div class="col-xs-6 col-md-4">
           <div class="form-group">
          
           <a class="user-link" href="#">
            <img class="media-object img-thumbnail user-img" id="txtavt" alt="User Picture" src="assets/img/no-images.jpg"">
            </a>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
        <div class="form-group">
             <label for="txtavt">Avatar</label>
            <input type="file" id="exampleInputFile">
            <p class="help-block">Click if change your avatar</p>
          </div>
     </div>
        <div class="col-xs-6 col-md-4">           
        
         
            <asp:TextBox ID="txtAdminID" CssClass="form-control" runat="server" Visible="false"></asp:TextBox>
        
          <div class="form-group">
             <label for="txtUserName">User Name</label>        
            <asp:TextBox ID="txtUserName" CssClass="form-control" runat="server" 
                  placeholder="UserName" ></asp:TextBox>           
                      
          </div>
          <div class="form-group">

            <label for="txtPassword">Password</label>
            
            <asp:TextBox ID="txtPassword" CssClass="form-control" runat="server" TextMode="Password"
             placeholder="Password"></asp:TextBox>
             
          </div>
           <div class="form-group">
            <label for="txtAdminRole">Admin Role</label>
           
               <asp:DropDownList ID="txtAdminRole" runat="server" CssClass="form-control" placeholder="Admin Role">
                   <asp:ListItem>Admintrator</asp:ListItem>
                   <asp:ListItem>Admin</asp:ListItem>
                   <asp:ListItem>Manager</asp:ListItem>
               </asp:DropDownList>
          </div>
          <div class="form-group">
            <label for="txtUserName">First Name</label>
            <asp:TextBox ID="txtFirstName" CssClass="form-control" runat="server" placeholder="First Name"></asp:TextBox>
          
          </div>
          <div class="form-group">
            <label for="txtLastName">Last Name</label>
            <asp:TextBox ID="txtLastName" CssClass="form-control" runat="server" placeholder="Last Name"></asp:TextBox>
          
          </div>
          <div class="form-group">
            <label for="Gender">Gender</label>
          <label class="checkbox-inline">
             
            <label>
            <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
          Male
          </label>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label><label class="checkbox-inline"><label><input type="radio" name="optionsRadios" id="Radio1" value="option2">
          Female
          </label>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label></div>   
         
          <div class="form-group">
            <label for="dp2">Date Of Birth</label>
         <input type="text" class="form-control" value="02/16/12" runat="server" data-date-format="mm/dd/yy" id="dp2">
          
          </div>
          
          <div class="form-group">
            <label for="txtPhone">Phone</label>
           
             <div class="input-group">
                  <asp:TextBox ID="txtPhone" CssClass="form-control" runat="server" placeholder="Phone" data-mask="+33 999 999 999"></asp:TextBox>
                                
                  <span class="input-group-addon">+33 999 999 999</span>
                </div>
          </div>
          <div class="form-group">
            <label for="txtEmail">E-mail</label>
             <asp:TextBox ID="txtEmail" CssClass="validate[required,custom[email]] form-control" runat="server" placeholder="E-mail" ></asp:TextBox>
            
          </div>
          
          
          
          <a id="A1"  class="btn btn-default btn-line" data-original-title="" title="" OnServerClick="btnSave_click" runat="server"><i class="fa fa-save"></i> Save</a>
           <a data-placement="bottom" data-original-title="Show / Hide Sidebar" data-toggle="tooltip" href="javascript:void(0);" runat="server"  onclick="window.history.go(-1);" class="btn btn-default btn-sm" id="A2">
                 <i class="fa fa-undo"></i> <span >Back</span>
                </a>

          </form>
           
       
        </div>
    </div>
    </asp:Panel>
    
</asp:Content>
