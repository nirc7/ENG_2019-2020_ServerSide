using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Cookie_Target : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["UNameAndGrade"] != null)
        {
            string name = Request.Cookies["UNameAndGrade"].Values["UName"];
            string gradeString = Request.Cookies["UNameAndGrade"].Values["UGrade"];
            res.Text = name + " - " + gradeString;
        }

        //for a single value in the cookie
        //if (Request.Cookies["UName"] != null)
        //{
        //    string name = Request.Cookies["UName"].Value;
        //    res.Text = name ;
        //}
    }
}