<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.master" AutoEventWireup="true" CodeFile="Bienvenida.aspx.cs" Inherits="Bienvenida" %>

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
        }
        .style10
        {
            font-size: x-large;
            color: #FF0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="style9">
        <strong><span class="style10">BIENVENIDO USUARIO!</span></strong><br />
        <br />
        Ahora puede navegar a través del portal web, realizar reservas de salas, studios 
        y muchas cosas más.<br />
        <br />
        <em>La página se redireccionará en 5 segundos, si no, clickee en el sgte. enlace</em><br />
&nbsp;<asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Default.aspx">Ir a la página principal</asp:HyperLink>
    </div>

    <script type="text/javascript">
        window.setTimeout(function () {
            window.location.href = 'Default.aspx';
        }, 10000);
    </script>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

