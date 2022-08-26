<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/StyleSheet3.css" />
     <title>Project</title>
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
                <a class="nav-link" href="gridview.aspx">Update Account</a>
            </li>
               <li class="nav-item">
                <a class="nav-link" href="gridview.aspx">Delete Account</a>
            </li>
               
              
            <li class="nav-item">
                <a class="nav-link" href="book.aspx">Books</a>
            </li>
               <li class="nav-item">
                <a class="nav-link" href="publisher.aspx">Publication</a>
            </li>
                       <li class="nav-item pull-right">
                <a class="nav-link" href="home.aspx">Logout</a>
            </li>
        </ul>
    </div>
    </nav></div>
<div class="demo">
    <div class="row justify-content-center">
 <form id="form1" runat="server" class="form-contain">

   <div class="container-fluid bg">
     
       
    
          <div class="row">
                <div class="col-md-12">
           <h1 class="text-center">Create Account</h1>
              </div>
              </div>
               <div class="na">
            <div class="row">
             <div class="col-md-12">
           <label class="lable f">FirstName</label>
                  </div>
                 </div>  
              <div class="row">
             <div class="col-md-12">
             <asp:TextBox ID="tb" runat="server" CssClass="form-control text1 row"  placeholder="Enter Your First Name"></asp:TextBox>
               <asp:RequiredFieldValidator runat="server" ID="require" ValidationGroup="one" ControlToValidate="tb"  Text="*" ErrorMessage="Plz Enter First name" SetFocusOnError="false" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
                 </div></div>
                 <div class="row"><div class="col-md-12">
            <label  class="lable ">LastName</label>  </div> </div>
           <div class="row"><div class="col-md-12">
           <asp:TextBox ID="Tblst" CssClass="form-control text1" runat="server"  placeholder="Enter Your Last Name"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ValidationGroup="one" ControlToValidate="Tblst"  Text="*" ErrorMessage="Plz Enter Last name" SetFocusOnError="false" ForeColor="Red"></asp:RequiredFieldValidator>
           </div>
                 </div>     
            <div class="row"><div class="col-md-12">
             <label class="lable">Password</label></div>
                 </div>   
                <div class="row"><div class="col-md-12">
              <asp:TextBox ID="TextBox1" TextMode="Password" CssClass="form-control text1" runat="server"  placeholder="Enter Your Password"></asp:TextBox>
              <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ValidationGroup="one" ControlToValidate="TextBox1" Text="*" ErrorMessage="Plz Enter PASSWORD" SetFocusOnError="false" ForeColor="Red"></asp:RequiredFieldValidator>
           </div>
                 </div> 
                    <div class="row"><div class="col-md-12">
                     <label class="lable">Confirm Password</label>   </div>
                 </div>     
          <div class="row"><div class="col-md-12">
                <asp:TextBox ID="confrmpass" TextMode="Password" runat="server" CssClass="form-control text1"   placeholder="Re-Enter Password" ></asp:TextBox>
               <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" ValidationGroup="one" ControlToValidate="confrmpass" Text="*" ErrorMessage="Confirm Password" SetFocusOnError="false" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server"  ValidationGroup="one" ControlToValidate="TextBox1" ControlToCompare="confrmpass" Text="*" ErrorMessage="invalid" SetFocusOnError="false" ForeColor="Red"></asp:CompareValidator>
              </div>
                 </div>  
              <div class="row"><div class="col-md-12">
                      <label  class="lable">Email</label>   </div>
                 </div> 
                   <div class="row"><div class="col-md-12">      
                   <asp:TextBox ID="email" CssClass="form-control text1" TextMode="Email" runat="server"   placeholder="Enter Your Email"> </asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Text="*"  ValidationGroup="one" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="email"  ForeColor="Red" ErrorMessage="Plz enter valid email" SetFocusOnError="true"></asp:RegularExpressionValidator>
                       </div>
                 </div> 
       <div class="row"><div class="col-md-12">
            <label  class="lable ">Status</label>  </div> </div>
           <div class="row"><div class="col-md-12">
               <asp:RadioButtonList ID="List1" runat="server">
                   <asp:ListItem Value="active" Text="Active"></asp:ListItem>
                      <asp:ListItem Value="inactive" Text="InActive"></asp:ListItem>
               </asp:RadioButtonList>
           </div>
                 </div>     
                        <div class="row"><div class="col-md-12">
                        
                              <asp:Button ID="btn" runat="server" Text="Sign Up" CssClass="btn btn-success" OnClick="btn_Click"  ValidationGroup="one" />
                                 <asp:ValidationSummary ID="summry" runat="server" ForeColor="Red" ValidationGroup="one"  />
                                 </div>
                 </div> 
               
        <div class="row justify-content-center ">
        <div class="col-md-12 ">
    <div class="btn btn-info btn-block-sm btn bg-info text-capitalize  float-right"   >
    <a href="logout.aspx" style="color:#ffffff;">Logout</a>
      </div>
         </div> </div>  
              
        </div>
 
</form>
 </div>
    
    </div>
    
     
</body>
</html>
