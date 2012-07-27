<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.master" AutoEventWireup="true" CodeFile="Studio.aspx.cs" Inherits="Pages_Studio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <table style="width:100%;" width="25%">
        <tr>
            <td bgcolor="#CCCCCC" class="pagination-centered" colspan="3">
                Mantenimiento de Studios</td>
        </tr>
        <tr>
            <td bgcolor="#CCCCCC" width="25%">
                Codigo</td>
            <td bgcolor="#CCCCCC" width="25%">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td bgcolor="#CCCCCC" width="25%">
                <asp:Button ID="btnBuscar" runat="server" Text="Buscar" />
            </td>
        </tr>
        <tr>
            <td bgcolor="#CCCCCC" width="25%">
                Nombre de Sala</td>
            <td bgcolor="#CCCCCC" width="25%">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td bgcolor="#CCCCCC" width="25%">
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#CCCCCC" width="25%">
                Capacidad</td>
            <td bgcolor="#CCCCCC" width="25%">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td bgcolor="#CCCCCC" width="25%">
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#CCCCCC" width="25%">
                Costo</td>
            <td bgcolor="#CCCCCC" width="25%">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td bgcolor="#CCCCCC" width="25%">
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#CCCCCC" width="25%">
                Hora de Inicio</td>
            <td bgcolor="#CCCCCC" width="25%">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
            <td bgcolor="#CCCCCC" width="25%">
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#CCCCCC" width="25%">
                Descripcion</td>
            <td bgcolor="#CCCCCC" width="25%">
                <textarea id="TextArea1" name="S1"></textarea></td>
            <td bgcolor="#CCCCCC" width="25%">
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#CCCCCC" width="25%">
                &nbsp;</td>
            <td bgcolor="#CCCCCC" width="25%">
                &nbsp;</td>
            <td bgcolor="#CCCCCC" width="25%">
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#CCCCCC" width="25%">
                <asp:Button ID="btnAgregar" runat="server" Text="Agregar" 
                    CssClass="btn-success" />
            </td>
            <td bgcolor="#CCCCCC" width="25%">
                <asp:Button ID="btnActualizar" runat="server" Text="Actualizar" 
                    CssClass="btn-info" />
            </td>
            <td bgcolor="#CCCCCC" width="25%">
                <asp:Button ID="btnSalir" runat="server" Text="Salir" CssClass="btn-danger" />
            </td>
        </tr>
    </table>
</asp:Content>


