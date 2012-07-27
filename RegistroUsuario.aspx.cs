using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProyectoService;

public partial class RegistroUsuario : System.Web.UI.Page
{
    ServiceClient proxy = new ServiceClient();
    UsuarioDTO usu = null;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnRegistrar_Click(object sender, EventArgs e)
    {
        usu = new UsuarioDTO();

        usu.IdUsu = txtIDuser.Text;
        usu.ClaveUsu = txtClave.Text;
        usu.NomUsu = txtNombre.Text;
        usu.ApeUsu = txtApellido.Text;
        usu.Email = txtEmail.Text;

        proxy.registrarUsuario(usu);

        Response.Redirect("RegistroCorrecto.aspx");
        
    }
}