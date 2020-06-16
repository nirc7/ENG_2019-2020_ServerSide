using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstASspDemo2
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (txtEmail.Text == "avi@a.com" && txtPass.Text == "123")
            {
                lblRes.Text = txtEmail.Text + " is logged in!";
                lblRes.ForeColor = Color.FromName("green");
            }
            else
            {
                lblRes.Text = txtEmail.Text + " is NOT logged in!";
                lblRes.ForeColor = Color.FromName("red");
            }
        }
    }
}