<%@ Page Language="C#" AutoEventWireup="true" CodeFile="gridview.aspx.cs" Inherits="gridview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/gridview.css" rel="stylesheet" />
    <script>
        function confirmde()
        {
            if(confirm("Are you sure to delete?"))
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    </script>
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
    <div class="row justify-content-center">
  <form runat="server" class=" form-contain">  
          <div class="row">
        <div class="col-md-12">
            <h3 class="justify-content-center">Manage Accounts</h3>
        </div>
    </div> 
      <div class="row" >
          <div class="col-md-12">
     <div class="grid">
    <asp:GridView ID="gv" runat="server" AutoGenerateColumns="false" OnRowCommand="gv_RowCommand" OnRowEditing="gv_RowEditing" OnRowDeleting="gv_RowDeleting">
     
        <Columns>
            
            <asp:BoundField   DataField="UserEmail" HeaderText="EMAIL" />
                
            <asp:TemplateField HeaderText="ACTION">
                <ItemTemplate >
         
                   <div class="btn btn-info btn-block-sm btn bg-info text-capitalize  " >
                    <asp:LinkButton  runat="server"  style="color:white" Text=" Edit" CommandName="edit" CommandArgument='<%# Eval("UserID") %>' ></asp:LinkButton></div>
                     <div class="btn btn-info btn-block-sm btn bg-info text-capitalize "   >
                       <asp:LinkButton runat="server"  style="color:white" Text="Delete" OnClientClick="return confirmde()" CommandName="delete" CommandArgument='<%# Eval("UserID") %>' ></asp:LinkButton>
                   </div>
                </ItemTemplate>
                
            </asp:TemplateField>
                  
        </Columns>
           
    </asp:GridView>
    
    
         </div>
       </div>
      </div>
    </form>
        </div>
</body>
</html>
