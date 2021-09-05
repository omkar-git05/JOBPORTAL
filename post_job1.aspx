<%@ Page Title="" Language="C#" MasterPageFile="~/Recruiter_master.master" AutoEventWireup="true" CodeFile="post_job1.aspx.cs" Inherits="post_job1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
     <div class="container" >
       <h1 style="text-align:center" class="font-weight-bolder">Post Job</h1>
     </div>
        <br />
        <div class="container form-group">
          <h3> Job Title </h3>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
            <hr />
            <br />
             <h3> Company Name </h3>
            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
            <hr />
            <br />
          <h3> Functional Area </h3>
            <asp:DropDownList ID="DropDownList2" CssClass="btn btn-secondary " runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged"></asp:DropDownList>
            <hr />
            <br />
         <h3> Post </h3>
            <asp:DropDownList ID="DropDownList3" CssClass="btn btn-secondary " runat="server" AutoPostBack="True"></asp:DropDownList>
            <hr />
            <br />
         <h3> Location</h3>
              Country&nbsp; <asp:DropDownList ID="DropDownList4"  CssClass="btn btn-secondary " runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged"></asp:DropDownList> &nbsp;&nbsp;&nbsp;&nbsp; State
             <asp:DropDownList ID="DropDownList5"  CssClass="btn btn-secondary " runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList5_SelectedIndexChanged"></asp:DropDownList> &nbsp;&nbsp;&nbsp; City
             <asp:DropDownList ID="DropDownList6"  CssClass="btn btn-secondary " runat="server" AutoPostBack="True"></asp:DropDownList>
            <hr />
            <br />
          <h3> Minimum Experience </h3>
            <asp:DropDownList ID="DropDownList7" CssClass="btn btn-secondary " runat="server">
                <asp:ListItem Value="0">select</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
            </asp:DropDownList> &nbsp;year&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList8" CssClass="btn btn-secondary" runat="server">
                <asp:ListItem Value="0">select</asp:ListItem>
                <asp:ListItem Value="1">2</asp:ListItem>
                <asp:ListItem Value="2">4</asp:ListItem>
                <asp:ListItem Value="3">6</asp:ListItem>
            </asp:DropDownList> &nbsp; Months
            <hr />
            <br />
          <h3> Salary </h3>
            <asp:DropDownList ID="DropDownList9" CssClass="btn btn-secondary" runat="server">
                <asp:ListItem Value="0">select</asp:ListItem>
                <asp:ListItem Value="1">5000</asp:ListItem>
                <asp:ListItem Value="2">10000</asp:ListItem>
                <asp:ListItem Value="3">15000</asp:ListItem>
                <asp:ListItem Value="4">20000</asp:ListItem>
                
            </asp:DropDownList> &nbsp;TO&nbsp;
            <asp:DropDownList ID="DropDownList10" CssClass="btn btn-secondary" runat="server">
                <asp:ListItem Value="0">select</asp:ListItem>
                <asp:ListItem Value="1">10000</asp:ListItem>
                <asp:ListItem Value="2">20000</asp:ListItem>
                <asp:ListItem Value="3">30000</asp:ListItem>
                <asp:ListItem Value="4">40000</asp:ListItem>
                <asp:ListItem Value="5">50000</asp:ListItem>
            </asp:DropDownList> &nbsp; Rs. per month
            <hr />
            <br />
          <h3> Education </h3>
            <asp:DropDownList ID="DropDownList11" CssClass="btn btn-secondary " runat="server">
                <asp:ListItem Value="0">select</asp:ListItem>
                <asp:ListItem Value="1">B.sc.(IT),(C.S)</asp:ListItem>
                <asp:ListItem Value="2">M.C.A</asp:ListItem>
                <asp:ListItem Value="3">M.B.A</asp:ListItem>
            </asp:DropDownList>
            <hr />
            <br />
          <h3> Skills</h3>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
            <hr />
            <br />
          <h3> Basic requirement</h3>
            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
            <hr />
            <br />
          <h3> NO. of vacancy </h3>
            <asp:DropDownList ID="DropDownList12" CssClass="btn btn-secondary " runat="server">
                <asp:ListItem Value="0">select</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
            </asp:DropDownList>
            <hr />
            <br />
            <br />
            <asp:Button ID="Button1" CssClass="btn btn-lg btn btn-success" runat="server" Text="post" OnClick="Button1_Click" />
        </div>
    </div>
    <br />
</asp:Content>

