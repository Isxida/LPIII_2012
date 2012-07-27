<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.master" AutoEventWireup="true" CodeFile="Equipos.aspx.cs" Inherits="Pages_Equipos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style8
        {
            text-align: center;
            font-size: x-large;
            height: 42px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <table style="width:100%;" width="25%">
        <tr>
            <td bgcolor="#CCCCCC" class="style8" colspan="3">
                Mantenimiento de Instrumentos</td>
        </tr>
        <tr>
            <td bgcolor="#CCCCCC" width="25%">
                Codigo</td>
            <td bgcolor="#CCCCCC" width="25%">
                <asp:TextBox ID="txtCodigo" runat="server"></asp:TextBox>
            </td>
            <td bgcolor="#CCCCCC" width="25%">
                <asp:Button ID="btnBuscar" runat="server" CssClass="btn-warning" 
                    onclick="btnBuscar_Click" Text="Buscar" />
            </td>
        </tr>
        <tr>
            <td bgcolor="#CCCCCC" width="25%">
                Nombre del Instrumento</td>
            <td bgcolor="#CCCCCC" width="25%">
                <asp:TextBox ID="txtnom" runat="server"></asp:TextBox>
            </td>
            <td bgcolor="#CCCCCC" width="25%">
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#CCCCCC" width="25%">
                Estado</td>
            <td bgcolor="#CCCCCC" width="25%">
                <asp:DropDownList ID="cboestado" runat="server">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td bgcolor="#CCCCCC" width="25%">
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#CCCCCC" width="25%">
                Fecha de Compra</td>
            <td bgcolor="#CCCCCC" width="25%">
                <asp:Calendar ID="datetimer" runat="server" BackColor="White" 
                    BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" 
                    DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" 
                    ForeColor="#003399" Height="200px" 
                    Width="220px">
                    <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                    <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" 
                        Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                    <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                    <WeekendDayStyle BackColor="#CCCCFF" />
                </asp:Calendar>
            </td>
            <td bgcolor="#CCCCCC" width="25%">
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#CCCCCC" width="25%">
                Fecha de Garantia</td>
            <td bgcolor="#CCCCCC" width="25%">
                <asp:Calendar ID="datetimer2" runat="server" BackColor="White" 
                    BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" 
                    DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" 
                    ForeColor="#003399" Height="200px" Width="220px">
                    <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                    <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" 
                        Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                    <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                    <WeekendDayStyle BackColor="#CCCCFF" />
                </asp:Calendar>
            </td>
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
            <td bgcolor="#CCCCCC" colspan="3" style="width: 50%">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SQL" 
                    Height="237px" onselectedindexchanged="GridView1_SelectedIndexChanged" 
                    Width="100%">
                    <Columns>
                        <asp:BoundField DataField="codigo" HeaderText="Codigo" 
                            SortExpression="codigo" />
                        <asp:BoundField DataField="descripcion" HeaderText="Descripcion" 
                            SortExpression="descripcion" />
                        <asp:BoundField DataField="feccompra" HeaderText="Fecha de Compra" 
                            SortExpression="feccompra" />
                        <asp:BoundField DataField="fecgarantia" HeaderText="Fecha de Garantia" 
                            SortExpression="fecgarantia" />
                        <asp:BoundField DataField="id_estado" HeaderText="Estado" 
                            SortExpression="id_estado" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SQL" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:BD_ProyLP3_cn %>" 
                    SelectCommand="SELECT [codigo], [descripcion], [feccompra], [fecgarantia], [id_estado] FROM [Instrumentos]">
                </asp:SqlDataSource>
            </td>
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
            <td bgcolor="#CCCCCC" width="25%" style="text-align: center">
                <asp:Button ID="btnAgregar" runat="server" Text="Agregar" 
                    CssClass="btn-success" onclick="btnAgregar_Click" />
            </td>
            <td bgcolor="#CCCCCC" width="25%" style="text-align: center">
                <asp:Button ID="btnActualizar" runat="server" Text="Actualizar" 
                    CssClass="btn-info" onclick="btnActualizar_Click" />
            </td>
            <td bgcolor="#CCCCCC" width="25%" style="text-align: center">
                <asp:Button ID="btnSalir" runat="server" Text="Salir" CssClass="btn-danger" 
                    onclick="btnSalir_Click" />
            </td>
        </tr>
    </table>
</asp:Content>


