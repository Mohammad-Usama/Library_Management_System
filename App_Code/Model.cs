﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;

public partial class tbl
{
    public int UserID { get; set; }
    public string UserFirstName { get; set; }
    public string UserLastName { get; set; }
    public string UserPassword { get; set; }
    public string UserEmail { get; set; }
    public bool user_status { get; set; }
}

public partial class tblbook
{
    public int bookid { get; set; }
    public string booktitle { get; set; }
    public string aurthor { get; set; }
    public string bokcategory { get; set; }
    public string bokstatus { get; set; }
    public string bokimage { get; set; }
    public bool boktype { get; set; }
    public string edition { get; set; }
    public string publication { get; set; }
}

public partial class bokdata_Result
{
    public int bookid { get; set; }
    public string booktitle { get; set; }
    public string aurthor { get; set; }
    public string bokcategory { get; set; }
    public string bokstatus { get; set; }
    public string bokimage { get; set; }
    public bool boktype { get; set; }
    public string edition { get; set; }
    public string publication { get; set; }
}

public partial class deleteuser_Result
{
    public int UserID { get; set; }
    public string UserFirstName { get; set; }
    public string UserLastName { get; set; }
    public string UserPassword { get; set; }
    public string UserEmail { get; set; }
    public bool user_status { get; set; }
}

public partial class login_Result
{
    public int UserID { get; set; }
    public string UserFirstName { get; set; }
    public string UserLastName { get; set; }
    public string UserPassword { get; set; }
    public string UserEmail { get; set; }
}

public partial class userdata_Result
{
    public int UserID { get; set; }
    public string UserFirstName { get; set; }
    public string UserLastName { get; set; }
    public string UserPassword { get; set; }
    public string UserEmail { get; set; }
    public bool user_status { get; set; }
}

public partial class userdata1_Result
{
    public int UserID { get; set; }
    public string UserFirstName { get; set; }
    public string UserLastName { get; set; }
    public string UserPassword { get; set; }
    public string UserEmail { get; set; }
    public bool user_status { get; set; }
}
