<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_master.master" AutoEventWireup="true" CodeFile="adminUserPasswd.aspx.cs" Inherits="adminUserPasswd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="container">
            <br />
            <h1 class="font-weight-bolder"> User names and Password</h1>
            <hr />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="username" DataSourceID="SqlDataSource1" class="table table-striped table-info table-responsive-md scrollable" Width="1000px">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="username" HeaderText="username" ReadOnly="True" SortExpression="username" />
                    <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                    <asp:BoundField DataField="role" HeaderText="role" SortExpression="role" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:JOB1ConnectionString %>" DeleteCommand="DELETE FROM [Login] WHERE [username] = @original_username AND (([password] = @original_password) OR ([password] IS NULL AND @original_password IS NULL)) AND (([role] = @original_role) OR ([role] IS NULL AND @original_role IS NULL))" InsertCommand="INSERT INTO [Login] ([username], [password], [role]) VALUES (@username, @password, @role)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Login]" UpdateCommand="UPDATE [Login] SET [password] = @password, [role] = @role WHERE [username] = @original_username AND (([password] = @original_password) OR ([password] IS NULL AND @original_password IS NULL)) AND (([role] = @original_role) OR ([role] IS NULL AND @original_role IS NULL))">
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
</asp:Content>

