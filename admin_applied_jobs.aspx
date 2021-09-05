<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_master.master" AutoEventWireup="true" CodeFile="admin_applied_jobs.aspx.cs" Inherits="admin_applied_jobs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-sm">
        <div class="container-sm">
            <h1 class="font-weight-bolder"> Applied Jobs</h1>
        </div>
        <br />
        <div class="container-sm">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="applied_id" DataSourceID="SqlDataSource1" class="table table-striped table-info table-responsive scrollable">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="applied_id" HeaderText="applied_id" ReadOnly="True" SortExpression="applied_id" InsertVisible="False" />
                    <asp:BoundField DataField="company_id" HeaderText="company_id" SortExpression="company_id" />
                    <asp:BoundField DataField="company_name" HeaderText="company_name" SortExpression="company_name" />
                    <asp:BoundField DataField="jobpost_id" HeaderText="jobpost_id" SortExpression="jobpost_id" />
                    <asp:BoundField DataField="job_title" HeaderText="job_title" SortExpression="job_title" />
                    <asp:BoundField DataField="candidate_id" HeaderText="candidate_id" SortExpression="candidate_id" />
                    <asp:BoundField DataField="applied_date" HeaderText="applied_date" SortExpression="applied_date" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:JOB1ConnectionString %>" DeleteCommand="DELETE FROM [Job_applied1] WHERE [applied_id] = @original_applied_id AND (([company_id] = @original_company_id) OR ([company_id] IS NULL AND @original_company_id IS NULL)) AND (([company_name] = @original_company_name) OR ([company_name] IS NULL AND @original_company_name IS NULL)) AND (([jobpost_id] = @original_jobpost_id) OR ([jobpost_id] IS NULL AND @original_jobpost_id IS NULL)) AND (([job_title] = @original_job_title) OR ([job_title] IS NULL AND @original_job_title IS NULL)) AND (([candidate_id] = @original_candidate_id) OR ([candidate_id] IS NULL AND @original_candidate_id IS NULL)) AND (([applied_date] = @original_applied_date) OR ([applied_date] IS NULL AND @original_applied_date IS NULL))" InsertCommand="INSERT INTO [Job_applied1] ([company_id], [company_name], [jobpost_id], [job_title], [candidate_id], [applied_date]) VALUES (@company_id, @company_name, @jobpost_id, @job_title, @candidate_id, @applied_date)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Job_applied1]" UpdateCommand="UPDATE [Job_applied1] SET [company_id] = @company_id, [company_name] = @company_name, [jobpost_id] = @jobpost_id, [job_title] = @job_title, [candidate_id] = @candidate_id, [applied_date] = @applied_date WHERE [applied_id] = @original_applied_id AND (([company_id] = @original_company_id) OR ([company_id] IS NULL AND @original_company_id IS NULL)) AND (([company_name] = @original_company_name) OR ([company_name] IS NULL AND @original_company_name IS NULL)) AND (([jobpost_id] = @original_jobpost_id) OR ([jobpost_id] IS NULL AND @original_jobpost_id IS NULL)) AND (([job_title] = @original_job_title) OR ([job_title] IS NULL AND @original_job_title IS NULL)) AND (([candidate_id] = @original_candidate_id) OR ([candidate_id] IS NULL AND @original_candidate_id IS NULL)) AND (([applied_date] = @original_applied_date) OR ([applied_date] IS NULL AND @original_applied_date IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_applied_id" Type="Int32" />
                    <asp:Parameter Name="original_company_id" Type="Int32" />
                    <asp:Parameter Name="original_company_name" Type="String" />
                    <asp:Parameter Name="original_jobpost_id" Type="Int32" />
                    <asp:Parameter Name="original_job_title" Type="String" />
                    <asp:Parameter Name="original_candidate_id" Type="Int32" />
                    <asp:Parameter Name="original_applied_date" Type="DateTime" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="company_id" Type="Int32" />
                    <asp:Parameter Name="company_name" Type="String" />
                    <asp:Parameter Name="jobpost_id" Type="Int32" />
                    <asp:Parameter Name="job_title" Type="String" />
                    <asp:Parameter Name="candidate_id" Type="Int32" />
                    <asp:Parameter Name="applied_date" Type="DateTime" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="company_id" Type="Int32" />
                    <asp:Parameter Name="company_name" Type="String" />
                    <asp:Parameter Name="jobpost_id" Type="Int32" />
                    <asp:Parameter Name="job_title" Type="String" />
                    <asp:Parameter Name="candidate_id" Type="Int32" />
                    <asp:Parameter Name="applied_date" Type="DateTime" />
                    <asp:Parameter Name="original_applied_id" Type="Int32" />
                    <asp:Parameter Name="original_company_id" Type="Int32" />
                    <asp:Parameter Name="original_company_name" Type="String" />
                    <asp:Parameter Name="original_jobpost_id" Type="Int32" />
                    <asp:Parameter Name="original_job_title" Type="String" />
                    <asp:Parameter Name="original_candidate_id" Type="Int32" />
                    <asp:Parameter Name="original_applied_date" Type="DateTime" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>

