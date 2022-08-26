<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
     <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
<link rel="stylesheet" href="css/bootstrap.css" />
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/StyleSheet.css" />
<link rel="stylesheet" href="css/font-awesome.css" />
    <link rel="stylesheet" href="css/font-awesome.min.css" />
    <link href="css/home.css" rel="stylesheet" />
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
                <a class="nav-link" href="login_page.aspx">Books</a>
            </li>
               <li class="nav-item">
                <a class="nav-link" href="login_page.aspx">Publication</a>
            </li>
                      
      
        </ul>
    </div>
    </nav></div>
  <form id="form1" runat="server" >
      <div class="form-contain">
    <div class="row">
        <div class="col-md-12 lib ">
       
            <p>Libraries store the energy that fuels the imagination. They open up windows to the world and inspire us to explore and achieve, and contribute to improving our quality of life. Libraries change lives for the better.     

          </p>
                <footer class="blockquote-footer">Sidney Sheldon</footer>
            
        </div>
            </div></div>
          <div class="row">
        <div class="col-md-2 btn">
      <asp:Button CssClass="btn btn-success btn-block" runat="server" Text="LOG IN" ID="Button2" OnClick="submit_Click" />
            </div>
            </div>
      
           </form>
        
    
    
</body>
        <script src="js/bootstrap.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery-3.4.1.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
</html>
