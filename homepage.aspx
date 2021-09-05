<%@ Page Language="C#" AutoEventWireup="true" CodeFile="homepage.aspx.cs" Inherits="homepage" %>

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
    <link href="css/table.css" rel="stylesheet" />
</head>
<body class="bodybg2">
    <form id="form1" runat="server">
    <div>
        <nav class="navbar navbar-expand-md navbar-dark  bg-dark">
      <a class="navbar-brand" href="#"><h3 class="font-weight-bold">JobPortal</h3></a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">About us</a>
          </li>
            </ul>
          <ul class="navbar-nav ">
          <li>
          </li>
            <li>
          </li>
            <li>
          </li>
            <li class="nav-item ">
                 <a class="nav-link" href="jobseeker_login.aspx">Login</a>
          </li>
               <li class="nav-item">
                 <a class="nav-link" href="recruiter_login.aspx">Employer</a>
          </li>
               <li class="nav-item">
                 <a class="nav-link" href="admin_login.aspx">Admin</a>
          </li>
           
        </ul>
      </div>
    </nav>

    </div>       
        <div class="container">
            <br />
            <br />
            <center> 
                <h2 class="font-weight-bolder" > Find The Job That Fits Your Life<br />
                <small class="font-weight-light"> Create account here </small></h2>
            <asp:Button ID="Button1" runat="server" class="btn btn-success" Text="Create account " OnClick="Button1_Click" />

            </center>
        </div>
        <br />

      <div>
  <footer class="py-3 bg-dark text-white-50 fixed-bottom">
    <div class="container text-center">
      <small>Copyright &copy; 2020</small>
    </div>
  </footer>
        </div>

    </form>

</body>
</html>
