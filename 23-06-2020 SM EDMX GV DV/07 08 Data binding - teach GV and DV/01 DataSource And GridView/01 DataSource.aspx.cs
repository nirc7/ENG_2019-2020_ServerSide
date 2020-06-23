using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DataSource : System.Web.UI.Page
{
    int[] arr = new int[] { 1,2,4,7,99};

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DropDownList2.DataSource = SqlDataSource1;
            DropDownList2.DataValueField = "MovieID";
            DropDownList2.DataTextField = "MovieName";
            DropDownList2.DataBind();

            DropDownList3.DataSource = arr;
            DropDownList3.DataBind();
            arr[0] = 11;    //after the binding this will not be seen!
        }
        else
        {
            //arr[0] = 12;
            //DropDownList3.DataSource = arr; //without this line there won't be any change! 
                                            //with this line the change will appear at every request so it always will show the value of 12!
            //DropDownList3.DataBind();     //without this line there won't be any change! 
                                            //with this line the change will appear at every request so it always will show the value of 12!   
        }
        
        
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblRes1.Text = DropDownList1.SelectedValue;
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblRes2.Text = DropDownList2.SelectedValue;
    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblRes3.Text = DropDownList3.SelectedValue;
    }
}