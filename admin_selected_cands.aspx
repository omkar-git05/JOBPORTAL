<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_master.master" AutoEventWireup="true" CodeFile="admin_selected_cands.aspx.cs" Inherits="admin_selected_cands" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="container">
            <center>
            <h1 class="font-weight-bolder">Selected Candidates</h1>
            </center>
        </div>
        <br />
        <div class="container">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="selected_id" DataSourceID="SqlDataSource1" class="table table-striped table-info table-responsive scrollable">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="selected_id" HeaderText="selected_id" ReadOnly="True" SortExpression="selected_id" InsertVisible="False" />
                    <asp:BoundField DataField="applied_id" HeaderText="applied_id" SortExpression="applied_id" />
                    <asp:BoundField DataField="company_id" HeaderText="company_id" SortExpression="company_id" />
                    <asp:BoundField DataField="company_name" HeaderText="company_name" SortExpression="company_name" />
                    <asp:BoundField DataField="jobpost_id" HeaderText="jobpost_id" SortExpression="jobpost_id" />
                    <asp:BoundField DataField="job_title" HeaderText="job_title" SortExpression="job_title" />
                    <asp:BoundField DataField="candidate_id" HeaderText="candidate_id" SortExpression="candidate_id" />
                    <asp:BoundField DataField="selected_date" HeaderText="selected_date" SortExpression="selected_date" />
                    <asp:BoundField DataField="message" HeaderText="message" SortExpression="message" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:JOB1ConnectionString %>" DeleteCommand="DELETE FROM [Selected_candidate] WHERE [selected_id] = @original_selected_id AND (([applied_id] = @original_applied_id) OR ([applied_id] IS NULL AND @original_applied_id IS NULL)) AND (([company_id] = @original_company_id) OR ([company_id] IS NULL AND @original_company_id IS NULL)) AND (([company_name] = @original_company_name) OR ([company_name] IS NULL AND @original_company_name IS NULL)) AND (([jobpost_id] = @original_jobpost_id) OR ([jobpost_id] IS NULL AND @original_jobpost_id IS NULL)) AND (([job_title] = @original_job_title) OR ([job_title] IS NULL AND @original_job_title IS NULL)) AND (([candidate_id] = @original_candidate_id) OR ([candidate_id] IS NULL AND @original_candidate_id IS NULL)) AND (([selected_date] = @original_selected_date) OR ([selected_date] IS NULL AND @original_selected_date IS NULL)) AND (([message] = @original_message) OR ([message] IS NULL AND @original_message IS NULL))" InsertCommand="INSERT INTO [Selected_candidate] ([applied_id], [company_id], [company_name], [jobpost_id], [job_title], [candidate_id], [selected_date], [message]) VALUES (@applied_id, @company_id, @company_name, @jobpost_id, @job_title, @candidate_id, @selected_date, @message)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Selected_candidate]" UpdateCommand="UPDATE [Selected_candidate] SET [applied_id] = @applied_id, [company_id] = @company_id, [company_name] = @company_name, [jobpost_id] = @jobpost_id, [job_title] = @job_title, [candidate_id] = @candidate_id, [selected_date] = @selected_date, [message] = @message WHERE [selected_id] = @original_selected_id AND (([applied_id] = @original_applied_id) OR ([applied_id] IS NULL AND @original_applied_id IS NULL)) AND (([company_id] = @original_company_id) OR ([company_id] IS NULL AND @original_company_id IS NULL)) AND (([company_name] = @original_company_name) OR ([company_name] IS NULL AND @original_company_name IS NULL)) AND (([jobpost_id] = @original_jobpost_id) OR ([jobpost_id] IS NULL AND @original_jobpost_id IS NULL)) AND (([job_title] = @original_job_title) OR ([job_title] IS NULL AND @original_job_title IS NULL)) AND (([candidate_id] = @original_candidate_id) OR ([candidate_id] IS NULL AND @original_candidate_id IS NULL)) AND (([selected_date] = @original_selected_date) OR ([selected_date] IS NULL AND @original_selected_date IS NULL)) AND (([message] = @original_message) OR ([message] IS NULL AND @original_message IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_selected_id" Type="Int32" />
                    <asp:Parameter Name="original_applied_id" Type="Int32" />
                    <asp:Parameter Name="original_company_id" Type="Int32" />
                    <asp:Parameter Name="original_company_name" Type="String" />
                    <asp:Parameter Name="original_jobpost_id" Type="Int32" />
                    <asp:Parameter Name="original_job_title" Type="String" />
                    <asp:Parameter Name="original_candidate_id" Type="Int32" />
                    <asp:Parameter Name="original_selected_date" Type="DateTime" />
                    <asp:Parameter Name="original_message" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="applied_id" Type="Int32" />
                    <asp:Parameter Name="company_id" Type="Int32" />
                    <asp:Parameter Name="company_name" Type="String" />
                    <asp:Parameter Name="jobpost_id" Type="Int32" />
                    <asp:Parameter Name="job_title" Type="String" />
                    <asp:Parameter Name="candidate_id" Type="Int32" />
                    <asp:Parameter Name="selected_date" Type="DateTime" />
                    <asp:Parameter Name="message" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="applied_id" Type="Int32" />
                    <asp:Parameter Name="company_id" Type="Int32" />
                    <asp:Parameter Name="company_name" Type="String" />
                    <asp:Parameter Name="jobpost_id" Type="Int32" />
                    <asp:Parameter Name="job_title" Type="String" />
                    <asp:Parameter Name="candidate_id" Type="Int32" />
                    <asp:Parameter Name="selected_date" Type="DateTime" />
                    <asp:Parameter Name="message" Type="String" />
                    <asp:Parameter Name="original_selected_id" Type="Int32" />
                    <asp:Parameter Name="original_applied_id" Type="Int32" />
                    <asp:Parameter Name="original_company_id" Type="Int32" />
                    <asp:Parameter Name="original_company_name" Type="String" />
                    <asp:Parameter Name="original_jobpost_id" Type="Int32" />
                    <asp:Parameter Name="original_job_title" Type="String" />
                    <asp:Parameter Name="original_candidate_id" Type="Int32" />
                    <asp:Parameter Name="original_selected_date" Type="DateTime" />
                    <asp:Parameter Name="original_message" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>

