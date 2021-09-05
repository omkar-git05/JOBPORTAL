<%@ Page Title="" Language="C#" MasterPageFile="~/Jobseeker.master" AutoEventWireup="true" CodeFile="my_job.aspx.cs" Inherits="my_job" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="container">
            <h1 style="text-align:center" class="font-weight-bolder" >My Job</h1>
        </div>
        <div class="container">
           <asp:GridView ID="GridView1" runat="server" class="table table-striped table-info table-responsive">
                <Columns>
                    <asp:TemplateField HeaderText="delete" SortExpression="jobpost_id">
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>   
            <br />
            <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" Text="Delet" OnClick="Button1_Click" />
            <hr />
            <h3 class="font-weight-bold">Check any update here</h3>
            <asp:Button ID="Button2" runat="server" CssClass=" btn btn-success" Text="Refresh" OnClick="Button2_Click" />
            <br />
            <br />
            <asp:GridView ID="GridView2" runat="server" ShowHeaderWhenEmpty="false" class="table table-striped table-info table-responsive table-borderless">
                <EmptyDataTemplate> no update yet</EmptyDataTemplate>
            </asp:GridView>
        </div>
    </div>
    <br />
</asp:Content>

