<%@ Page Language="C#" AutoEventWireup="true" CodeFile="recruiter_regi.aspx.cs" Inherits="recruiter_regi" %>

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
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <nav class="navbar navbar-expand-md navbar-dark  bg-dark">
      <a class="navbar-brand" href="#"><h3 class="font-weight-bold">JobPortal <small class="text-muted"> For Employer </small></h3></a>
      <div class="nav navbar">

          <ul class="navbar nav">             
              <li class="nav-item">
                   <a class="nav nav-link " href="homepage.aspx">Back to Home</a>
              </li>            
          </ul>
      </div>    
    </nav>
        <div>
            <div class="container-fluid">
                <center>
                <h1 class="font-weight-bold align-content-center"> Registration</h1>
                </center>
            </div><br />
        <div class="container">
        <h2 class=" card bg-info"> Login Detailes </h2>
                  
        <div class="form-group">
           <h5>Usename</h5>                
            <asp:TextBox ID="TextBox1" class="form-control-sm"  placeholder="Enter username" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
           <h5>Password</h5>                
            <asp:TextBox ID="TextBox2" class="form-control-sm"  placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>
        </div>
        <div class="form-group">
           <h5>Confirm Password</h5>                
             <asp:TextBox ID="TextBox3" class="form-control-sm"  placeholder="Confirm Password" runat="server" TextMode="Password"></asp:TextBox>
        </div>
        <div class="form-group">
           <h5>Security Question</h5>                
            <asp:DropDownList ID="DropDownList1" class="btn btn-group-sm btn-outline-info" runat="server"></asp:DropDownList> 
        </div> 
        <div class="form-group">
           <h5>Answer</h5>                
             <asp:TextBox ID="TextBox4" class="form-control-sm"  runat="server"></asp:TextBox>
        </div>
    </div><br />
          
        <div class="container">
           <h2 class=" card bg-info"> Company Detailes </h2>
          <div class="form-group">
           <h5>Company Name</h5>                
             <asp:TextBox ID="TextBox5" class="form-control-sm"  runat="server"></asp:TextBox>
          </div>                 
          <div class="form-group">
           <h5>Contact Person</h5>                
             <asp:TextBox ID="TextBox6" class="form-control-sm"   runat="server"></asp:TextBox>
          </div>
          <div class="form-group">
           <h5>Company Information</h5>                
             <asp:TextBox ID="TextBox7" class="form-control-sm"   runat="server" TextMode="MultiLine"></asp:TextBox>
          </div>
          <div class="form-group">
           <h5>Contact no</h5>                
             <asp:TextBox ID="TextBox8" class="form-control-sm"   runat="server" TextMode="Number"></asp:TextBox>
          </div>
            <div class="form-group">
           <h5>Address</h5>                
             <asp:TextBox ID="TextBox9" class="form-control-sm"   runat="server" TextMode="MultiLine"></asp:TextBox>
            </div>
           <div class="form-group">
           <h5>Email</h5>                
             <asp:TextBox ID="TextBox10" class="form-control-sm"   runat="server" TextMode="Email"></asp:TextBox>
           </div>

    </div>
            <br />
        <div class="container">
        <asp:Button ID="Button1" class="btn btn-secondary" runat="server" Text="Create Profile" OnClick="Button1_Click" />
        </div>
        </div>
    </div>
    </form>
</body>
</html>
