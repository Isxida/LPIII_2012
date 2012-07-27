<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style9
        {
            width: 600px;
            height: 368px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <table style="width:100%;">
        <tr>
            <td>
           
                <img alt="" src="img/mainimg01.jpg" width="100%" /></td>
        </tr>
    </table>
   
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="width:100%;" bgcolor="#333333">
        <tr>
            <td colspan="3" 
                style="background-color: #333333; color: #FFFFFF; text-align: center; font-weight: 700; font-size: xx-large;" 
                height="40" width="40%">
                Bienvenidos al Averno!</td>
        </tr>
        <tr>
            <td align="justify" style="background-color: #333333; color: #FFFFFF;" 
                width="40%">
                
                    <span class="style3">El Averno, apareció como una alternativa para los artistas, bandas y empresas 
                    que desean realizar grabaciones de calidad sin tener que pagar un excesivo 
                    precio por ello.</span><br class="style3" />
                    <br class="style3" />
                    <span class="style3">Entendemos al sonido y la música como lo que son... arte y trabajo.
                    </span>
                    <br class="style3" />
                    <br class="style3" />
                    <span class="style3">Por este                 motivo aseguramos siempre un trabajo personalizado, de acuerdo a sus necesidades 
                    y exigencias en cada uno de nuestros servicios.
                    
                   
                    </span>
                    <br class="style3" />
                    <br class="style3" />
                    <span class="style3">Nuestra tarjeta de presentación son nuestros trabajos.</span><br />
                    <br />
                
                <asp:HyperLink ID="hlRegistro" runat="server" NavigateUrl="#" Font-Size="Large">Click aquí para REGISTRARTE</asp:HyperLink>
               
            </td>
            <td align="center" colspan="2" style="background-color: #333333" width="30%">
                <img align="middle" alt="" class="style9" src="img/studio001.jpg" /></td>
        </tr>
        <tr>
            <td class="label-inverse">
                &nbsp;</td>
            <td class="label-inverse">
                &nbsp;</td>
            <td class="label-inverse">
                &nbsp;</td>
        </tr>
    </table>

</asp:Content>

