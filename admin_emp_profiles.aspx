<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_master.master" AutoEventWireup="true" CodeFile="admin_emp_profiles.aspx.cs" Inherits="admin_emp_profiles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="container">
            <center>
            <h1 class="font-weight-bolder"> Employer Profile </h1>
                </center>
        </div>
        <br />
        <div class="container">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="company_id" DataSourceID="SqlDataSource1" class="table table-striped table-info table-responsive">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:JOB1ConnectionString %>" DeleteCommand="DELETE FROM [Company] WHERE [company_id] = @original_company_id AND (([company_name] = @original_company_name) OR ([company_name] IS NULL AND @original_company_name IS NULL)) AND (([username] = @original_username) OR ([username] IS NULL AND @original_username IS NULL)) AND (([que_id] = @original_que_id) OR ([que_id] IS NULL AND @original_que_id IS NULL)) AND (([ansr] = @original_ansr) OR ([ansr] IS NULL AND @original_ansr IS NULL)) AND (([contact_person] = @original_contact_person) OR ([contact_person] IS NULL AND @original_contact_person IS NULL)) AND (([company_contact] = @original_company_contact) OR ([company_contact] IS NULL AND @original_company_contact IS NULL)) AND (([company_addrs] = @original_company_addrs) OR ([company_addrs] IS NULL AND @original_company_addrs IS NULL)) AND (([company_email] = @original_company_email) OR ([company_email] IS NULL AND @original_company_email IS NULL)) AND (([company_details] = @original_company_details) OR ([company_details] IS NULL AND @original_company_details IS NULL))" InsertCommand="INSERT INTO [Company] ([company_name], [username], [que_id], [ansr], [contact_person], [company_contact], [company_addrs], [company_email], [company_details]) VALUES (@company_name, @username, @que_id, @ansr, @contact_person, @company_contact, @company_addrs, @company_email, @company_details)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Company]" UpdateCommand="UPDATE [Company] SET [company_name] = @company_name, [username] = @username, [que_id] = @que_id, [ansr] = @ansr, [contact_person] = @contact_person, [company_contact] = @company_contact, [company_addrs] = @company_addrs, [company_email] = @company_email, [company_details] = @company_details WHERE [company_id] = @original_company_id AND (([company_name] = @original_company_name) OR ([company_name] IS NULL AND @original_company_name IS NULL)) AND (([username] = @original_username) OR ([username] IS NULL AND @original_username IS NULL)) AND (([que_id] = @original_que_id) OR ([que_id] IS NULL AND @original_que_id IS NULL)) AND (([ansr] = @original_ansr) OR ([ansr] IS NULL AND @original_ansr IS NULL)) AND (([contact_person] = @original_contact_person) OR ([contact_person] IS NULL AND @original_contact_person IS NULL)) AND (([company_contact] = @original_company_contact) OR ([company_contact] IS NULL AND @original_company_contact IS NULL)) AND (([company_addrs] = @original_company_addrs) OR ([company_addrs] IS NULL AND @original_company_addrs IS NULL)) AND (([company_email] = @original_company_email) OR ([company_email] IS NULL AND @original_company_email IS NULL)) AND (([company_details] = @original_company_details) OR ([company_details] IS NULL AND @original_company_details IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_company_id" Type="Int32" />
                    <asp:Parameter Name="original_company_name" Type="String" />
                    <asp:Parameter Name="original_username" Type="String" />
                    <asp:Parameter Name="original_que_id" Type="Int32" />
                    <asp:Parameter Name="original_ansr" Type="String" />
                    <asp:Parameter Name="original_contact_person" Type="String" />
                    <asp:Parameter Name="original_company_contact" Type="Decimal" />
                    <asp:Parameter Name="original_company_addrs" Type="String" />
                    <asp:Parameter Name="original_company_email" Type="String" />
                    <asp:Parameter Name="original_company_details" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="company_name" Type="String" />
                    <asp:Parameter Name="username" Type="String" />
                    <asp:Parameter Name="que_id" Type="Int32" />
                    <asp:Parameter Name="ansr" Type="String" />
                    <asp:Parameter Name="contact_person" Type="String" />
                    <asp:Parameter Name="company_contact" Type="Decimal" />
                    <asp:Parameter Name="company_addrs" Type="String" />
                    <asp:Parameter Name="company_email" Type="String" />
                    <asp:Parameter Name="company_details" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="company_name" Type="String" />
                    <asp:Parameter Name="username" Type="String" />
                    <asp:Parameter Name="que_id" Type="Int32" />
                    <asp:Parameter Name="ansr" Type="String" />
                    <asp:Parameter Name="contact_person" Type="String" />
                    <asp:Parameter Name="company_contact" Type="Decimal" />
                    <asp:Parameter Name="company_addrs" Type="String" />
                    <asp:Parameter Name="company_email" Type="String" />
                    <asp:Parameter Name="company_details" Type="String" />
                    <asp:Parameter Name="original_company_id" Type="Int32" />
                    <asp:Parameter Name="original_company_name" Type="String" />
                    <asp:Parameter Name="original_username" Type="String" />
                    <asp:Parameter Name="original_que_id" Type="Int32" />
                    <asp:Parameter Name="original_ansr" Type="String" />
                    <asp:Parameter Name="original_contact_person" Type="String" />
                    <asp:Parameter Name="original_company_contact" Type="Decimal" />
                    <asp:Parameter Name="original_company_addrs" Type="String" />
                    <asp:Parameter Name="original_company_email" Type="String" />
                    <asp:Parameter Name="original_company_details" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </div>
    <br />
</asp:Content>

