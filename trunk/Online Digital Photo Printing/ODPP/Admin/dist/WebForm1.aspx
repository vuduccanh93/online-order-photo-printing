<form action="#" class="form-horizontal" id="block-validate">
         
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