<%@ Page Title="" Language="C#" MasterPageFile="~/Jobseeker.master" AutoEventWireup="true" CodeFile="jobseeker_profile1.aspx.cs" Inherits="jobseeker_profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container">
    <br />
    <h1 class="font-weight-bolder container" style="align-content:center">Personal Details</h1>
    <hr />
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="936px" AutoGenerateRows="False" DataKeyNames="candidate_id" DataSourceID="SqlDataSource1" class="table table-striped table-info">
        <Fields>
            <asp:BoundField DataField="candidate_id" HeaderText="candidate_id" InsertVisible="False" ReadOnly="True" SortExpression="candidate_id" />
            <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
            <asp:BoundField DataField="ans" HeaderText="ans" SortExpression="ans" />
            <asp:BoundField DataField="profile_date" HeaderText="profile_date" SortExpression="profile_date" />
            <asp:BoundField DataField="first_name" HeaderText="first_name" SortExpression="first_name" />
            <asp:BoundField DataField="last_name" HeaderText="last_name" SortExpression="last_name" />
            <asp:BoundField DataField="candidate_addrs" HeaderText="candidate_addrs" SortExpression="candidate_addrs" />
            <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
            <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
            <asp:BoundField DataField="contact_no" HeaderText="contact_no" SortExpression="contact_no" />
            <asp:BoundField DataField="email_id" HeaderText="email_id" SortExpression="email_id" />
            <asp:BoundField DataField="education" HeaderText="education" SortExpression="education" />
            <asp:CommandField ShowEditButton="True" />
        </Fields>
    </asp:DetailsView>
       
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:JOB1ConnectionString %>" DeleteCommand="DELETE FROM [Personal_details] WHERE [candidate_id] = @candidate_id" InsertCommand="INSERT INTO [Personal_details] ([username], [ans], [profile_date], [first_name], [last_name], [candidate_addrs], [gender], [dob], [contact_no], [email_id], [education]) VALUES (@username, @ans, @profile_date, @first_name, @last_name, @candidate_addrs, @gender, @dob, @contact_no, @email_id, @education)" SelectCommand="SELECT [candidate_id], [username], [ans], [profile_date], [first_name], [last_name], [candidate_addrs], [gender], [dob], [contact_no], [email_id], [education] FROM [Personal_details] WHERE [candidate_id] = @candidate_id" UpdateCommand="UPDATE [Personal_details] SET [username] = @username, [ans] = @ans, [profile_date] = @profile_date, [first_name] = @first_name, [last_name] = @last_name, [candidate_addrs] = @candidate_addrs, [gender] = @gender, [dob] = @dob, [contact_no] = @contact_no, [email_id] = @email_id, [education] = @education WHERE [candidate_id] = @candidate_id">
        <SelectParameters>
            <asp:SessionParameter Name="candidate_id" SessionField="Cid" Type="Int32" />
        </SelectParameters>
        <DeleteParameters>
            <asp:Parameter Name="candidate_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="ans" Type="String" />
            <asp:Parameter Name="profile_date" Type="DateTime" />
            <asp:Parameter Name="first_name" Type="String" />
            <asp:Parameter Name="last_name" Type="String" />
            <asp:Parameter Name="candidate_addrs" Type="String" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="dob" Type="DateTime" />
            <asp:Parameter Name="contact_no" Type="Decimal" />
            <asp:Parameter Name="email_id" Type="String" />
            <asp:Parameter Name="education" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="ans" Type="String" />
            <asp:Parameter Name="profile_date" Type="DateTime" />
            <asp:Parameter Name="first_name" Type="String" />
            <asp:Parameter Name="last_name" Type="String" />
            <asp:Parameter Name="candidate_addrs" Type="String" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="dob" Type="DateTime" />
            <asp:Parameter Name="contact_no" Type="Decimal" />
            <asp:Parameter Name="email_id" Type="String" />
            <asp:Parameter Name="education" Type="String" />
            <asp:Parameter Name="candidate_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource> 
</div>
</asp:Content>

