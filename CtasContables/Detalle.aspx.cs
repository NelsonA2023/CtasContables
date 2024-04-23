using System;
using System.IO;

namespace CtasContables
{
    public partial class Detalle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            StreamReader arch = new StreamReader(this.Server.MapPath(".") + "/Cuentas.txt");
            this.Label4.Text = arch.ReadToEnd();
            arch.Close();
        }
    }
}