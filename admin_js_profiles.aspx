<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_master.master" AutoEventWireup="true" CodeFile="admin_js_profiles.aspx.cs" Inherits="admin_js_profiles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container" >
        <div>
            <center>
            <h1 class="font-weight-bolder"> Jobseeker Profiles </h1>
            </center> 
        </div>
        <br />
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="candidate_id" DataSourceID="SqlDataSource1" class="table table-striped table-info table-responsive scrollable">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="candidate_id" HeaderText="candidate_id" InsertVisible="False" ReadOnly="True" SortExpression="candidate_id" />
                    <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                    <asp:BoundField DataField="que_id" HeaderText="que_id" SortExpression="que_id" />
                    <asp:BoundField DataField="ans" HeaderText="ans" SortExpression="ans" />
                    <asp:BoundField DataField="profile_date" HeaderText="profile_date" SortExpression="profile_date" />
                    <asp:BoundField DataField="first_name" HeaderText="first_name" SortExpression="first_name" />
                    <asp:BoundField DataField="last_name" HeaderText="last_name" SortExpression="last_name" />
                    <asp:BoundField DataField="candidate_addrs" HeaderText="candidate_addrs" SortExpression="candidate_addrs" />
                    <asp:BoundField DataField="city_id" HeaderText="city_id" SortExpression="city_id" />
                    <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                    <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
                    <asp:BoundField DataField="contact_no" HeaderText="contact_no" SortExpression="contact_no" />
                    <asp:BoundField DataField="email_id" HeaderText="email_id" SortExpression="email_id" />
                    <asp:BoundField DataField="education" HeaderText="education" SortExpression="education" />
                    <asp:BoundField DataField="path" HeaderText="path" SortExpression="path" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:JOB1ConnectionString %>" DeleteCommand="DELETE FROM [Personal_details] WHERE [candidate_id] = @original_candidate_id AND (([username] = @original_username) OR ([username] IS NULL AND @original_username IS NULL)) AND (([que_id] = @original_que_id) OR ([que_id] IS NULL AND @original_que_id IS NULL)) AND (([ans] = @original_ans) OR ([ans] IS NULL AND @original_ans IS NULL)) AND (([profile_date] = @original_profile_date) OR ([profile_date] IS NULL AND @original_profile_date IS NULL)) AND (([first_name] = @original_first_name) OR ([first_name] IS NULL AND @original_first_name IS NULL)) AND (([last_name] = @original_last_name) OR ([last_name] IS NULL AND @original_last_name IS NULL)) AND (([candidate_addrs] = @original_candidate_addrs) OR ([candidate_addrs] IS NULL AND @original_candidate_addrs IS NULL)) AND (([city_id] = @original_city_id) OR ([city_id] IS NULL AND @original_city_id IS NULL)) AND (([gender] = @original_gender) OR ([gender] IS NULL AND @original_gender IS NULL)) AND (([dob] = @original_dob) OR ([dob] IS NULL AND @original_dob IS NULL)) AND (([contact_no] = @original_contact_no) OR ([contact_no] IS NULL AND @original_contact_no IS NULL)) AND (([email_id] = @original_email_id) OR ([email_id] IS NULL AND @original_email_id IS NULL)) AND (([education] = @original_education) OR ([education] IS NULL AND @original_education IS NULL)) AND (([path] = @original_path) OR ([path] IS NULL AND @original_path IS NULL))" InsertCommand="INSERT INTO [Personal_details] ([username], [que_id], [ans], [profile_date], [first_name], [last_name], [candidate_addrs], [city_id], [gender], [dob], [contact_no], [email_id], [education], [path]) VALUES (@username, @que_id, @ans, @profile_date, @first_name, @last_name, @candidate_addrs, @city_id, @gender, @dob, @contact_no, @email_id, @education, @path)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Personal_details]" UpdateCommand="UPDATE [Personal_details] SET [username] = @username, [que_id] = @que_id, [ans] = @ans, [profile_date] = @profile_date, [first_name] = @first_name, [last_name] = @last_name, [candidate_addrs] = @candidate_addrs, [city_id] = @city_id, [gender] = @gender, [dob] = @dob, [contact_no] = @contact_no, [email_id] = @email_id, [education] = @education, [path] = @path WHERE [candidate_id] = @original_candidate_id AND (([username] = @original_username) OR ([username] IS NULL AND @original_username IS NULL)) AND (([que_id] = @original_que_id) OR ([que_id] IS NULL AND @original_que_id IS NULL)) AND (([ans] = @original_ans) OR ([ans] IS NULL AND @original_ans IS NULL)) AND (([profile_date] = @original_profile_date) OR ([profile_date] IS NULL AND @original_profile_date IS NULL)) AND (([first_name] = @original_first_name) OR ([first_name] IS NULL AND @original_first_name IS NULL)) AND (([last_name] = @original_last_name) OR ([last_name] IS NULL AND @original_last_name IS NULL)) AND (([candidate_addrs] = @original_candidate_addrs) OR ([candidate_addrs] IS NULL AND @original_candidate_addrs IS NULL)) AND (([city_id] = @original_city_id) OR ([city_id] IS NULL AND @original_city_id IS NULL)) AND (([gender] = @original_gender) OR ([gender] IS NULL AND @original_gender IS NULL)) AND (([dob] = @original_dob) OR ([dob] IS NULL AND @original_dob IS NULL)) AND (([contact_no] = @original_contact_no) OR ([contact_no] IS NULL AND @original_contact_no IS NULL)) AND (([email_id] = @original_email_id) OR ([email_id] IS NULL AND @original_email_id IS NULL)) AND (([education] = @original_education) OR ([education] IS NULL AND @original_education IS NULL)) AND (([path] = @original_path) OR ([path] IS NULL AND @original_path IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_candidate_id" Type="Int32" />
                    <asp:Parameter Name="original_username" Type="String" />
                    <asp:Parameter Name="original_que_id" Type="Int32" />
                    <asp:Parameter Name="original_ans" Type="String" />
                    <asp:Parameter Name="original_profile_date" Type="DateTime" />
                    <asp:Parameter Name="original_first_name" Type="String" />
                    <asp:Parameter Name="original_last_name" Type="String" />
                    <asp:Parameter Name="original_candidate_addrs" Type="String" />
                    <asp:Parameter Name="original_city_id" Type="Int32" />
                    <asp:Parameter Name="original_gender" Type="String" />
                    <asp:Parameter Name="original_dob" Type="DateTime" />
                    <asp:Parameter Name="original_contact_no" Type="Decimal" />
                    <asp:Parameter Name="original_email_id" Type="String" />
                    <asp:Parameter Name="original_education" Type="String" />
                    <asp:Parameter Name="original_path" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="username" Type="String" />
                    <asp:Parameter Name="que_id" Type="Int32" />
                    <asp:Parameter Name="ans" Type="String" />
                    <asp:Parameter Name="profile_date" Type="DateTime" />
                    <asp:Parameter Name="first_name" Type="String" />
                    <asp:Parameter Name="last_name" Type="String" />
                    <asp:Parameter Name="candidate_addrs" Type="String" />
                    <asp:Parameter Name="city_id" Type="Int32" />
                    <asp:Parameter Name="gender" Type="String" />
                    <asp:Parameter Name="dob" Type="DateTime" />
                    <asp:Parameter Name="contact_no" Type="Decimal" />
                    <asp:Parameter Name="email_id" Type="String" />
                    <asp:Parameter Name="education" Type="String" />
                    <asp:Parameter Name="path" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="username" Type="String" />
                    <asp:Parameter Name="que_id" Type="Int32" />
                    <asp:Parameter Name="ans" Type="String" />
                    <asp:Parameter Name="profile_date" Type="DateTime" />
                    <asp:Parameter Name="first_name" Type="String" />
                    <asp:Parameter Name="last_name" Type="String" />
                    <asp:Parameter Name="candidate_addrs" Type="String" />
                    <asp:Parameter Name="city_id" Type="Int32" />
                    <asp:Parameter Name="gender" Type="String" />
                    <asp:Parameter Name="dob" Type="DateTime" />
                    <asp:Parameter Name="contact_no" Type="Decimal" />
                    <asp:Parameter Name="email_id" Type="String" />
                    <asp:Parameter Name="education" Type="String" />
                    <asp:Parameter Name="path" Type="String" />
                    <asp:Parameter Name="original_candidate_id" Type="Int32" />
                    <asp:Parameter Name="original_username" Type="String" />
                    <asp:Parameter Name="original_que_id" Type="Int32" />
                    <asp:Parameter Name="original_ans" Type="String" />
                    <asp:Parameter Name="original_profile_date" Type="DateTime" />
                    <asp:Parameter Name="original_first_name" Type="String" />
                    <asp:Parameter Name="original_last_name" Type="String" />
                    <asp:Parameter Name="original_candidate_addrs" Type="String" />
                    <asp:Parameter Name="original_city_id" Type="Int32" />
                    <asp:Parameter Name="original_gender" Type="String" />
                    <asp:Parameter Name="original_dob" Type="DateTime" />
                    <asp:Parameter Name="original_contact_no" Type="Decimal" />
                    <asp:Parameter Name="original_email_id" Type="String" />
                    <asp:Parameter Name="original_education" Type="String" />
                    <asp:Parameter Name="original_path" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>

