using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication.Guest
{
    public partial class register_page : System.Web.UI.Page
    {
        Class1 obj = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btnreg_Click(object sender, EventArgs e)
        {
            object ob = obj.exescalar("insert into studlogin values('" + txtuser.Text + "','" + txtpass.Text + "', 'student','Not Confirmed');select @@IDENTITY");
            obj.dbclose();

            if (ob.ToString() != null)
            {
   
                int i = obj.exenonquery("insert into register values ('" + txtname.Text + "','" + txtadd.Text + "','" + txtage.Text + "','" + Radiogen.SelectedValue + "','" + ob + "');select @@IDENTITY");
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
}