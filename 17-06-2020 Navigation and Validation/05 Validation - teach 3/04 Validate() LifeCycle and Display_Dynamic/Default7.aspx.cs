using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default7 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            Page.Validate();
            //if (Page.IsValid)
            //{
            //    //do somthing...
            //}
            //else
            //{

            //}
            
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
        if (Page.IsValid)
        { }
        Validate();
        if (Page.IsValid)
        { }

        int age= DateTime.Now.Year - int.Parse(txtYear.Text);
        txtAge.Text = age.ToString();
        
        if (Page.IsValid)
        { }
        //Validate(); //option 1 :when changing the year from 1990 to 2000 
        //if this is commented you can see that the asp automatically is called before the check().
        //if this is no commented then you'll see that after this validate() the isvalid=false
        if (Page.IsValid)
        { }
    }
    protected void txtName_TextChanged(object sender, EventArgs e)
    {
        if (Page.IsValid)
        { }
        Validate();
        if (Page.IsValid)
        { }

        //option 2
        //int age = DateTime.Now.Year - int.Parse(txtYear.Text);
        //txtAge.Text = age.ToString();

        if (Page.IsValid)
        { }
        //Validate(); //option 2 when changing the year from 1990 to 2000 and also changing the name (keeping it valid) we could see that the
        //asp would not call the validate() automatucally between this function and the txtYear_TextChanged() function!
        if (Page.IsValid)
        { }
    }
}