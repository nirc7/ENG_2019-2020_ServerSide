using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Check(object sender, EventArgs e)
    {
        if (txtName.Text == "")
        {
            errName.Text = "please enter your name!";
        }
        else
        {
            errName.Text = string.Empty;
        }

        if (txtAge.Text == "")
        {
            errAge.Text = "please enter your age!";
        }
        else
        {
            errAge.Text = string.Empty;
        }

        if (txtName.Text != "" && txtAge.Text != "")
        {
            Context.Items["Name"] = txtName.Text;
            Context.Items["Age"] = txtAge.Text;
            Server.Transfer("Default2.aspx");
        }
    }
}