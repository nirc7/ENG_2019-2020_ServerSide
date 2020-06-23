using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Cookie_Source : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_Click(object sender, EventArgs e)
    {
        HttpCookie myCookie = new HttpCookie("UNameAndGrade");
        myCookie.Values.Add("UName", txtName.Text);
        myCookie.Values.Add("UGrade", txtGrade.Text);
        myCookie.Expires = DateTime.Now.AddSeconds(30);
        Response.Cookies.Add(myCookie);

        //for a single value in the cookie
        //HttpCookie myCookie2 = new HttpCookie("UName");
        //myCookie2.Value = txtName.Text;
        //myCookie2.Expires = DateTime.Now.AddSeconds(20);
        //Response.Cookies.Add(myCookie2);
    }
}