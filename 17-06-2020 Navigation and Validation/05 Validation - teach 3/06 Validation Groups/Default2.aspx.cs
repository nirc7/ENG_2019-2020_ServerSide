using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Write("name ok");
    }
    protected void btnCheck_Click(object sender, EventArgs e)
    {
        Response.Write("id ok");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Write("stam submitted");
    }
}