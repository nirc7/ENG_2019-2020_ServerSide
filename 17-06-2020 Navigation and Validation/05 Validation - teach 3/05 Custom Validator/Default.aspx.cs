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

    protected void ServerValFunc(object sender, ServerValidateEventArgs e)
    {
        Response.Write(sender);
        if(int.Parse( e.Value) % 2 ==0 )
        {
            e.IsValid = true;
            Label1.Text = "valid on server";
        }
        else
        {
            e.IsValid = false;
            Label1.Text = "not valid on server";
        }
    }
}