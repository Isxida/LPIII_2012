<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.master" AutoEventWireup="true" CodeFile="RegistroUsuario.aspx.cs" Inherits="RegistroUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style9
    {
        width: 980px;
        height: 290px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <img alt="" src="img/imgRegister.jpg" width="100%" /></p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div class="well">
    <table style="width:100%;">
        <tr>
            <td colspan="2" 
                style="text-align: center; font-weight: 700; font-size: xx-large">
                REGISTRO DE USUARIO</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="pagination-right" width="42%">
                ID</td>
            <td>
                <asp:TextBox ID="txtIDuser" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="pagination-right">
                Clave</td>
            <td>
                <asp:TextBox ID="txtClave" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="pagination-right">
                Nombre</td>
            <td>
                <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="pagination-right">
                Apellido</td>
            <td>
                <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="pagination-right">
                E-mail</td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="btnRegistrar" runat="server" CssClass="btn-success" 
                    onclick="btnRegistrar_Click" Text="Registrar" />
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" />
            </td>
        </tr>
    </table>
    </div>
</asp:Content>

