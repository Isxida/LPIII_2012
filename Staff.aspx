<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.master" AutoEventWireup="true" CodeFile="Staff.aspx.cs" Inherits="Pages_Staff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style8
        {
            color: #FFFFFF;
            font-size: medium;
            text-align: center;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <p class="style8">
        Nuestro staff esta constituido por los siguientes trabajadores :
        <br /><br /><asp:GridView 
            ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" 
            AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" 
            BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SQL">
            <Columns>
                <asp:BoundField DataField="codigo" HeaderText="ID" 
                    SortExpression="codigo" />
                <asp:BoundField DataField="dni" HeaderText="Nro Documento" 
                    SortExpression="dni" />
                <asp:BoundField DataField="nom" HeaderText="Nombre" SortExpression="nom" />
                <asp:BoundField DataField="ape" HeaderText="Apellido" SortExpression="ape" />
                <asp:BoundField DataField="edad" HeaderText="Edad" SortExpression="edad" />
                <asp:BoundField DataField="fecnac" HeaderText="Fecha Nacimiento" 
                    SortExpression="fecnac" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
    </p>
    <p class="style8">
        <asp:SqlDataSource ID="SQL" runat="server" 
            ConnectionString="<%$ ConnectionStrings:BD_ProyLP3_cn %>" 
            SelectCommand="SELECT [codigo], [dni], [nom], [ape], [edad], [fecnac] FROM [Usuarios]">
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    </p>
</asp:Content>


