using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class book : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void submit_Click(object sender, EventArgs e)

    {
        using(dbEntities db =new dbEntities())
        {
            tblbook tb = new tblbook();
            tb.booktitle = boktitle.Text;
            tb.aurthor = authr.Text;
            tb.bokcategory = DropDown.Text;
            tb.bokstatus = Status.Text;
            tb.edition = edtn.Text;
            tb.boktype = true;
            tb.bokimage = file.FileName;
            tb.publication = pubnam.Text;
            
            db.tblbooks.Add(tb);
            db.SaveChanges();

        }
        Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "abc", "show('Congratulations')", true);
        if (file.HasFile)
        {
            file.SaveAs(Server.MapPath("images/" + file.FileName));
        }


    }
}