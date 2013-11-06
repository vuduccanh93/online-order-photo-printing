<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/dist/Admin.Master" AutoEventWireup="true" CodeBehind="AccBank.aspx.cs" Inherits="ODPP.Admin.dist.AccBank" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
 <h3><i class="fa fa-credit-card"></i> Bank Account</h3>
  
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:Panel ID="pnlshow" runat="server">
    <!--Begin Datatables-->

        <div class="box">
            <header>
                <div class="icons"><i class="icon-move"></i></div>
                <h5>Account Bank Management</h5>
            </header>
             <div class="btn-toolbar row">
            
               <div class="col-lg-6 mg-20">
                 <div class="btn-group">
                <a data-placement="bottom" data-original-title="Show / Hide Sidebar" runat="server" data-toggle="tooltip" class="btn btn-default btn-sm" id="btnNew" OnServerClick="btnNew_click">
                 <i class="fa fa-plus"></i> <span >New</span>
                </a>
             <a data-placement="bottom" data-original-title="Show / Hide Sidebar" data-toggle="tooltip" class="btn btn-default btn-sm" id="btnDel" OnServerClick="btnDel_click">
                 <i class="fa fa-minus"></i> <span >Delete</span>
                </a>
                 <a data-placement="bottom" data-original-title="Show / Hide Sidebar" data-toggle="tooltip" class="btn btn-default btn-sm" id="btnRef" OnServerClick="btnRef_click">
                 <i class=" fa fa-refresh"></i> <span >Refresh</span>
                </a>
                 <a data-placement="bottom" data-original-title="Show / Hide Sidebar" data-toggle="tooltip" href="javascript:void(0);"  onclick="window.history.go(-1);" class="btn btn-default btn-sm" id="btnvbak">
                 <i class="fa fa-undo"></i> <span >Back</span>
                </a>
                </div>
               </div>
            
            </div>
            <div id="collapse4" class="body">
                <table id="dataTable" class="table table-bordered table-condensed table-hover table-striped">
                    <thead>
            <tr>
                <th>Rendering engine</th>
                <th>Browser</th>
                <th>Platform(s)</th>
                <th>Engine version</th>
                <th>CSS grade</th>
            </tr>
            </thead>
            <tbody>

                    
                    <tr>
                        <td>Trident</td>
                        <td>Internet Explorer 4.0</td>
                        <td>Win 95+</td>
                        <td>4</td>
                        <td>X</td>
                    </tr>
    
                    <tr>
                        <td>Trident</td>
                        <td>Internet Explorer 5.0</td>
                        <td>Win 95+</td>
                        <td>5</td>
                        <td>C</td>
                    </tr>
    
                    <tr>
                        <td>Trident</td>
                        <td>Internet Explorer 5.5</td>
                        <td>Win 95+</td>
                        <td>5.5</td>
                        <td>A</td>
                    </tr>
    
                    <tr>
                        <td>Trident</td>
                        <td>Internet Explorer 6</td>
                        <td>Win 98+</td>
                        <td>6</td>
                        <td>A</td>
                    </tr>
    
                    <tr>
                        <td>Trident</td>
                        <td>Internet Explorer 7</td>
                        <td>Win XP SP2+</td>
                        <td>7</td>
                        <td>A</td>
                    </tr>
    
                    <tr>
                        <td>Trident</td>
                        <td>AOL browser (AOL desktop)</td>
                        <td>Win XP</td>
                        <td>6</td>
                        <td>A</td>
                    </tr>
    
                    <tr>
                        <td>Gecko</td>
                        <td>Firefox 1.0</td>
                        <td>Win 98+ / OSX.2+</td>
                        <td>1.7</td>
                        <td>A</td>
                    </tr>
    
                    <tr>
                        <td>Gecko</td>
                        <td>Firefox 1.5</td>
                        <td>Win 98+ / OSX.2+</td>
                        <td>1.8</td>
                        <td>A</td>
                    </tr>
    
                    <tr>
                        <td>Gecko</td>
                        <td>Firefox 2.0</td>
                        <td>Win 98+ / OSX.2+</td>
                        <td>1.8</td>
                        <td>A</td>
                    </tr>
    
                    <tr>
                        <td>Gecko</td>
                        <td>Firefox 3.0</td>
                        <td>Win 2k+ / OSX.3+</td>
                        <td>1.9</td>
                        <td>A</td>
                    </tr>
    
                    <tr>
                        <td>Gecko</td>
                        <td>Camino 1.0</td>
                        <td>OSX.2+</td>
                        <td>1.8</td>
                        <td>A</td>
                    </tr>
    
                    <tr>
                        <td>Gecko</td>
                        <td>Camino 1.5</td>
                        <td>OSX.3+</td>
                        <td>1.8</td>
                        <td>A</td>
                    </tr>
    
                    <tr>
                        <td>Gecko</td>
                        <td>Netscape 7.2</td>
                        <td>Win 95+ / Mac OS 8.6-9.2</td>
                        <td>1.7</td>
                        <td>A</td>
                    </tr>
    
                    <tr>
                        <td>Gecko</td>
                        <td>Netscape Browser 8</td>
                        <td>Win 98SE+</td>
                        <td>1.7</td>
                        <td>A</td>
                    </tr>
    
                    <tr>
                        <td>Gecko</td>
                        <td>Netscape Navigator 9</td>
                        <td>Win 98+ / OSX.2+</td>
                        <td>1.8</td>
                        <td>A</td>
                    </tr>
    
                    <tr>
                        <td>Gecko</td>
                        <td>Mozilla 1.0</td>
                        <td>Win 95+ / OSX.1+</td>
                        <td>1</td>
                        <td>A</td>
                    </tr>
    
                    <tr>
                        <td>Gecko</td>
                        <td>Mozilla 1.1</td>
                        <td>Win 95+ / OSX.1+</td>
                        <td>1.1</td>
                        <td>A</td>
                    </tr>
    
                    <tr>
                        <td>Gecko</td>
                        <td>Mozilla 1.2</td>
                        <td>Win 95+ / OSX.1+</td>
                        <td>1.2</td>
                        <td>A</td>
                    </tr>
    
                    <tr>
                        <td>Gecko</td>
                        <td>Mozilla 1.3</td>
                        <td>Win 95+ / OSX.1+</td>
                        <td>1.3</td>
                        <td>A</td>
                    </tr>
    
                    <tr>
                        <td>Gecko</td>
                        <td>Mozilla 1.4</td>
                        <td>Win 95+ / OSX.1+</td>
                        <td>1.4</td>
                        <td>A</td>
                    </tr>
    
                    <tr>
                        <td>Gecko</td>
                        <td>Mozilla 1.5</td>
                        <td>Win 95+ / OSX.1+</td>
                        <td>1.5</td>
                        <td>A</td>
                    </tr>
    
                    <tr>
                        <td>Gecko</td>
                        <td>Mozilla 1.6</td>
                        <td>Win 95+ / OSX.1+</td>
                        <td>1.6</td>
                        <td>A</td>
                    </tr>
    
                    <tr>
                        <td>Gecko</td>
                        <td>Mozilla 1.7</td>
                        <td>Win 98+ / OSX.1+</td>
                        <td>1.7</td>
                        <td>A</td>
                    </tr>
    
                    <tr>
                        <td>Gecko</td>
                        <td>Mozilla 1.8</td>
                        <td>Win 98+ / OSX.1+</td>
                        <td>1.8</td>
                        <td>A</td>
                    </tr>
    
                    <tr>
                        <td>Gecko</td>
                        <td>Seamonkey 1.1</td>
                        <td>Win 98+ / OSX.2+</td>
                        <td>1.8</td>
                        <td>A</td>
                    </tr>
    
                    <tr>
                        <td>Gecko</td>
                        <td>Epiphany 2.20</td>
                        <td>Gnome</td>
                        <td>1.8</td>
                        <td>A</td>
                    </tr>
    
                    <tr>
                        <td>Webkit</td>
                        <td>Safari 1.2</td>
                        <td>OSX.3</td>
                        <td>125.5</td>
                        <td>A</td>
                    </tr>
    
                    <tr>
                        <td>Webkit</td>
                        <td>Safari 1.3</td>
                        <td>OSX.3</td>
                        <td>312.8</td>
                        <td>A</td>
                    </tr>
    
                    <tr>
                        <td>Webkit</td>
                        <td>Safari 2.0</td>
                        <td>OSX.4+</td>
                        <td>419.3</td>
                        <td>A</td>
                    </tr>
    
                    <tr>
                        <td>Webkit</td>
                        <td>Safari 3.0</td>
                        <td>OSX.4+</td>
                        <td>522.1</td>
                        <td>A</td>
                    </tr>
    
                    <tr>
                        <td>Webkit</td>
                        <td>OmniWeb 5.5</td>
                        <td>OSX.4+</td>
                        <td>420</td>
                        <td>A</td>
                    </tr>
    
                    <tr>
                        <td>Webkit</td>
                        <td>iPod Touch / iPhone</td>
                        <td>iPod</td>
                        <td>420.1</td>
                        <td>A</td>
                    </tr>
    
                    <tr>
                        <td>Webkit</td>
                        <td>S60</td>
                        <td>S60</td>
                        <td>413</td>
                        <td>A</td>
                    </tr>
    
                    <tr>
                        <td>Presto</td>
                        <td>Opera 7.0</td>
                        <td>Win 95+ / OSX.1+</td>
                        <td>-</td>
                        <td>A</td>
                    </tr>
    
                    <tr>
                        <td>Presto</td>
                        <td>Opera 7.5</td>
                        <td>Win 95+ / OSX.2+</td>
                        <td>-</td>
                        <td>A</td>
                    </tr>
    
                    <tr>
                        <td>Presto</td>
                        <td>Opera 8.0</td>
                        <td>Win 95+ / OSX.2+</td>
                        <td>-</td>
                        <td>A</td>
                    </tr>
    
                    <tr>
                        <td>Presto</td>
                        <td>Opera 8.5</td>
                        <td>Win 95+ / OSX.2+</td>
                        <td>-</td>
                        <td>A</td>
                    </tr>
    
                    <tr>
                        <td>Presto</td>
                        <td>Opera 9.0</td>
                        <td>Win 95+ / OSX.3+</td>
                        <td>-</td>
                        <td>A</td>
                    </tr>
    
                    <tr>
                        <td>Presto</td>
                        <td>Opera 9.2</td>
                        <td>Win 88+ / OSX.3+</td>
                        <td>-</td>
                        <td>A</td>
                    </tr>
    
                    <tr>
                        <td>Presto</td>
                        <td>Opera 9.5</td>
                        <td>Win 88+ / OSX.3+</td>
                        <td>-</td>
                        <td>A</td>
                    </tr>
    
                    <tr>
                        <td>Presto</td>
                        <td>Opera for Wii</td>
                        <td>Wii</td>
                        <td>-</td>
                        <td>A</td>
                    </tr>
    
                    <tr>
                        <td>Presto</td>
                        <td>Nokia N800</td>
                        <td>N800</td>
                        <td>-</td>
                        <td>A</td>
                    </tr>
    
                    <tr>
                        <td>Presto</td>
                        <td>Nintendo DS browser</td>
                        <td>Nintendo DS</td>
                        <td>8.5</td>
                        <td>C/A1</td>
                    </tr>
    
                    <tr>
                        <td>KHTML</td>
                        <td>Konqureror 3.1</td>
                        <td>KDE 3.1</td>
                        <td>3.1</td>
                        <td>C</td>
                    </tr>
    
                    <tr>
                        <td>KHTML</td>
                        <td>Konqureror 3.3</td>
                        <td>KDE 3.3</td>
                        <td>3.3</td>
                        <td>A</td>
                    </tr>
    
                    <tr>
                        <td>KHTML</td>
                        <td>Konqureror 3.5</td>
                        <td>KDE 3.5</td>
                        <td>3.5</td>
                        <td>A</td>
                    </tr>
    
                    <tr>
                        <td>Tasman</td>
                        <td>Internet Explorer 4.5</td>
                        <td>Mac OS 8-9</td>
                        <td>-</td>
                        <td>X</td>
                    </tr>
    
                    <tr>
                        <td>Tasman</td>
                        <td>Internet Explorer 5.1</td>
                        <td>Mac OS 7.6-9</td>
                        <td>1</td>
                        <td>C</td>
                    </tr>
    
                    <tr>
                        <td>Tasman</td>
                        <td>Internet Explorer 5.2</td>
                        <td>Mac OS 8-X</td>
                        <td>1</td>
                        <td>C</td>
                    </tr>
    
                    <tr>
                        <td>Misc</td>
                        <td>NetFront 3.1</td>
                        <td>Embedded devices</td>
                        <td>-</td>
                        <td>C</td>
                    </tr>
    
                    <tr>
                        <td>Misc</td>
                        <td>NetFront 3.4</td>
                        <td>Embedded devices</td>
                        <td>-</td>
                        <td>A</td>
                    </tr>
    
                    <tr>
                        <td>Misc</td>
                        <td>Dillo 0.8</td>
                        <td>Embedded devices</td>
                        <td>-</td>
                        <td>X</td>
                    </tr>
    
                    <tr>
                        <td>Misc</td>
                        <td>Links</td>
                        <td>Text only</td>
                        <td>-</td>
                        <td>X</td>
                    </tr>
    
                    <tr>
                        <td>Misc</td>
                        <td>Lynx</td>
                        <td>Text only</td>
                        <td>-</td>
                        <td>X</td>
                    </tr>
    
                    <tr>
                        <td>Misc</td>
                        <td>IE Mobile</td>
                        <td>Windows Mobile 6</td>
                        <td>-</td>
                        <td>C</td>
                    </tr>
    
                    <tr>
                        <td>Misc</td>
                        <td>PSP browser</td>
                        <td>PSP</td>
                        <td>-</td>
                        <td>C</td>
                    </tr>
    
                    <tr>
                        <td>Other browsers</td>
                        <td>All others</td>
                        <td>-</td>
                        <td>-</td>
                        <td>U</td>
                    </tr>
    

            </tbody>
                </table>
            </div>
            
        </div>

<!-- /.row -->
<!--End Datatables-->
    </asp:Panel>
    
    <asp:Panel ID="pnlupdate" runat="server" Visible="false">
    <div class="box" >
        <div class="row"style="padding:20px">
        
           <form role="form" >
        <div class="col-xs-6 col-md-4">
           <div class="form-group">
          
           <a class="user-link" href="#">
            <img class="media-object img-thumbnail user-img" id="txtavt" alt="User Picture" src="assets/img/no-images.jpg"">
            </a>
    </div>
        <div class="form-group">
             <label for="txtavt">Avatar</label>
            <input type="file" id="exampleInputFile">
            <p class="help-block">Click if change your avatar</p>
          </div>
     </div>
        <div class="col-xs-6 col-md-4">           
        <form class="form-horizontal" id="popup-validation">
         
            <asp:TextBox ID="CreditCard" CssClass="form-control" runat="server" Visible="false"></asp:TextBox>
        
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
            </label><label class="checkbox-inline"><label><input type="radio" name="optionsRadios" id="Radio1" value="option2">
          Female
          </label>
        </label></div>   
         
          <div class="form-group">
            <label for="dp2">Date Of Birth</label>
         <input type="text" class="form-control" value="02/16/12" data-date-format="mm/dd/yy" id="dp2">
          
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
          </form>
       
        </div>
    </div>
    </asp:Panel>
</asp:Content>
