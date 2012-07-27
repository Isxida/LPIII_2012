using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProyectoService;

public partial class LoginUsuario : System.Web.UI.Page
{

    ServiceClient proxy = new ServiceClient();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnIngresar_Click(object sender, EventArgs e)
    {
        string id = txtIdUsuario.Text;
        string clave = txtClave.Text;

        int q = proxy.existeUsuario(id);

        if (q == 0)
        {
            lblIdIncorrecto.Text = "No existe un usuario con esa ID";
            Response.Redirect("LoginUsuario.aspx");
        }
        else {
            int q2 = proxy.claveCorrectaUsuario(id, clave);

            if (q2 == 0)
            {
                lblClaveIncorrecta.Text = "Clave incorrecta";
                Response.Redirect("LoginUsuario.aspx");
            }
            else
            {
                Session["usuario"] = id;
                Response.Redirect("Bienvenida.aspx");
            }
        }
       
    }
}