using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class myFirstPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ddlColor.Items.Add(new ListItem("אדום", "Red"));
            ddlColor.Items.Add(new ListItem("כחול", "Blue"));
            ddlColor.Items.Add(new ListItem("ירוק", "Green"));
        }

    }
    protected void ddlColor_SelectedIndexChanged(object sender, EventArgs e)
    {
        lbl.BackColor =  System.Drawing.Color.FromName( ddlColor.SelectedValue);
        
    }
    protected void btn_Click(object sender, EventArgs e)
    {
        ddlColor.Items.Add(new ListItem(txtHeb.Text, txtEng.Text));
    }
}