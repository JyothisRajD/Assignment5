using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class facultyreg : System.Web.UI.Page
    {
        Class1 obj = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void fbutton_Click(object sender, EventArgs e)
        {
            object ob = obj.exescalar("insert into studlogin values('" + txtfusrname.Text + "','" + txtfpass.Text + "', 'faculty','Not Confirmed');select @@IDENTITY");
            obj.dbclose();

            int i = obj.exenonquery("insert into faculty values ('" + txtfname.Text + "','" + txtfemail.Text + "','" + txtfphone.Text + "','" + "','" + ob + "')");
            obj.dbclose();
            if (i == 1)
            {
                Response.Write("Sucess");
            }
            else
            {
                Response.Write("Failed");
            }
        }
    }
}