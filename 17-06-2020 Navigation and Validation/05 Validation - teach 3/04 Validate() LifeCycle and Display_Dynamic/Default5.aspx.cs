using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default5 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            //Page.Validate();
            if (Page.IsValid)
            {
                //do somthing...
            }
            else
            {

            }
            
        }
    }
    protected void Check(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            Response.Write(string.Format("your name is {0} and your age is {1}", txtName.Text, txtAge.Text));    
        }
        
    }

    protected void txtYear_TextChanged(object sender, EventArgs e)
    {
        int age= DateTime.Now.Year - int.Parse(txtYear.Text);
        txtAge.Text = age.ToString();
    }
    protected void txtName_TextChanged(object sender, EventArgs e)
    {
      
    }
}