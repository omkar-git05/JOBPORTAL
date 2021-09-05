<%@ Page Title="" Language="C#" MasterPageFile="~/Recruiter_master.master" AutoEventWireup="true" CodeFile="search_candidate.aspx.cs" Inherits="search_candidate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <h1 class="font-weight-bolder">Search candidate</h1>
        <hr />
        <h3> Candidate Education</h3>
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="btn btn-secondary">
            <asp:ListItem Value="0">select</asp:ListItem>
            <asp:ListItem Value="1">10 th</asp:ListItem>
            <asp:ListItem Value="2">12 th</asp:ListItem>
            <asp:ListItem Value="3">B.Sc.IT</asp:ListItem>
            <asp:ListItem Value="4">B.com</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" CssClass="btn btn-secondary" Text="Search" OnClick="Button1_Click" />
        <br />
        <br />
        <hr />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" DataKeyNames="path" class="table table-striped table-info table-responsive scrollable">
                <Columns>
                   <asp:TemplateField HeaderText="select" SortExpression="candidate_id">
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" />
                        </ItemTemplate>
                   </asp:TemplateField>
                   <asp:BoundField DataField="candidate_id" HeaderText="Candidate Id"/>
                   <asp:BoundField DataField="first_name" HeaderText="First Name" />
                   <asp:BoundField DataField="last_name" HeaderText="Last Name" />
                   <asp:BoundField DataField="candidate_addrs" HeaderText="Address" />
                   <asp:BoundField DataField="gender" HeaderText="Gender" />
                   <asp:BoundField DataField="contact_no" HeaderText="Contact no" />
                   <asp:BoundField DataField="email_id" HeaderText="Email" />
                   <asp:BoundField DataField="education" HeaderText="Higher Education" />
                   <asp:TemplateField HeaderText="downloade resume">
                      <ItemTemplate>
                         <asp:LinkButton ID="lnkDownload" runat="server" Text="Download" OnClick="lnkDownload_Click" ></asp:LinkButton>
                      </ItemTemplate>
                   </asp:TemplateField>
                </Columns>
            </asp:GridView>
        <br />
        <asp:Button ID="Button2" runat="server" CssClass="btn btn-success" Text="Select" OnClick="Button2_Click"/>
    </div>
</asp:Content>

