<%@ Page Title="" Language="C#" MasterPageFile="~/View/Inicio.master" AutoEventWireup="true" CodeFile="~/Controller/Recuperar.aspx.cs" Inherits="View_Recuperar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>Digite su nueva contraseña:</td>
            <td>
                <asp:TextBox ID="TB_Contrasena" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_TB_Contrasena" runat="server" ControlToValidate="TB_Contrasena" ErrorMessage="*" Font-Size="X-Large" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Confirme su contraseña:</td>
            <td>
                <asp:TextBox ID="TB_ConfPassword" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_TB_Confirmar" runat="server" ControlToValidate="TB_ConfPassword" ErrorMessage="*" Font-Size="X-Large" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CV_Contrasena" runat="server" ControlToCompare="TB_Contrasena" ControlToValidate="TB_ConfPassword" ErrorMessage="Las contraseñas no coinciden " SetFocusOnError="True"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="B_Guardar" runat="server" OnClick="B_Guardar_Click1" Text="Guardar" />
            </td>
        </tr>
    </table>
</asp:Content>

