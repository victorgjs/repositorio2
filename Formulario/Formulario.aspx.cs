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
    }
    protected void ddl_mes_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void ddl_salud_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddl_salud.SelectedValue.Equals("FONASA"))
        {
            txt_Montoisapre.Enabled = false;
        }
    }
}