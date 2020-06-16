using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstASspDemo2
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) //first time only!
            {
                lblBokerTov.Text = "good morning:)";
            }
            else //second time or more - staying in this page
            {
                lblBokerTov.Text = "";
            }
            Response.Write("page load "  + DateTime.Now.Second);
        }

        protected void btnSayHello_Click(object sender, EventArgs e)
        {
             lblName.Text = "hello " + txtName.Text;
        }

        protected void txtName_TextChanged(object sender, EventArgs e)
        {
            Response.Write("<div style='color:red; position:absolute; bottom:0px'>" + txtName.Text + "</div>");
        }

        protected void txtFamily_TextChanged(object sender, EventArgs e)
        {
            Response.Write( txtFamily.Text );
        }
        
        protected void ddlChanged(object sender, EventArgs e)
        {
            Response.Write("</br>" + DropDownList1.SelectedValue);    
        }
    }
}