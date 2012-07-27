<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.master" AutoEventWireup="true" CodeFile="LoginUsuario.aspx.cs" Inherits="LoginUsuario" %>
<%@ MasterType VirtualPath="~/PaginaMaestra.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style9
        {
            color: #000000;
        }
        .style10
        {
            color: #FF0000;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <img alt="" src="img/imgLogin.png" width="100%" /></p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<div class="well">
    <table align="center" style="width:100%;" width="80%">
        <tr>
            <td colspan="2" 
                style="text-align: center; font-size: xx-large; font-weight: 700">
                LOGIN DE USUARIO</td>
        </tr>
        <tr>
            <td width="40%">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: right" width="40%">
                <asp:Label ID="lblIdUsuario" runat="server" 
                    Text="ID Usuario" CssClass="style9"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtIdUsuario" runat="server"></asp:TextBox>
            &nbsp;<asp:Label ID="lblIdIncorrecto" runat="server" CssClass="style10"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align: right">
                <asp:Label ID="lblClave" runat="server" Text="Clave" CssClass="style9"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtClave" runat="server" TextMode="Password"></asp:TextBox>
            &nbsp;<asp:Label ID="lblClaveIncorrecta" runat="server" CssClass="style10"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align: right">
                &nbsp;</td>
            <td>
                <asp:Button ID="btnIngresar" runat="server" Text="Ingresar" 
                    onclick="btnIngresar_Click" CssClass="btn-primary" />
            </td>
        </tr>
    </table>
    </div>
</asp:Content>

