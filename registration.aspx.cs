using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack) return;
        if (Request.QueryString["uid"] != null)
        {
            using (dbEntities db = new dbEntities())
            {
                int UserID = Convert.ToInt32(Request.QueryString["uid"]);
                tbl txt = db.tbls.FirstOrDefault(v => v.UserID == UserID);
                tb.Text = txt.UserFirstName;
                Tblst.Text = txt.UserLastName;

                TextBox1.Attributes["value"] = txt.UserPassword;
                email.Text = txt.UserEmail;
                db.SaveChanges();
            }

        }

        if (Session["Email"] == null)
        {
            Response.Redirect("login_page.aspx");
        }
        this.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }
    protected void btn_Click(object sender, EventArgs e)
    {
        if (Request.QueryString["uid"] != null)
        {
            using (dbEntities db = new dbEntities())
            {
                int UserID = Convert.ToInt32(Request.QueryString["uid"]);
                tbl txt = db.tbls.FirstOrDefault(v => v.UserID == UserID);
                txt.UserFirstName = tb.Text;
                txt.UserLastName = Tblst.Text;
                txt.UserPassword = TextBox1.Text;
                txt.UserEmail = email.Text;
                txt.user_status = true;

                db.SaveChanges();
            }
        }
        else
        {  using (dbEntities db = new dbEntities())
            {
                tbl txt = new tbl();
                txt.UserFirstName = tb.Text;
                txt.UserLastName = Tblst.Text;
                txt.UserPassword = TextBox1.Text;
                txt.UserEmail = email.Text;
                txt.user_status = true;

                db.tbls.Add(txt);
                db.SaveChanges();

            }
            Response.Redirect("gridview.aspx");
        }
    }
}