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
        if (IsPostBack)
        {
            lblResult.InnerText = txtName.Text + " 1 ";
            lblResult2.Text = txtName.Text + " 2 ";
            lblPostBack.Text = "This is NOT your first time here! ==> IsPostBack=True";
        }
        else
        {
            lblPostBack.Text = "This is your first time here! ==> IsPostBack=False";
        }
    }
    protected void nirs_Click(object sender, EventArgs e)
    {
        Response.Write("<p>from nir's click!</p>");
        lblResult2.Text = "from nir's click!";
        stam.Text = "from ASP!"; //pay attention that in the "view source" you will see that "from ASP!" is there
        //BUT the js will run after the page left the server and arrived to the client and so you see the "from JS !"
    }
}