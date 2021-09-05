<%@ Page Title="" Language="C#" MasterPageFile="~/Jobseeker.master" AutoEventWireup="true" CodeFile="search_by_company.aspx.cs" Inherits="search_by_company" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <br />
        <div class="container">
            <h2 class="font-weight-bolder"> Search By Company </h2>
            <hr />
            <br />
            <h3 class="font-weight-bold"> Company </h3>
            <asp:DropDownList ID="DropDownList1" CssClass="btn btn-secondary" runat="server" AutoPostBack="True" ></asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" class="btn btn-success" Text="Search" OnClick="Button1_Click" />
            <br />
            <hr />
            <br />
            <asp:GridView ID="GridView1" runat="server" class="table table-striped table-info table-responsive">
                <Columns>
                    <asp:TemplateField HeaderText="apply" SortExpression="jobpost_id">
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <br />
            <asp:Button ID="Button2" runat="server" CssClass="btn btn-success" Text="Apply" OnClick="Button2_Click" />
            <br />
            <hr />
        </div>
    </div>
</asp:Content>

