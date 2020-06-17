using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write("in Page_Load!</br>");
    }
    protected void Check(object sender, EventArgs e)
    {
        Response.Write("in check!</br>");
        if (Page.IsValid)
        {
            Response.Write(string.Format("your name is {0} and your age is {1}", txtName.Text, txtAge.Text));    
        }
        
    }

    protected void txtYear_TextChanged(object sender, EventArgs e)
    {
        Response.Write("in txtYear_TextChanged!</br>");
        int age= DateTime.Now.Year - int.Parse(txtYear.Text);
        txtAge.Text = age.ToString();
    }
}