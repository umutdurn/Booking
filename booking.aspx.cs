using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class booking : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void chckRoundTrip_CheckedChanged(object sender, EventArgs e)
    {
        if (chckRoundTrip.Checked)
        {
            txtDate2.Enabled = true;
            txtTime2.Enabled = true;
        }
        else
        {
            txtDate2.Enabled = false;
            txtTime2.Enabled = false;
        }
    }
}