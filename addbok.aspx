<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addbok.aspx.cs" Inherits="addbok" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/addbok.css" rel="stylesheet" />
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
    <asp:GridView ID="gv1" runat="server" AutoGenerateColumns="false">
        <Columns>
            
              <asp:BoundField  ItemStyle-Width="79px"  DataField="booktitle" HeaderText=  "  TITLE  " />
            <asp:BoundField ItemStyle-Width="40px"  DataField="aurthor" HeaderText="AURTHOR" />
            <asp:BoundField  ItemStyle-Width="40px" DataField="bokcategory" HeaderText="CATEGORY" />
        
            <asp:BoundField ItemStyle-Width="90px"  DataField="bokimage" HeaderText="BOOK_IMAGE" />
            <asp:BoundField  ItemStyle-Width="40px" DataField="edition" HeaderText="EDITION" />
            <asp:BoundField  ItemStyle-Width="40px" DataField="publication" HeaderText="PUBLICATION" />
             
            <asp:TemplateField  HeaderText="ACTION">
             
                
                <ItemTemplate >
                    
         <div class="col-md-6">
                   <div class="btn btn-info btn-block-sm btn bg-info text-capitalize   " >
                    <asp:LinkButton  runat="server" style="color:white;width:14vh;"    Text=" Edit"   ></asp:LinkButton></div></div>
                     <div class="btn btn-info btn-block-sm btn bg-info text-capitalize "   >
                         <div class="col-md-3">
                       <asp:LinkButton runat="server"  style="color:white;"  Text="Delete" OnClientClick="return confirmde()"  ></asp:LinkButton>
                   </div></div>
            
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
