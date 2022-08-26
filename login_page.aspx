<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login_page.aspx.cs" Inherits="login_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
<link rel="stylesheet" href="css/bootstrap.css" />
    <link rel="stylesheet" href="css/bootstrap.min.css" />
   <link rel="stylesheet" href="css/StyleSheet2.css" />
</head>
<body>
     <div class="container-fluid bg">
         <div class="row justify-content-center">
      
    <form id="form1" runat="server" class="form-contain">
    <div class="row">
        <div class="col-md-12">
            <h3 class="justify-content-center">LogIn</h3>
        </div>
    </div>
       <div class="row">
            <div class="col-md-12">
               
                    <asp:Label CssClass="p" runat="server">Enter Your Email</asp:Label>
                    <asp:TextBox runat="server" ID="EM" CssClass="form-control text1" TextMode="Email" placeholder="Enter Your Email"></asp:TextBox>
                    <asp:RegularExpressionValidator ControlToValidate="EM" runat="server" SetFocusOnError="true" Text="*" ErrorMessage="Please Enter Valid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="Login"></asp:RegularExpressionValidator>
            
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
               
                            <asp:Label CssClass="p" runat="server">Enter Your Password</asp:Label>
                    <asp:TextBox TextMode="Password" runat="server" ID="P1" CssClass="form-control text1" placeholder="Enter Your Password"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="P1" SetFocusOnError="true" ErrorMessage="Please Enter Password" Text="*" ForeColor="Red" ></asp:RequiredFieldValidator>
              
                </div>
            </div>
           
        <asp:ValidationSummary runat="server" ID="ValidationSummary1" ForeColor="Red" /> 
        <asp:Button CssClass="btn btn-info btn-block" runat="server" Text="LOG IN" ID="submit" OnClick="submit_Click" />  
         <asp:Button CssClass="btn btn-info btn-block" runat="server" Text="Eixt" ID="Button1"  OnClick="Button1_Click" ValidationGroup="HO" />  
        
    </form>
             </div>
             
    
         </div>
</body>
    <script src="js/bootstrap.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery-3.4.1.min.js"></script>
</html>
