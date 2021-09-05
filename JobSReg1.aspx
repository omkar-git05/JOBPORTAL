<%@ Page Language="C#" AutoEventWireup="true" CodeFile="JobSReg1.aspx.cs" Inherits="JobSReg1" %>

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
      <a class="navbar-brand" href="#"><h3 class="font-weight-bold">JobPortal <small class="text-muted font-italic"> Recruiter</small></h3></a>
      <div class="nav navbar">

          <ul class="navbar nav">             
              <li class="nav-item">
                   <a class="nav nav-link " href="homepage.aspx">Back to Home</a>
              </li>            
          </ul>
      </div>    
    </nav>
    <div>
        <br />
    <div class="container">
     <h2 class="font-weight-bolder container bg-info"> JobSeeker Registration </h2>
        <hr />
    <div class="form-group">
      <h5>Username</h5>                
        <asp:TextBox ID="TextBox1" class="form-control"  placeholder="enter Username" runat="server"></asp:TextBox>     
    </div>      
    <div class="form-group">
      <h5>Password</h5>                
        <asp:TextBox ID="TextBox2" class="form-control"  placeholder="enter password" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
        <div class="form-group">
      <h5> Confirm Password</h5>                
        <asp:TextBox ID="TextBox3" class="form-control"  placeholder="Confirm password" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="TextBox3" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Not match password" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ForeColor="#FF3300"></asp:CompareValidator>
    </div>
        <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Next" OnClick="Button1_Click" />
    </div>     
    </div>
    </form>
</body>
</html>
