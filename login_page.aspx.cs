using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login_page : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        using(dbEntities db = new dbEntities())
        {
            var query = db.login(EM.Text, P1.Text).ToList();
            if(query.Count()>0)
            {
              
                Session["Email"] = query[0].UserEmail;
                Session["Password"] = query[0].UserPassword;
                Session.Timeout = 720;
                Response.Redirect("book.aspx");
            }
        }

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("home.aspx");
    }
}