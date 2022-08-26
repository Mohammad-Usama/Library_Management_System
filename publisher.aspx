<%@ Page Language="C#" AutoEventWireup="true" CodeFile="publisher.aspx.cs" Inherits="publisher" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Publisher</title>
    <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
<link rel="stylesheet" href="css/bootstrap.css" />
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link href="css/publsh.css" rel="stylesheet" />
</head>
<body>
     <div class="container-fluid">
    <nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
        <a class="navbar-brand" href="#">Library Management System</a>
      <div class="bar">
          <ul class="navbar-nav float-left ">
            <li class="nav-item">
                <a class="nav-link" href="home.aspx">Home</a>

            </li>
               <li class="nav-item">
                <a class="nav-link" href="registration.aspx">Creat Account</a>
            </li>
                    <li class="nav-item">
                <a class="nav-link" href="gridview.aspx">Manage Account</a>
                      </li>
              
              
            <li class="nav-item">
                <a class="nav-link" href="book.aspx">Books</a>
            </li>
                
                        <li class="nav-item pull-right">
                <a class="nav-link" href="home.aspx">Logout</a>
            </li>
        </ul>
    </div>
    </nav></div>
     <div class="container-fluid bg">
         <div class="row justify-content-center">
      
    <form id="form1" runat="server" class="form-contain">
    <div class="row">
        <div class="col-md-12">
            <h3 class="justify-content-center">Publisher</h3>
        </div>
    </div>
       <div class="row">
            <div class="col-md-12">
                <div class="form-group">
                    <asp:Label CssClass="p" runat="server">Publisher Name</asp:Label>
                    <asp:TextBox runat="server" ID="pubnam" CssClass="form-control text1" placeholder="Enter Your Publisher Name "></asp:TextBox>
                    <asp:RegularExpressionValidator ControlToValidate="pubnam" runat="server" SetFocusOnError="true" Text="*" ErrorMessage="Please Enter Publisher Name" ForeColor="Red"  ValidationGroup="Login"></asp:RegularExpressionValidator>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="form-group">
                            <asp:Label CssClass="p" runat="server">Address</asp:Label>
                    <asp:TextBox  runat="server" ID="ad" CssClass="form-control text1" placeholder="Enter Publisher Address"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="ad" SetFocusOnError="true" ErrorMessage="Please Enter Publisher Address" Text="*" ForeColor="Red" ></asp:RequiredFieldValidator>
                </div>
                </div>
            </div>
                <div class="row">
            <div class="col-md-12">
                <div class="form-group">
                            <asp:Label CssClass="p" runat="server">Year </asp:Label>
                    <asp:TextBox  runat="server" ID="yr" CssClass="form-control text1" placeholder="Enter Year of Publishing "></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="yr" SetFocusOnError="true" ErrorMessage="Please Enter Year of Publish" Text="*" ForeColor="Red" ></asp:RequiredFieldValidator>
                </div>
                </div>
            </div>
      
           
        <asp:ValidationSummary runat="server" ID="ValidationSummary1" ForeColor="Red" /> 
        <asp:Button CssClass="btn btn-info btn-block" runat="server" Text="Submit" ID="submit"  />    
    </form>
             </div>
             
    
         </div>
</body>
    <script src="js/bootstrap.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery-3.4.1.min.js"></script>
</html>
