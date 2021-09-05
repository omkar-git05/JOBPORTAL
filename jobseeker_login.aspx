<%@ Page Language="C#" AutoEventWireup="true" CodeFile="jobseeker_login.aspx.cs" Inherits="jobseeker_login" %>

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
    <nav class="navbar navbar-expand-md navbar-dark  bg-dark">
      <a class="navbar-brand" href="#"><h3 class="font-weight-bold">JobPortal <small class="text-muted"> For Jobseeker </small></h3></a>
      <div class="nav navbar">

          <ul class="navbar nav">             
              <li class="nav-item">
                   <a class="nav nav-link " href="homepage.aspx">Back to Home</a>
              </li>            
          </ul>
      </div>    
    </nav>
    <form id="form1" runat="server">
    <div class=" container login-container">
        
    <div class="col col-md-6 login-form-1 ">
        
       <div class="form-group">
        <h3 class="font-weight-bolder"> Jobseeker Login </h3>
        <br />
        <div class="form-group">
            <h4> User Name</h4>
            <asp:TextBox ID="TextBox1" class="form-control-sm" placeholder=" Enter your Username" runat="server"></asp:TextBox>
        </div>

        <div class="form-group">
            <h4> Password</h4>
            <asp:TextBox ID="TextBox2" class="form-control-sm" placeholder=" Enter your password" runat="server"></asp:TextBox>
        </div>
                <div>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
         <br />      
        
         <div>
              <asp:Button ID="Button1" class="btn btn-success " runat="server" Text="login" OnClick="Button1_Click"  />     
        </div> <hr />
        <div>
          <asp:HyperLink ID="HyperLink1"  runat="server" ForeColor="#6699FF">Forget password ?</asp:HyperLink>  
        </div><hr />
        <div>
            <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="#6699FF" NavigateUrl="~/JobSReg1.aspx">Registration</asp:HyperLink>
            <br />
            <br />
        </div>           
        </div>
    </div> 
    </div>

    </form>
</body>
</html>
