<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admintrator.Master" AutoEventWireup="true" CodeBehind="PhotoPrices.aspx.cs" Inherits="ODPP.Admin.PhotoPrices" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h3><i class=" fa fa-usd"></i>Banks Account Manager</h3>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="Form1" runat="server">
    
    <div class="row">
    <div class="col-lg-12">
        <div class="box">
             <header>
                <div class="icons"><i class="fa fa-th-large"></i></div>
                <h5>Photo Prices Data Table</h5>
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
        <asp:DataGrid ID="grvPrices" runat="server" 
    AllowPaging="True" AutoGenerateColumns="False" 
                    CssClass="table table-bordered table-condensed table-hover table-striped dataTable" PagerStyle-HorizontalAlign="Center" 
    PagerStyle-Mode="NumericPages" PageSize="25" width="100%">
            <HeaderStyle CssClass="trHeader" />
            <ItemStyle CssClass="trOdd" />
            <AlternatingItemStyle CssClass="trEven" />
            <Columns>
                <asp:TemplateColumn ItemStyle-CssClass="tdCenter">
                    <HeaderTemplate>
                        <asp:CheckBox ID="chkSelectAll" Runat="server" 
                    AutoPostBack="True" oncheckedchanged="chkSelectAll_CheckedChanged" />
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:CheckBox ID="chkSelect" runat="server" />
                    </ItemTemplate>
                    <ItemStyle CssClass="tdCenter" />
                </asp:TemplateColumn>
                <asp:BoundColumn DataField="SizeID" HeaderText="SizeID" 
            Visible="False" />
             <asp:BoundColumn DataField="Size" HeaderText="Photo Size" ItemStyle-CssClass="Text" Visible="true" />
               
               
                
                <asp:BoundColumn DataField="Price" HeaderText="Photo Price" ItemStyle-CssClass="Text" Visible="true" />
               
                
                <asp:TemplateColumn ItemStyle-CssClass="Function">
                    <HeaderTemplate>
                       Function
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:ImageButton ID="cmdEdit" runat="server" 
                    AlternateText="Sửa" 
                    CommandArgument='<%#DataBinder.Eval(Container.DataItem,"SizeID")%>' 
                    CommandName="Edit" CssClass="Edit" ImageUrl="assets/img/edit.png" 
                    ToolTip="Sửa" />
                        <asp:ImageButton ID="cmdDelete" runat="server" 
                    AlternateText="Xóa" 
                    CommandArgument='<%#DataBinder.Eval(Container.DataItem,"SizeID")%>' 
                    CommandName="Delete" CssClass="Delete" 
                    ImageUrl="assets/img/delete.png" 
                    OnClientClick="javascript:return confirm('Are you want delete?');" ToolTip="Xóa" />
                    </ItemTemplate>
                    <ItemStyle CssClass="Function" />
                </asp:TemplateColumn>
            </Columns>
            <PagerStyle CssClass="Paging" HorizontalAlign="Center" 
        Mode="NumericPages" NextPageText="Previous" Position="Bottom" 
        PrevPageText="Next" />
        </asp:DataGrid>
    
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
                <h5>Photo Prices Update Data</h5>
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
                        <label class="control-label col-lg-4" for="txtSize">Photo Size</label>
                        <div class="col-lg-4">
                            <input placeholder="Photo Size" runat="server" type="text" class="validate[required,maxSize[10]] form-control" name="req" id="txtSize"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-lg-4" for="txtPrice">Photo Price</label>

                        <div class=" col-lg-4">
                            <input placeholder="Photo Price" class="validate[required,custom[number]] form-control" type="text" name="numbe2r" id="txtPrice" runat="server"/>
                            <span class="help-block">a signed floating number, ie: -3849.354, 38.00, 38, .77</span>
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
