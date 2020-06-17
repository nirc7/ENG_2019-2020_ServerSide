using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btCheck_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
            lblMessage.Text = "the Page is Valid";
        else	//you want see this anyway!!!
            lblMessage.Text = "the Page is NOT Valid";
    }
}
