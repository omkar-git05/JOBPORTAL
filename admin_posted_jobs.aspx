<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_master.master" AutoEventWireup="true" CodeFile="admin_posted_jobs.aspx.cs" Inherits="admin_posted_jobs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="container">
            <center>
            <h1 class="font-weight-bolder">Posted Jobs</h1>
            </center>
        </div>
        <br />
        <div class="container">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="jobpost_id" DataSourceID="SqlDataSource1" class="table table-striped table-info table-responsive scrollable">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="jobpost_id" HeaderText="jobpost_id" InsertVisible="False" ReadOnly="True" SortExpression="jobpost_id" />
                    <asp:BoundField DataField="company_id" HeaderText="company_id" SortExpression="company_id" />
                    <asp:BoundField DataField="company_name" HeaderText="company_name" SortExpression="company_name" />
                    <asp:BoundField DataField="job_title" HeaderText="job_title" SortExpression="job_title" />
                    <asp:BoundField DataField="area_id" HeaderText="area_id" SortExpression="area_id" />
                    <asp:BoundField DataField="post_id" HeaderText="post_id" SortExpression="post_id" />
                    <asp:BoundField DataField="city_id" HeaderText="city_id" SortExpression="city_id" />
                    <asp:BoundField DataField="city_name" HeaderText="city_name" SortExpression="city_name" />
                    <asp:BoundField DataField="no_vacancy" HeaderText="no_vacancy" SortExpression="no_vacancy" />
                    <asp:BoundField DataField="expr_req" HeaderText="expr_req" SortExpression="expr_req" />
                    <asp:BoundField DataField="skills_req" HeaderText="skills_req" SortExpression="skills_req" />
                    <asp:BoundField DataField="edu_req" HeaderText="edu_req" SortExpression="edu_req" />
                    <asp:BoundField DataField="basic_req" HeaderText="basic_req" SortExpression="basic_req" />
                    <asp:BoundField DataField="salary_min" HeaderText="salary_min" SortExpression="salary_min" />
                    <asp:BoundField DataField="salary_max" HeaderText="salary_max" SortExpression="salary_max" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:JOB1ConnectionString %>" DeleteCommand="DELETE FROM [Job_post] WHERE [jobpost_id] = @original_jobpost_id AND (([company_id] = @original_company_id) OR ([company_id] IS NULL AND @original_company_id IS NULL)) AND (([company_name] = @original_company_name) OR ([company_name] IS NULL AND @original_company_name IS NULL)) AND (([job_title] = @original_job_title) OR ([job_title] IS NULL AND @original_job_title IS NULL)) AND (([area_id] = @original_area_id) OR ([area_id] IS NULL AND @original_area_id IS NULL)) AND (([post_id] = @original_post_id) OR ([post_id] IS NULL AND @original_post_id IS NULL)) AND (([city_id] = @original_city_id) OR ([city_id] IS NULL AND @original_city_id IS NULL)) AND (([city_name] = @original_city_name) OR ([city_name] IS NULL AND @original_city_name IS NULL)) AND (([no_vacancy] = @original_no_vacancy) OR ([no_vacancy] IS NULL AND @original_no_vacancy IS NULL)) AND (([expr_req] = @original_expr_req) OR ([expr_req] IS NULL AND @original_expr_req IS NULL)) AND (([skills_req] = @original_skills_req) OR ([skills_req] IS NULL AND @original_skills_req IS NULL)) AND (([edu_req] = @original_edu_req) OR ([edu_req] IS NULL AND @original_edu_req IS NULL)) AND (([basic_req] = @original_basic_req) OR ([basic_req] IS NULL AND @original_basic_req IS NULL)) AND (([salary_min] = @original_salary_min) OR ([salary_min] IS NULL AND @original_salary_min IS NULL)) AND (([salary_max] = @original_salary_max) OR ([salary_max] IS NULL AND @original_salary_max IS NULL))" InsertCommand="INSERT INTO [Job_post] ([company_id], [company_name], [job_title], [area_id], [post_id], [city_id], [city_name], [no_vacancy], [expr_req], [skills_req], [edu_req], [basic_req], [salary_min], [salary_max]) VALUES (@company_id, @company_name, @job_title, @area_id, @post_id, @city_id, @city_name, @no_vacancy, @expr_req, @skills_req, @edu_req, @basic_req, @salary_min, @salary_max)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Job_post]" UpdateCommand="UPDATE [Job_post] SET [company_id] = @company_id, [company_name] = @company_name, [job_title] = @job_title, [area_id] = @area_id, [post_id] = @post_id, [city_id] = @city_id, [city_name] = @city_name, [no_vacancy] = @no_vacancy, [expr_req] = @expr_req, [skills_req] = @skills_req, [edu_req] = @edu_req, [basic_req] = @basic_req, [salary_min] = @salary_min, [salary_max] = @salary_max WHERE [jobpost_id] = @original_jobpost_id AND (([company_id] = @original_company_id) OR ([company_id] IS NULL AND @original_company_id IS NULL)) AND (([company_name] = @original_company_name) OR ([company_name] IS NULL AND @original_company_name IS NULL)) AND (([job_title] = @original_job_title) OR ([job_title] IS NULL AND @original_job_title IS NULL)) AND (([area_id] = @original_area_id) OR ([area_id] IS NULL AND @original_area_id IS NULL)) AND (([post_id] = @original_post_id) OR ([post_id] IS NULL AND @original_post_id IS NULL)) AND (([city_id] = @original_city_id) OR ([city_id] IS NULL AND @original_city_id IS NULL)) AND (([city_name] = @original_city_name) OR ([city_name] IS NULL AND @original_city_name IS NULL)) AND (([no_vacancy] = @original_no_vacancy) OR ([no_vacancy] IS NULL AND @original_no_vacancy IS NULL)) AND (([expr_req] = @original_expr_req) OR ([expr_req] IS NULL AND @original_expr_req IS NULL)) AND (([skills_req] = @original_skills_req) OR ([skills_req] IS NULL AND @original_skills_req IS NULL)) AND (([edu_req] = @original_edu_req) OR ([edu_req] IS NULL AND @original_edu_req IS NULL)) AND (([basic_req] = @original_basic_req) OR ([basic_req] IS NULL AND @original_basic_req IS NULL)) AND (([salary_min] = @original_salary_min) OR ([salary_min] IS NULL AND @original_salary_min IS NULL)) AND (([salary_max] = @original_salary_max) OR ([salary_max] IS NULL AND @original_salary_max IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_jobpost_id" Type="Int32" />
                    <asp:Parameter Name="original_company_id" Type="Int32" />
                    <asp:Parameter Name="original_company_name" Type="String" />
                    <asp:Parameter Name="original_job_title" Type="String" />
                    <asp:Parameter Name="original_area_id" Type="Int32" />
                    <asp:Parameter Name="original_post_id" Type="Int32" />
                    <asp:Parameter Name="original_city_id" Type="Int32" />
                    <asp:Parameter Name="original_city_name" Type="String" />
                    <asp:Parameter Name="original_no_vacancy" Type="Decimal" />
                    <asp:Parameter Name="original_expr_req" Type="String" />
                    <asp:Parameter Name="original_skills_req" Type="String" />
                    <asp:Parameter Name="original_edu_req" Type="String" />
                    <asp:Parameter Name="original_basic_req" Type="String" />
                    <asp:Parameter Name="original_salary_min" Type="Decimal" />
                    <asp:Parameter Name="original_salary_max" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="company_id" Type="Int32" />
                    <asp:Parameter Name="company_name" Type="String" />
                    <asp:Parameter Name="job_title" Type="String" />
                    <asp:Parameter Name="area_id" Type="Int32" />
                    <asp:Parameter Name="post_id" Type="Int32" />
                    <asp:Parameter Name="city_id" Type="Int32" />
                    <asp:Parameter Name="city_name" Type="String" />
                    <asp:Parameter Name="no_vacancy" Type="Decimal" />
                    <asp:Parameter Name="expr_req" Type="String" />
                    <asp:Parameter Name="skills_req" Type="String" />
                    <asp:Parameter Name="edu_req" Type="String" />
                    <asp:Parameter Name="basic_req" Type="String" />
                    <asp:Parameter Name="salary_min" Type="Decimal" />
                    <asp:Parameter Name="salary_max" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="company_id" Type="Int32" />
                    <asp:Parameter Name="company_name" Type="String" />
                    <asp:Parameter Name="job_title" Type="String" />
                    <asp:Parameter Name="area_id" Type="Int32" />
                    <asp:Parameter Name="post_id" Type="Int32" />
                    <asp:Parameter Name="city_id" Type="Int32" />
                    <asp:Parameter Name="city_name" Type="String" />
                    <asp:Parameter Name="no_vacancy" Type="Decimal" />
                    <asp:Parameter Name="expr_req" Type="String" />
                    <asp:Parameter Name="skills_req" Type="String" />
                    <asp:Parameter Name="edu_req" Type="String" />
                    <asp:Parameter Name="basic_req" Type="String" />
                    <asp:Parameter Name="salary_min" Type="Decimal" />
                    <asp:Parameter Name="salary_max" Type="Decimal" />
                    <asp:Parameter Name="original_jobpost_id" Type="Int32" />
                    <asp:Parameter Name="original_company_id" Type="Int32" />
                    <asp:Parameter Name="original_company_name" Type="String" />
                    <asp:Parameter Name="original_job_title" Type="String" />
                    <asp:Parameter Name="original_area_id" Type="Int32" />
                    <asp:Parameter Name="original_post_id" Type="Int32" />
                    <asp:Parameter Name="original_city_id" Type="Int32" />
                    <asp:Parameter Name="original_city_name" Type="String" />
                    <asp:Parameter Name="original_no_vacancy" Type="Decimal" />
                    <asp:Parameter Name="original_expr_req" Type="String" />
                    <asp:Parameter Name="original_skills_req" Type="String" />
                    <asp:Parameter Name="original_edu_req" Type="String" />
                    <asp:Parameter Name="original_basic_req" Type="String" />
                    <asp:Parameter Name="original_salary_min" Type="Decimal" />
                    <asp:Parameter Name="original_salary_max" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>

