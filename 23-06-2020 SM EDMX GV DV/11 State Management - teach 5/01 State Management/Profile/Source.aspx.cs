using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Profile;

public partial class Profile_Source : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_Click(object sender, EventArgs e)
    {
        Profile.name = txtName.Text;
        Profile.grade = int.Parse(txtGrade.Text);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        ProfileManager.DeleteInactiveProfiles(ProfileAuthenticationOption.All, DateTime.Now.AddSeconds(-10));
    }
}