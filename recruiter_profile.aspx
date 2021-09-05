<%@ Page Title="" Language="C#" MasterPageFile="~/Recruiter_master.master" AutoEventWireup="true" CodeFile="recruiter_profile.aspx.cs" Inherits="recruiter_profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <div class="container">
        <div class="container">
            <br />
            <h1 class="font-weight-bolder"> Your Profile</h1>
            <hr />
        </div>
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="958px" AutoGenerateRows="False" DataKeyNames="company_id"  class="table table-striped table-info">
            <Fields>
                <asp:BoundField DataField="company_id" HeaderText="company_id" InsertVisible="False" ReadOnly="True" SortExpression="company_id" />
                <asp:BoundField DataField="company_name" HeaderText="company_name" SortExpression="company_name" />
                <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                <asp:BoundField DataField="que_id" HeaderText="que_id" SortExpression="que_id" />
                <asp:BoundField DataField="ansr" HeaderText="ansr" SortExpression="ansr" />
                <asp:BoundField DataField="contact_person" HeaderText="contact_person" SortExpression="contact_person" />
                <asp:BoundField DataField="company_contact" HeaderText="company_contact" SortExpression="company_contact" />
                <asp:BoundField DataField="company_addrs" HeaderText="company_addrs" SortExpression="company_addrs" />
                <asp:BoundField DataField="company_email" HeaderText="company_email" SortExpression="company_email" />
                <asp:BoundField DataField="company_details" HeaderText="company_details" SortExpression="company_details" />
               
            </Fields>
        </asp:DetailsView>
        <br />
        </div>
</asp:Content>

