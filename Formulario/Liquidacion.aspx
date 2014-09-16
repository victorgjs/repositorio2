<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Liquidacion.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        width: 23%;
        border: 1px solid #000000;
    }
    .auto-style3 {
        width: 150px;
    }
        .auto-style4 {
            width: 700px;
            height: 141px;
            border: 1px solid #000000;
        }
        .auto-style5 {
            width: 345px;
            height: 31px;
        }
        .auto-style6 {
            width: 100%;
            border: 1px solid #000000;
            height: 166px;
            margin-top: 0px;
        }
        .auto-style7 {
            height: 23px;
        }
        .auto-style8 {
            width: 167px;
        }
        .auto-style9 {
            height: 23px;
            width: 167px;
        }
        .auto-style10 {
            width: 347px;
            height: 23px;
        }
        .auto-style12 {
            height: 23px;
            width: 150px;
        }
        .auto-style13 {
            width: 369px;
            height: 31px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td>Liquidación de Sueldo<br />
            <br />
            <br />

            <table class="auto-style2">
            <tr>
                <td class="auto-style3">Nombre Trabajador:</td>
                <td>
                    <asp:Label ID="lbl_nombre" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">RUT Trabajador:</td>
                <td>
                    <asp:Label ID="lbl_rut" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Dirección: </td>
                <td>
                    <asp:Label ID="lbl_direccion" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            </tr>
                <tr>
                <td class="auto-style3">Fecha de ingreso: </td>
                <td>
                    <asp:Label ID="lbl_ingreso" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            </table>
            <br />
            <br />
            <table class="auto-style4">
                <tr>
                    <td class="auto-style5">
                        <table class="auto-style6">
                            <tr>
                                <td>Sueldo Base</td>
                                <td class="auto-style8">:<asp:Label ID="lbl_sueldoBase" runat="server" Text="Label"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style7">Bono</td>
                                <td class="auto-style9">:<asp:Label ID="lbl_bono" runat="server" Text="Label"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style7">Horas Trabajadas</td>
                                <td class="auto-style9">:<asp:Label ID="lbl_horasTrabajadas" runat="server" Text="Label"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>Horas Extras</td>
                                <td class="auto-style8">:<asp:Label ID="lbl_horasExtras" runat="server" Text="Label"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td class="auto-style8">&nbsp;</td>
                            </tr>
                            <tr>
                                <td>Total Imponible</td>
                                <td class="auto-style8">:<asp:Label ID="lbl_totalImponible" runat="server" Text="Label"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td class="auto-style13">
                        <table class="auto-style6">
                            <tr>
                                <td>Descuentos Legales</td>
                                <td class="input_medium">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style7">AFP</td>
                                <td class="auto-style12">:<asp:Label ID="lbl_afp" runat="server" Text="Label"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>Sistema&nbsp; de Salud</td>
                                <td class="input_medium">:<asp:Label ID="lbl_salud" runat="server" Text="Label"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td class="input_medium">&nbsp;</td>
                            </tr>
                            
                            <tr>
                                <td>Descuentos personales</td>
                                <td class="input_medium"><asp:Label ID="lbl_Descuento" runat="server" Text="Label"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>Anticipos</td>
                                <td class="input_medium">:<asp:Label ID="lbl_anticipo" runat="server" Text="Label"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>Total</td>
                                <td class="input_medium">:<asp:Label ID="lbl_total" runat="server" Text="Label"></asp:Label>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style10">____________________</td>
                    <td class="auto-style7">_____________________</td>
                </tr>
                <tr>
                    <td>TIMBRE<br />
                        <br />
                        <asp:Label ID="lbl_fecha" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>FIRMA TRABAJADOR</td>
                </tr>
            </table>
            
            
        </td>
    </tr>
</table>
</asp:Content>

