using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstASspDemo2
{
    public partial class Ex1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ddlColors_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblColor.Text = "this label is colored " +  ddlColors.SelectedItem;
            lblColor.BackColor = Color.FromName(ddlColors.SelectedValue);
        }

        protected void btnAddColor_Click(object sender, EventArgs e)
        {
            ddlColors.Items.Add(new ListItem(txtHeb.Text, txtEng.Text));
        }
    }
}