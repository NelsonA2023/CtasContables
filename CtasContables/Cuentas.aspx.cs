using System;
using System.IO;
using System.Threading.Tasks;
using System.Web.UI.WebControls;

namespace CtasContables
{
    public partial class Cuentas : System.Web.UI.Page
    {
        int primerdigito = 0;
        string tipo = "";
        int codigo = 0;
        public void Page_Load(object sender, EventArgs e)
        {
            if (File.Exists(this.Server.MapPath(".") + "/codigo.txt"))
            {
                StreamReader arch1 = new StreamReader(this.Server.MapPath(".") + "/codigo.txt");
                string valor = arch1.ReadToEnd();
                codigo = int.Parse(valor);
                codigo++;
                arch1.Close();
                StreamWriter arch2 = new StreamWriter(Server.MapPath(".") + "/contador.txt");
                arch2.WriteLine(codigo.ToString());
                arch2.Close();
            }
            else
            {
                StreamWriter arch = new
               StreamWriter(this.Server.MapPath(".") + "/codigo.txt");
                arch.WriteLine("1000");
                arch.Close();
            }

        }
        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            //codigo = codigo + 1;
            string code = codigo.ToString();

            StreamWriter arch2 = new StreamWriter(Server.MapPath(".") + "/codigo.txt");
            arch2.WriteLine(codigo.ToString());
            arch2.Close();
            if (string.IsNullOrEmpty(TextBox2.Text) || !RadioButton1.Checked && !RadioButton2.Checked && !RadioButton3.Checked && !RadioButton4.Checked && !RadioButton5.Checked)
            //string.IsNullOrEmpty(TextBox2.Text) || (RadioButton1.Checked && RadioButton2.Checked && RadioButton3.Checked && RadioButton4.Checked && RadioButton5.Checked)
            {
                this.Label15.Text = "Complete los datos";
            }
            else
            {

                if (this.RadioButton1.Checked)
                {
                    primerdigito = 1;
                    tipo = "Activo";
                }
                else if (this.RadioButton2.Checked)
                {
                    primerdigito = 2;
                    tipo = "Pasivo";
                }
                else if (this.RadioButton3.Checked)
                {
                    primerdigito = 3;
                    tipo = "PN";
                }
                else if (this.RadioButton4.Checked)
                {
                    primerdigito = 4;
                    tipo = "Positivo";
                }
                else if (this.RadioButton5.Checked)
                {
                    primerdigito = 5;
                    tipo = "Negativo";
                }
                string primero = primerdigito.ToString();

                TextBox1.Text = primero + "-" + code;
                StreamWriter arch = new StreamWriter(this.Server.MapPath(".") + "/cuentas.txt", true);
                arch.WriteLine("Nombre:" + this.TextBox2.Text);
                arch.WriteLine("<br>");
                arch.WriteLine("Tipo:" + tipo);
                arch.WriteLine("<br>");
                arch.WriteLine("Codigo<br>");
                arch.WriteLine(this.TextBox1.Text);
                arch.WriteLine("<br>");
                arch.WriteLine("<hr>");
                arch.Close();

                Label15.Text = "";
                Label16.Text = "Registro guardado";

            }
        }


    }
}