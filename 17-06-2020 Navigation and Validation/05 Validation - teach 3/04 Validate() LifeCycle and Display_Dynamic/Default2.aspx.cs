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
    protected void Check(object sender, EventArgs e)
    {
        //Context.Items["Name"] = txtName.Text;
        //Context.Items["Age"] = txtAge.Text;
        //Server.Transfer("Default2.aspx");
        Response.Write(string.Format("your name is {0} and your age is {1}", txtName.Text, txtAge.Text));
    }

    protected void txtYear_TextChanged(object sender, EventArgs e)
    {
        int age= DateTime.Now.Year - int.Parse(txtYear.Text);
        txtAge.Text = age.ToString();
    }
}