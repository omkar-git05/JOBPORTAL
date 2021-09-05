<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_master.master" AutoEventWireup="true" CodeFile="admin_jobs.aspx.cs" Inherits="admin_jobs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <br />
        <div class="btn-group-vertical">
            <asp:HyperLink ID="HyperLink1" runat="server" class="btn btn-dark" NavigateUrl="~/admin_posted_jobs.aspx">Posted Jobs</asp:HyperLink>
            <br /><br />
            <asp:HyperLink ID="HyperLink2" runat="server" class="btn btn-dark" NavigateUrl="~/admin_applied_jobs.aspx">Applied Jobs</asp:HyperLink>
            <br /><br />
            <asp:HyperLink ID="HyperLink3" runat="server" class="btn btn-dark" NavigateUrl="~/admin_country.aspx">Country</asp:HyperLink>
            <br /><br />
            <asp:HyperLink ID="HyperLink4" runat="server" class="btn btn-dark" NavigateUrl="~/admin_functionalarea.aspx">Functional area</asp:HyperLink>
            <br /><br />
            <asp:HyperLink ID="HyperLink5" runat="server" class="btn btn-dark" NavigateUrl="~/adminUserPasswd.aspx">Username Password</asp:HyperLink>
            <br /><br />
        </div>
    </div>
</asp:Content>

