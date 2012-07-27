using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PaginaMaestra : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    /*Para acceder a los metodos del MasterPage, es necesario que en la pagina 
    que requiera el metodo, se coloque como directiva lo siguiente en la parte del codigo:
     
    <%@ MasterType VirtualPath="~/Principal.master" %>
      
    y asi con las consiguientes paginas que quieran usar algun metodo declarado aqui
     
    */

    //metodo que valide el ingreso
    public void ingreso(String usu)
    {
        if (usu.Trim().Length == 0)
            Response.Redirect("LoginUsuario.aspx");
        else
        {
            lblUsuario.Text = usu;
        }
    }

    public void UserNomLabel(String nom) {
        lblUsuario.Text = nom;
        Session["usuario"] = nom;
    }
}
