<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.master" AutoEventWireup="true" CodeFile="RegistroCorrecto.aspx.cs" Inherits="RegistroCorrecto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style9
        {
            min-height: 20px;
            padding: 19px;
            margin-bottom: 20px;
            background-color: #f5f5f5;
            border: 1px solid #eee;
            border: 1px solid #eee;
            -webkit-border-radius: 4px;
            -moz-border-radius: 4px;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.05);
            -moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.05);
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.05);
            text-align: center;
            font-size: medium;
            font-style: italic;
        }
        .style10
        {
            font-size: x-large;
            color: #0000FF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div class="style9">
        <span class="style10">Gracias por registrarse en EL AVERNO<br />
        <br />
        BIENVENIDO!</span><br />
        <br />
        Esta página se redireccionará en 3 segundos, <em>
        <br />
        si no, clickee en el siguiente enlace...</em><br />
        <br />
        <asp:HyperLink ID="lnkVolver" runat="server" NavigateUrl="~/Default.aspx">Volver a la página principal</asp:HyperLink>
    </div>

    <script type="text/javascript">
        window.setTimeout(function () {
            window.location.href = 'LoginUsuario.aspx';
        }, 3000);
    </script>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

