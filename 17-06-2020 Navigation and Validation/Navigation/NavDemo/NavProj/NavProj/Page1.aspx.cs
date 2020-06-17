using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NavProj
{
    public partial class Page1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGo2PAge2_Click(object sender, EventArgs e)
        {
            Response.Redirect("./Pages/page2.aspx");
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            Response.Write(TextBox1.Text);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}