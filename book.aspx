<%@ Page Language="C#" AutoEventWireup="true" CodeFile="book.aspx.cs" Inherits="book" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Book</title>
    <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
       <link rel="stylesheet" href="css/bootstrap.css" />
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link href="css/book.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
</head>
    <script>
        function show(value)
        {
            alert(value);
            location.href = "publisher.aspx";
        }
    </script>
<body>
     <div class="container-fluid">
    <nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
        <a class="navbar-brand" href="#">Library Management System</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#Hello">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="Hello">
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
                <a class="nav-link" href="publisher.aspx">Publication</a>
            </li>          
                        <li class="nav-item pull-right">
                <a class="nav-link" href="home.aspx">Logout</a>
            </li>
        </ul>
          </div>
    </div>
    </nav>
        </div>
     <div class="container-fluid bg">
         <div class="row justify-content-center">
      
    <form id="form1" runat="server" class="form-contain">
    <div class="row">
        <div class="col-md-12">
            <h3 class="justify-content-center">Book Details</h3>
        </div>
    </div>
       <div class="row">
            <div class="col-md-12">
                
                    <asp:Label CssClass="p" runat="server">Book Title</asp:Label>
                    <asp:TextBox class="t" runat="server" ID="boktitle" CssClass="form-control text1" placeholder="Enter Your Book title"></asp:TextBox>
                    <asp:RequiredFieldValidator  ID="r1" ControlToValidate="boktitle" runat="server" SetFocusOnError="true" Text="*" ErrorMessage="Please Enter Valid Title" ForeColor="Red"  ></asp:RequiredFieldValidator>
               
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
       
                            <asp:Label CssClass="p" runat="server">Aurthor</asp:Label>
                    <asp:TextBox class="t"  runat="server" ID="authr" CssClass="form-control text1" placeholder="Enter Aurthor Name"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="r2" runat="server" ControlToValidate="authr" SetFocusOnError="true" ErrorMessage="Please Enter Aurthor" Text="*" ForeColor="Red" ></asp:RequiredFieldValidator>
                
                </div>
            </div>
              
         <div class="row">
            <div class="col-md-12">
             
                            <asp:Label CssClass="p" runat="server">Category</asp:Label>
                    
                     <asp:DropDownList runat="server" CssClass="form-control" ID="DropDown" class="t">
            <asp:ListItem Value="0" Text="Select"></asp:ListItem>
            <asp:ListItem Value="Periodical" Text="Periodical"></asp:ListItem>
            <asp:ListItem Value="Magzines" Text="Magzines"></asp:ListItem>
            <asp:ListItem Value="Course" Text="Course"></asp:ListItem>
            <asp:ListItem Value="References" Text="References"></asp:ListItem>

        </asp:DropDownList>
          <asp:RequiredFieldValidator ID="r3" ControlToValidate="DropDown" runat="server" InitialValue="0" SetFocusOnError="true" ErrorMessage="Please Select atleast one option" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
      </div>
          
            </div>
                
               
        <div class="row">
            <div class="col-md-12">
               
                            <asp:Label CssClass="p" runat="server">Status</asp:Label>
                     <asp:DropDownList runat="server" ID="Status" CssClass="form-control " class="t">
                        <asp:ListItem Value="0" Text="Select"></asp:ListItem>
            <asp:ListItem Value="New" Text="New"></asp:ListItem>
            <asp:ListItem Value="Old" Text="Old"></asp:ListItem>
            <asp:ListItem Value="Damage" Text="Damage"></asp:ListItem>
            <asp:ListItem Value="Subject For Replacement" Text="Subject For Replacement"></asp:ListItem>
                    </asp:DropDownList>
                     <asp:RequiredFieldValidator   ID="r4" ControlToValidate="Status" runat="server" InitialValue="0" SetFocusOnError="true" ErrorMessage="Please Select atleast one option" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
               
                </div>
            </div>
        <div class="row">
            <div class="col-md-12">
                
                            <asp:Label CssClass="p" runat="server" class="t">Edition</asp:Label>
                    <asp:TextBox  runat="server" ID="edtn" CssClass="form-control text1" placeholder="Enter Book Edition"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="r5" runat="server" ControlToValidate="edtn" SetFocusOnError="true" ErrorMessage="Please Enter Aurthor" Text="*" ForeColor="Red" ></asp:RequiredFieldValidator>
                
                </div>
            </div>
        <div class="row">
            <div class="col-md-12">
                       <asp:Label CssClass="p" runat="server" class="t">Publication Name</asp:Label>
                    <asp:TextBox  runat="server" ID="pubnam" CssClass="form-control text1" placeholder="Enter Book Publication"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="r6" runat="server" ControlToValidate="pubnam" SetFocusOnError="true" ErrorMessage="Please Enter Aurthor" Text="*" ForeColor="Red" ></asp:RequiredFieldValidator>     
            </div>
        </div>  
            <div class="row">
            <div class="col-md-12">
                       <asp:Label CssClass="p" runat="server" class="t">Book Image</asp:Label>
                <asp:FileUpload ID="file" runat="server" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="file" SetFocusOnError="true" ErrorMessage="Please Upload book image" Text="*" ForeColor="Red" ></asp:RequiredFieldValidator>     
            </div>
        </div>  
        
        <asp:ValidationSummary runat="server" ID="ValidationSummary1" ForeColor="Red" /> 
        <asp:Button CssClass="btn btn-info btn-block" runat="server" Text="Submit" ID="submit"  OnClick="submit_Click" />    
    </form>
             </div>
         </div>
</body>
    <script src="js/bootstrap.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery-3.4.1.min.js"></script>
</html>

