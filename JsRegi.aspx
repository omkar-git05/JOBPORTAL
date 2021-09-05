<%@ Page Language="C#" AutoEventWireup="true" CodeFile="JsRegi.aspx.cs" Inherits="JsRegi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.0.0.slim.min.js"></script>
    <script src="Scripts/popper.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="css/regi.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
         <nav class="navbar navbar-expand-md navbar-dark  bg-dark">
      <a class="navbar-brand" href="#"><h3 class="font-weight-bold">JobPortal <small class="text-muted font-italic"> Recruiter </small></h3></a>
      <div class="nav navbar">

          <ul class="navbar nav">             
              <li class="nav-item">
                   <a class="nav nav-link " href="homepage.aspx">Back to Home</a>
              </li>            
          </ul>
      </div>    
    </nav>
    <div class="container bodybg1">
    <div class="container">
        <h1 class=" container bg-primary font-weight-bolder">Personal Detailes</h1>
    </div>
        <div class="container">
         <div class="form-group">
             <br />
             <h4>
                 <asp:Label ID="Label1" runat="server" Text="Label" CssClass="btn btn-success"></asp:Label></h4>
             <hr />
             <h4> First Name </h4>
             <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
             <br />
             <h4> Last Name </h4>
             <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
             <br />
             <hr />
             <h4>Gender</h4>
             <asp:RadioButton ID="RadioButton1" class="form-control-sm" runat="server" Text="Male" />
             <asp:RadioButton ID="RadioButton2" class="form-control-sm" runat="server" Text="Female" />
             <br />
             <hr />
             <h4> D.O.B </h4>
             <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control-sm"></asp:TextBox>
             <br />
             <hr />
             <h4>Sequrity Question</h4>                
             <asp:DropDownList ID="DropDownList1" CssClass="form-control-sm" runat="server"></asp:DropDownList>
             <br />
             <h4> Answer </h4>
             <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control-sm"></asp:TextBox>
             <br />
             <hr />
             <h4>Country</h4>                
             <asp:DropDownList ID="DropDownList2" CssClass="form-control-sm" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged"></asp:DropDownList>
             <h4>State</h4>                
             <asp:DropDownList ID="DropDownList4" CssClass="form-control-sm" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged"></asp:DropDownList>
             <h4>city</h4>                
             <asp:DropDownList ID="DropDownList5" CssClass="form-control-sm" runat="server" AutoPostBack="True"></asp:DropDownList>
             <br />
             <hr />
             <h4>Full Address</h4>
             <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" placeholder="area/city/state" TextMode="MultiLine" ></asp:TextBox>
             <br />
             <hr />
             <h4> Contact No </h4>
             <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
             <br />
             <h4> Email </h4>
             <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
             <br />
             <hr />
             <h4>Education</h4>
             <asp:DropDownList ID="DropDownList3" CssClass="form-control-sm" runat="server">
                 <asp:ListItem Value="0">select</asp:ListItem>
                 <asp:ListItem Value="1">10 th</asp:ListItem>
                 <asp:ListItem Value="2">12 th</asp:ListItem>
                 <asp:ListItem Value="3">B.Sc.IT</asp:ListItem>
                 <asp:ListItem Value="4">B.com</asp:ListItem>
             </asp:DropDownList>
             <br />
             <hr />
             <h4>Upload Resume</h4>
             Upload MS Word (doc/rtf) file only. Max size limit 300 Kb<br />
             <asp:FileUpload ID="FileUpload1" class="form-control-sm " runat="server" />
             <br />
             <h5>Note:</h5>
            (If you do not have a resume right now, you may 
                            still create your account. Please remember to upload your resume as soon as 
                            possible)
             <br />
             <hr />
             <asp:Button ID="Button1" CssClass="btn btn-lg btn-success" runat="server" Text="Proceed" OnClick="Button1_Click" />
         </div> 
        </div>
    </div>
    </form>
</body>
</html>
