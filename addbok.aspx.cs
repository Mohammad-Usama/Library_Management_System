using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class addbok : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        using(dbEntities db= new dbEntities())
        {
            var query = db.bokdata(true);
            gv1.DataSource = query;
            gv1.DataBind();
        }


    }
}