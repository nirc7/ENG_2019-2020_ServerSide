using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Session_Target : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string name = (string)Session["UName"] ?? "no name";
        int grade = -1;
        if (Session["UGrade"] != null)
        {
            grade = (int)Session["UGrade"];
        }

        res.Text = name + " - " + grade.ToString();
    }
}