<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_master.master" AutoEventWireup="true" CodeFile="AdminUP.aspx.cs" Inherits="AdminUP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
        <div class="row col-md-12">
    <div class="container">
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="username" AllowPaging="True" AllowSorting="True" class="table-responsive-md">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="username" HeaderText="username" ReadOnly="True" SortExpression="username" />
                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                <asp:BoundField DataField="role" HeaderText="role" SortExpression="role" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:JOB1ConnectionString %>" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Login] WHERE [username] = @original_username AND (([password] = @original_password) OR ([password] IS NULL AND @original_password IS NULL)) AND (([role] = @original_role) OR ([role] IS NULL AND @original_role IS NULL))" InsertCommand="INSERT INTO [Login] ([username], [password], [role]) VALUES (@username, @password, @role)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Login]" UpdateCommand="UPDATE [Login] SET [password] = @password, [role] = @role WHERE [username] = @original_username AND (([password] = @original_password) OR ([password] IS NULL AND @original_password IS NULL)) AND (([role] = @original_role) OR ([role] IS NULL AND @original_role IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_username" Type="String" />
                <asp:Parameter Name="original_password" Type="String" />
                <asp:Parameter Name="original_role" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="role" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="role" Type="String" />
                <asp:Parameter Name="original_username" Type="String" />
                <asp:Parameter Name="original_password" Type="String" />
                <asp:Parameter Name="original_role" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
        </div>
        </div>
</asp:Content>

