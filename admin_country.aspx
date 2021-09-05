<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_master.master" AutoEventWireup="true" CodeFile="admin_country.aspx.cs" Inherits="admin_country" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <center>
  <div>
    <div class="container ">
        <asp:Label ID="Label1" runat="server" class="font-weight-bolder" Text="Add Contry Details"></asp:Label>
    </div>
    <div class="form-group">
        <asp:Label ID="Label2" runat="server" Text="Contry "></asp:Label><asp:TextBox ID="TextBox1" class="form-control-sm" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" class="btn btn-info" runat="server" Text="Add" OnClick="Button1_Click" />
    </div>
      <br />
      <div class="container">
          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="country_id" DataSourceID="SqlDataSource1" class="table table-striped table-info table-responsive-md">
              <Columns>
                  <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                  <asp:BoundField DataField="country_id" HeaderText="country_id" InsertVisible="False" ReadOnly="True" SortExpression="country_id" />
                  <asp:BoundField DataField="country_name" HeaderText="country_name" SortExpression="country_name" />
              </Columns>
          </asp:GridView>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:JOB1ConnectionString %>" DeleteCommand="DELETE FROM [Country] WHERE [country_id] = @original_country_id AND (([country_name] = @original_country_name) OR ([country_name] IS NULL AND @original_country_name IS NULL))" InsertCommand="INSERT INTO [Country] ([country_name]) VALUES (@country_name)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Country]" UpdateCommand="UPDATE [Country] SET [country_name] = @country_name WHERE [country_id] = @original_country_id AND (([country_name] = @original_country_name) OR ([country_name] IS NULL AND @original_country_name IS NULL))">
              <DeleteParameters>
                  <asp:Parameter Name="original_country_id" Type="Int32" />
                  <asp:Parameter Name="original_country_name" Type="String" />
              </DeleteParameters>
              <InsertParameters>
                  <asp:Parameter Name="country_name" Type="String" />
              </InsertParameters>
              <UpdateParameters>
                  <asp:Parameter Name="country_name" Type="String" />
                  <asp:Parameter Name="original_country_id" Type="Int32" />
                  <asp:Parameter Name="original_country_name" Type="String" />
              </UpdateParameters>
          </asp:SqlDataSource>
      </div>
  </div>
    <br />

  <div>
    <div class="container ">
        <asp:Label ID="Label3" runat="server" class="font-weight-bolder" Text="Add State"></asp:Label>
    </div>
    <div class="form-group">
        <asp:Label ID="Label5" runat="server" Text="Contry :"></asp:Label><asp:DropDownList ID="DropDownList1" class="btn btn-secondary" runat="server"></asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="State :"></asp:Label><asp:TextBox ID="TextBox2" class="form-control-sm" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button2" class="btn btn-info" runat="server" Text="Add" OnClick="Button2_Click" />
    </div>
      <br />
      <div class="container">
          <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="state_id" DataSourceID="SqlDataSource2" class="table table-striped table-info table-responsive-md">
              <Columns>
                  <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                  <asp:BoundField DataField="state_id" HeaderText="state_id" InsertVisible="False" ReadOnly="True" SortExpression="state_id" />
                  <asp:BoundField DataField="country_id" HeaderText="country_id" SortExpression="country_id" />
                  <asp:BoundField DataField="state_name" HeaderText="state_name" SortExpression="state_name" />
              </Columns>
          </asp:GridView>
          <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:JOB1ConnectionString %>" DeleteCommand="DELETE FROM [State] WHERE [state_id] = @original_state_id AND (([country_id] = @original_country_id) OR ([country_id] IS NULL AND @original_country_id IS NULL)) AND (([state_name] = @original_state_name) OR ([state_name] IS NULL AND @original_state_name IS NULL))" InsertCommand="INSERT INTO [State] ([country_id], [state_name]) VALUES (@country_id, @state_name)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [State]" UpdateCommand="UPDATE [State] SET [country_id] = @country_id, [state_name] = @state_name WHERE [state_id] = @original_state_id AND (([country_id] = @original_country_id) OR ([country_id] IS NULL AND @original_country_id IS NULL)) AND (([state_name] = @original_state_name) OR ([state_name] IS NULL AND @original_state_name IS NULL))">
              <DeleteParameters>
                  <asp:Parameter Name="original_state_id" Type="Int32" />
                  <asp:Parameter Name="original_country_id" Type="Int32" />
                  <asp:Parameter Name="original_state_name" Type="String" />
              </DeleteParameters>
              <InsertParameters>
                  <asp:Parameter Name="country_id" Type="Int32" />
                  <asp:Parameter Name="state_name" Type="String" />
              </InsertParameters>
              <UpdateParameters>
                  <asp:Parameter Name="country_id" Type="Int32" />
                  <asp:Parameter Name="state_name" Type="String" />
                  <asp:Parameter Name="original_state_id" Type="Int32" />
                  <asp:Parameter Name="original_country_id" Type="Int32" />
                  <asp:Parameter Name="original_state_name" Type="String" />
              </UpdateParameters>
          </asp:SqlDataSource>
      </div>
  </div>
    <br />

  <div>
    <div class="container ">
        <asp:Label ID="Label6" runat="server" class="font-weight-bolder" Text="Add Post"></asp:Label>
    </div>
    <div class="form-group">
        <asp:Label ID="Label7" runat="server" Text="State : "></asp:Label><asp:DropDownList ID="DropDownList2" class="btn btn-secondary" runat="server"></asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="Label8" runat="server" Text="City : "></asp:Label><asp:TextBox ID="TextBox3" class="form-control-sm" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button3" class="btn btn-info" runat="server" Text="Add" OnClick="Button3_Click" />
    </div>
      <br />
      <div class="container">
          <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="city_id" DataSourceID="SqlDataSource3" class="table table-striped table-info table-responsive-md">
              <Columns>
                  <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                  <asp:BoundField DataField="city_id" HeaderText="city_id" InsertVisible="False" ReadOnly="True" SortExpression="city_id" />
                  <asp:BoundField DataField="state_id" HeaderText="state_id" SortExpression="state_id" />
                  <asp:BoundField DataField="city_name" HeaderText="city_name" SortExpression="city_name" />
              </Columns>
          </asp:GridView>
          <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:JOB1ConnectionString %>" DeleteCommand="DELETE FROM [City] WHERE [city_id] = @original_city_id AND (([state_id] = @original_state_id) OR ([state_id] IS NULL AND @original_state_id IS NULL)) AND (([city_name] = @original_city_name) OR ([city_name] IS NULL AND @original_city_name IS NULL))" InsertCommand="INSERT INTO [City] ([state_id], [city_name]) VALUES (@state_id, @city_name)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [City]" UpdateCommand="UPDATE [City] SET [state_id] = @state_id, [city_name] = @city_name WHERE [city_id] = @original_city_id AND (([state_id] = @original_state_id) OR ([state_id] IS NULL AND @original_state_id IS NULL)) AND (([city_name] = @original_city_name) OR ([city_name] IS NULL AND @original_city_name IS NULL))">
              <DeleteParameters>
                  <asp:Parameter Name="original_city_id" Type="Int32" />
                  <asp:Parameter Name="original_state_id" Type="Int32" />
                  <asp:Parameter Name="original_city_name" Type="String" />
              </DeleteParameters>
              <InsertParameters>
                  <asp:Parameter Name="state_id" Type="Int32" />
                  <asp:Parameter Name="city_name" Type="String" />
              </InsertParameters>
              <UpdateParameters>
                  <asp:Parameter Name="state_id" Type="Int32" />
                  <asp:Parameter Name="city_name" Type="String" />
                  <asp:Parameter Name="original_city_id" Type="Int32" />
                  <asp:Parameter Name="original_state_id" Type="Int32" />
                  <asp:Parameter Name="original_city_name" Type="String" />
              </UpdateParameters>
          </asp:SqlDataSource>
      </div>
  </div>
    <br />
        </center>
</asp:Content>

