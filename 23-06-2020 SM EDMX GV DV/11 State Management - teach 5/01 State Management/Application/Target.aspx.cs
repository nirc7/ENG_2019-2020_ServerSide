using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Application_Target : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string name = (string)Application["UName"];
        int grade = (int)Application["UGrade"];
        int count = (int)Application["count"]; 
        res.Text = name + " - " + grade.ToString() + " - "+  count.ToString();
    }
}