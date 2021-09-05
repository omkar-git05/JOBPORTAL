<%@ Page Title="" Language="C#" MasterPageFile="~/Recruiter_master.master" AutoEventWireup="true" CodeFile="recruiter_applied_job.aspx.cs" Inherits="recruiter_applied_job" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <br />
        <h3 class="font-weight-bolder"> Applied for job</h3>
        <br />
        <asp:TextBox ID="TextBox1" CssClass="form-control-sm" runat="server" TextMode="MultiLine"></asp:TextBox>
         &nbsp;
         <asp:Button ID="Button2" runat="server" CssClass="btn btn-success" Text="send massage" OnClick="Button2_Click" />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" ShowHeaderWhenEmpty="false" class="table table-striped table-info table-responsive scrollable">
             <Columns>
                    <asp:TemplateField HeaderText="Select" SortExpression="applied_id">
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                 <asp:BoundField DataField="applied_id" HeaderText="Applied Id" />
                 <asp:BoundField DataField="company_id" HeaderText="Company Id" />
                 <asp:BoundField DataField="company_name" HeaderText="Company Name" />
                 <asp:BoundField DataField="jobpost_id" HeaderText="JobPost Id" />
                 <asp:BoundField DataField="job_title" HeaderText="Job Title" />
                 <asp:BoundField DataField="candidate_id" HeaderText="candidate Id" />
                 <asp:BoundField DataField="applied_date" HeaderText="Applied date" />
                </Columns>
            <EmptyDataTemplate> No Record Available please go and post job </EmptyDataTemplate>
        </asp:GridView>
        <hr />
        <br />
        <h4 class="font-weight-bold"> select candidate applied_id to find data of perticular candidate</h4>
        <asp:DropDownList ID="DropDownList1" CssClass="btn btn-secondary" runat="server"></asp:DropDownList>
        <asp:Button ID="Button1" runat="server" CssClass="btn btn-secondary" Text="Show info" OnClick="Button1_Click" />
        <br />
        <br />
        <asp:GridView ID="gvDetails" runat="server" AutoGenerateColumns="False" DataKeyNames="path" class="table table-striped table-info table-responsive">
         <Columns>
           
           <asp:BoundField DataField="candidate_id" HeaderText="Candidate Id" />
             <asp:BoundField DataField="first_name" HeaderText="First Name" />
             <asp:BoundField DataField="last_name" HeaderText="Last Name" />
             <asp:BoundField DataField="candidate_addrs" HeaderText="Address" />
             <asp:BoundField DataField="gender" HeaderText="Gender" />
             <asp:BoundField DataField="contact_no" HeaderText="Contact no" />
             <asp:BoundField DataField="email_id" HeaderText="Email" />
             <asp:BoundField DataField="education" HeaderText="Higher Education" />
           <asp:TemplateField HeaderText="downloade resume">
          <ItemTemplate>
             <asp:LinkButton ID="lnkDownload" runat="server" Text="Download" OnClick="lnkDownload_Click" ></asp:LinkButton>
          </ItemTemplate>
         </asp:TemplateField>
        </Columns>
        </asp:GridView>
    </div>
</asp:Content>

