using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StateManagementDemo
{
    public partial class ConStrPage : System.Web.UI.Page
    {
        bool local = false;
        string strCon;
        SqlConnection con = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (local)
            {
                strCon = ConfigurationManager.ConnectionStrings["localConStr"].ConnectionString;
            }
            else
            {
                strCon = ConfigurationManager.ConnectionStrings["LivDNSConStr"].ConnectionString;
            }
            con = new SqlConnection(strCon);
        }

        protected void btnCS_Click(object sender, EventArgs e)
        {
            con.Open();
            con.Close();
            Response.Write("success:)");
        }
    }
}