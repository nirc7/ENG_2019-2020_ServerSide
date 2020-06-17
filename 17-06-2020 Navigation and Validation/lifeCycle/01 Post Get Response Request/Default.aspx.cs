using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write(Request.HttpMethod + "<br/>");
       
        //post
        foreach (var item in Request.Form)
        {
            Response.Write("POST-foreach- from Form:" + item + "<br />");
        }   

        for (int i = 0; i < Request.Form.Count; i++)
        {
            //option1
            Response.Write("POST-for-  from Form:" + Request.Form[i] + "<br />");
            //option2
            //Response.Write("POST- from Form:" +  Request.Form.Get(i)  +"<br />");
            
        }

        Response.Write("Post - the txt contains: " + Request.Form["txtName"] + "<br />");


        //get
        foreach (var item in Request.QueryString)
        {
            Response.Write("GET-foreach - from querystring:" + item + "<br />");
        }
        for (int i = 0; i < Request.QueryString.Count; i++)
        {
            //Response.Write("GET- from Form:" + Request.QueryString.Get(i) + "<br />");
            Response.Write("GET-for - from querystring:" + Request.QueryString[i] + "<br />");
        }

        Response.Write("GET - the txt contains: " + Request.QueryString["txtName"] + "<br />");
    }
}