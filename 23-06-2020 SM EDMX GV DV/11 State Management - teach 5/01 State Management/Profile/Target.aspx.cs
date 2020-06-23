using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Profile_Target : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        res.Text = "the user name is " + Profile.UserName + " : " +
                        Profile.name + " - " + Profile.grade.ToString();
    }
}