<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_master.master" AutoEventWireup="true" CodeFile="admin_functionalarea.aspx.cs" Inherits="admin_functionalarea" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">  
    <div class="continer">
        <center>
        <h2 class="font-weight-bolder"> Add Functional Area </h2>
        </center>
        <br />
        <h3> Functional Area :</h3>
        <asp:TextBox ID="TextBox1" CssClass="form-control-sm" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" CssClass="btn btn-info" Text="Add" OnClick="Button1_Click" />
        <hr />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="area_id" DataSourceID="SqlDataSource1" class="table table-striped table-info table-responsive-md">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="area_id" HeaderText="area_id" InsertVisible="False" ReadOnly="True" SortExpression="area_id" />
                <asp:BoundField DataField="area_name" HeaderText="area_name" SortExpression="area_name" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:JOB1ConnectionString %>" DeleteCommand="DELETE FROM [Functional_area] WHERE [area_id] = @original_area_id AND (([area_name] = @original_area_name) OR ([area_name] IS NULL AND @original_area_name IS NULL))" InsertCommand="INSERT INTO [Functional_area] ([area_name]) VALUES (@area_name)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Functional_area]" UpdateCommand="UPDATE [Functional_area] SET [area_name] = @area_name WHERE [area_id] = @original_area_id AND (([area_name] = @original_area_name) OR ([area_name] IS NULL AND @original_area_name IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_area_id" Type="Int32" />
                <asp:Parameter Name="original_area_name" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="area_name" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="area_name" Type="String" />
                <asp:Parameter Name="original_area_id" Type="Int32" />
                <asp:Parameter Name="original_area_name" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
        <br />
        <br />
    <div class="continer">
        <h2 class="font-weight-bold"> Add Post </h2>
        <br />
        <h3> Functional Area</h3>
        <asp:DropDownList ID="DropDownList1" CssClass="btn btn-outline-dark " runat="server"></asp:DropDownList>
        <br />
        <br />
        <h3 > Post :</h3>
        <asp:TextBox ID="TextBox2" CssClass="form-control-sm" runat="server"></asp:TextBox>
        <asp:Button ID="Button2" runat="server" CssClass="btn btn-info" Text="Add" OnClick="Button2_Click" />
        <hr />
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="post_id" DataSourceID="SqlDataSource2" class="table table-striped table-info table-responsive-md">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="post_id" HeaderText="post_id" InsertVisible="False" ReadOnly="True" SortExpression="post_id" />
                <asp:BoundField DataField="area_id" HeaderText="area_id" SortExpression="area_id" />
                <asp:BoundField DataField="post_name" HeaderText="post_name" SortExpression="post_name" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:JOB1ConnectionString %>" DeleteCommand="DELETE FROM [Post1] WHERE [post_id] = @original_post_id AND (([area_id] = @original_area_id) OR ([area_id] IS NULL AND @original_area_id IS NULL)) AND (([post_name] = @original_post_name) OR ([post_name] IS NULL AND @original_post_name IS NULL))" InsertCommand="INSERT INTO [Post1] ([area_id], [post_name]) VALUES (@area_id, @post_name)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Post1]" UpdateCommand="UPDATE [Post1] SET [area_id] = @area_id, [post_name] = @post_name WHERE [post_id] = @original_post_id AND (([area_id] = @original_area_id) OR ([area_id] IS NULL AND @original_area_id IS NULL)) AND (([post_name] = @original_post_name) OR ([post_name] IS NULL AND @original_post_name IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_post_id" Type="Int32" />
                <asp:Parameter Name="original_area_id" Type="Int32" />
                <asp:Parameter Name="original_post_name" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="area_id" Type="Int32" />
                <asp:Parameter Name="post_name" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="area_id" Type="Int32" />
                <asp:Parameter Name="post_name" Type="String" />
                <asp:Parameter Name="original_post_id" Type="Int32" />
                <asp:Parameter Name="original_area_id" Type="Int32" />
                <asp:Parameter Name="original_post_name" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    </div>
</asp:Content>

