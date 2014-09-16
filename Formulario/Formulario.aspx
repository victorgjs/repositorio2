<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Formulario.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


        .auto-style1 {
            width: 973px;
        }
        .auto-style6 {
            width: 215px;
            height: 30px;
        }
        .auto-style7 {
            width: 588px;
            height: 30px;
        }
        .auto-style4 {
            height: 23px;
            width: 215px;
        }
        .auto-style2 {
            height: 23px;
            width: 588px;
        }
        .auto-style3 {
            width: 215px;
        }
        .auto-style5 {
            width: 588px;
        }
        .auto-style8 {
            width: 215px;
            height: 26px;
        }
        .auto-style9 {
            width: 588px;
            height: 26px;
        }
        .auto-style10 {
            width: 215px;
            height: 73px;
        }
        .auto-style11 {
            width: 588px;
            height: 73px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <div>
        Crear nueva liquidación<br />
    <br />
    <table class="auto-style1">
        <tr>
            <td class="auto-style6">Nombre</td>
            <td class="auto-style7">
                <asp:TextBox ID="txt_nombre" runat="server" MaxLength="16" Width="168px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_nombre" ErrorMessage="Debe Ingresar Nombre"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_nombre" ErrorMessage="  Sólo se admiten letras" ValidationExpression="^[a-zA-Z''-'\s]{1,40}$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Apellidos</td>
            <td class="auto-style2">
                <asp:TextBox ID="txt_apellidos" runat="server" MaxLength="30" Width="168px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_apellidos" ErrorMessage="Debe Ingresar Apellidos"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txt_apellidos" ErrorMessage="  Sólo se admiten letras" ValidationExpression="^[a-zA-Z''-'\s]{1,40}$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">RUT (ej: 18.123.432-8)</td>
            <td class="auto-style7">
                <asp:TextBox ID="txt_rut" runat="server" MaxLength="12" Width="168px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_rut" ErrorMessage="Debe Ingresar RUT"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txt_rut" ErrorMessage="Ingrese RUT Válido" ValidationExpression="^\d{1,2}\.\d{3}\.\d{3}[-][0-9kK]{1}$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Dirección</td>
            <td class="auto-style5">
                <asp:TextBox ID="txt_direccion" runat="server" MaxLength="35" Width="168px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_direccion" ErrorMessage="Debe Ingresar Dirección"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Año</td>
            <td class="auto-style5">
                <asp:TextBox ID="txt_año" runat="server" MaxLength="4" Width="64px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_año" ErrorMessage="Debe Ingresar Año"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txt_año" Display="Dynamic" ErrorMessage="  Sólo se admiten números" ValidationExpression="[0-9]+"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Mes</td>
            <td class="auto-style5">
                <asp:DropDownList ID="ddl_mes" runat="server" OnSelectedIndexChanged="ddl_mes_SelectedIndexChanged">
                    <asp:ListItem>Enero</asp:ListItem>
                    <asp:ListItem>Febrero</asp:ListItem>
                    <asp:ListItem>Marzo</asp:ListItem>
                    <asp:ListItem>Abril</asp:ListItem>
                    <asp:ListItem>Mayo</asp:ListItem>
                    <asp:ListItem>Junio</asp:ListItem>
                    <asp:ListItem>Julio</asp:ListItem>
                    <asp:ListItem>Agosto</asp:ListItem>
                    <asp:ListItem>Septiembre</asp:ListItem>
                    <asp:ListItem>Octubre</asp:ListItem>
                    <asp:ListItem>Noviembre</asp:ListItem>
                    <asp:ListItem>Diciembre</asp:ListItem>
                </asp:DropDownList>
                    Seleccione Mes.</td>
        </tr>
        <tr>
            <td class="auto-style8">Previsión (AFP)</td>
            <td class="auto-style9">
                <asp:DropDownList ID="ddl_afp" runat="server">
                    <asp:ListItem>HABITAT</asp:ListItem>
                    <asp:ListItem>CUPRUM</asp:ListItem>
                    <asp:ListItem>MODELO</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">Sistema de salud</td>
            <td class="auto-style11">
                <asp:DropDownList ID="ddl_salud" runat="server" OnSelectedIndexChanged="ddl_salud_SelectedIndexChanged">
                    <asp:ListItem>FONASA</asp:ListItem>
                    <asp:ListItem Value="MASVIDA">MASVIDA</asp:ListItem>
                    <asp:ListItem Value="CONSALUD">CONSALUD</asp:ListItem>
                    <asp:ListItem Value="COLMENA">COLMENA</asp:ListItem>
                    <asp:ListItem Value="BANMEDICA">BANMEDICA</asp:ListItem>
                </asp:DropDownList>
                <asp:TextBox ID="txt_Montoisapre" runat="server" MaxLength="7" Width="89px">0</asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator11" runat="server" ControlToValidate="txt_Montoisapre" ErrorMessage="Sólo se admiten números" ValidationExpression="[0-9]+"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Cantidad de horas trabajadas</td>
            <td class="auto-style7">
                <asp:TextBox ID="txt_horasTrabajadas" runat="server" MaxLength="3" Width="64px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txt_horasTrabajadas" ErrorMessage="Debe Ingresar Horas"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txt_horasTrabajadas" ErrorMessage="  Sólo se admiten números" ValidationExpression="[0-9]+"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Valor hora</td>
            <td class="auto-style7">
                <asp:TextBox ID="txt_valorHora" runat="server" MaxLength="5" Width="64px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txt_valorHora" ErrorMessage="Debe Ingresar Valor Hora"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="txt_valorHora" ErrorMessage="  Sólo se admiten números" ValidationExpression="[0-9]+"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Anticipos otorgados</td>
            <td class="auto-style5">
                <asp:TextBox ID="txt_anticipos" runat="server" MaxLength="7" Width="64px">0</asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="txt_anticipos" ErrorMessage="Sólo se admiten números" ValidationExpression="[0-9]+"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Bonos</td>
            <td class="auto-style2">
                <asp:TextBox ID="txt_bonos" runat="server" MaxLength="7" Width="64px">0</asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ControlToValidate="txt_bonos" ErrorMessage="Sólo se admiten números" ValidationExpression="[0-9]+"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Horas trabajadas Fin de semana</td>
            <td class="auto-style5">
                <asp:TextBox ID="txt_horasFinSem" runat="server" MaxLength="3" Width="64px">0</asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server" ControlToValidate="txt_horasFinSem" ErrorMessage="Sólo se admiten números" ValidationExpression="[0-9]+"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style5">
                <asp:Button ID="cmd_enviar" runat="server" PostBackUrl="~/Liquidacion.aspx" Text="Enviar" />
            </td>
        </tr>
    </table>
</div>
</asp:Content>


