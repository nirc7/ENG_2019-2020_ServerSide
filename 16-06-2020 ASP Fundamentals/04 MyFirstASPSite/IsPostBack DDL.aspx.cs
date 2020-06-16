using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class IsPostBack_DDL : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //without the IsPostBack this will be filled every time with more "A" "S" "P"
        
        if (!IsPostBack)
        {
            myAspDDL.Items.Add("A");
            myAspDDL.Items.Add("S");
            myAspDDL.Items.Add("P");            
        }
        
    }
    protected void myAspDDL_SelectedIndexChanged(object sender, EventArgs e)
    {
        //be aware of this line executing only if the selection is actually changed!
        //this is because the page is generated every time from the start!!!
        Response.Write(myAspDDL.SelectedValue);
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        res.Text = DropDownList1.SelectedValue;
    }
}