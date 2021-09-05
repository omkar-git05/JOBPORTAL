<%@ Page Title="" Language="C#" MasterPageFile="~/Jobseeker.master" AutoEventWireup="true" CodeFile="search_job.aspx.cs" Inherits="search_job" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <h1 class="align-self-sm-center font-weight-bolder"> Search Job</h1>
    </div>
    <div class="container">
        <br />
        <asp:Panel ID="Panel1" runat="server" class="container align-content-center">
            <div>
                <asp:HyperLink ID="HyperLink1" class="btn btn-secondary" runat="server" NavigateUrl="~/search_by_city.aspx" > Search by City</asp:HyperLink>
            </div>
            <br />
            <div>
                <asp:HyperLink ID="HyperLink2" class="btn btn-secondary" runat="server" NavigateUrl="~/search_by_company.aspx">Search by Company</asp:HyperLink>
            </div>
            <br />

            <div>
                <asp:HyperLink ID="HyperLink3" class="btn btn-secondary" runat="server" NavigateUrl="~/search_by_functionalarea.aspx">search by Functional Area </asp:HyperLink>
            </div>
            <br />

            <div>
                <asp:HyperLink ID="HyperLink4" class="btn btn-secondary" runat="server" NavigateUrl="~/my_job.aspx">My jobs</asp:HyperLink>
            </div>
            <br />

        </asp:Panel>
        <br />
    </div>
</asp:Content>

