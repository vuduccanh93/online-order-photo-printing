<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admintrator.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="ODPP.Admin.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

<form runat="server">
    <div class="text-center">
    <ul class="stats_box">
	<li>
	    <div class="sparkline bar_week"></div>
	    <div class="stat_text">
		<strong><asp:Label ID="User" runat="server" Text=""></asp:Label></strong><h5>Customer User</h5>
		<span class="percent down"> <i class="fa fa-caret-down"></i> -16%</span>
	    </div>
	</li>
	<li>
	    <div class="sparkline line_day"></div>
	    <div class="stat_text">
		<strong><asp:Label ID="Order" runat="server" Text=""></asp:Label></strong><h5>Photo Order</h5>
		<span class="percent up"> <i class="fa fa-caret-up"></i> +23%</span>
	    </div>
	</li>
	<%--<li>
	    <div class="sparkline pie_week"></div>
	    <div class="stat_text">
		<strong><asp:Label ID="wekPri" runat="server" Text=""></asp:Label>Week Price</strong>
		<span class="percent"> 0%</span>
	    </div>
	</li>--%>
	<li>
	    <div class="sparkline stacked_month"></div>
	    <div class="stat_text">
		<strong><asp:Label ID="totalsPri" runat="server" Text=""></asp:Label></strong><h5>Totals Prices</h5>
		<span class="percent down"> <i class="fa fa-caret-down"></i> -10%</span>
	    </div>
	</li>
    </ul>
</div>
<hr />
   <div style="min-height:300px;text-align:center">
        <img src="assets/img/logo2.PNG" />
       <h1> Welcome to admintrator</h1> 
       <h3>Online digital photo printing</h3>

   </div>
</form>
</asp:Content>
