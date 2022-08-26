using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class gridview : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        filluser();
    }
    protected void filluser()
    {
        using (dbEntities db = new dbEntities())
        {
            var query = db.userdata(true);
            gv.DataSource = query;
            gv.DataBind();

        }
    }
    protected void gv_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "edit")
        {
            Response.Redirect("registration.aspx?uid=" + e.CommandArgument);
        }
        else if (e.CommandName == "delete")
        {
            using (dbEntities db = new dbEntities())
            {
                int UserID = Convert.ToInt32(e.CommandArgument);
                db.userdelete(UserID);
            }
            filluser();

        }
    }
    protected void gv_RowEditing(object sender, GridViewEditEventArgs e)
    {

    }
    protected void gv_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }
}