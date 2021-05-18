<%@ Page Title="" Language="C#" MasterPageFile="~/View/Inicio.master" AutoEventWireup="true" CodeFile="~/Controller/RecuperarContrasena.aspx.cs" Inherits="View_Recuperarcontra" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>Digite el correo:</td>
            <td>
                <asp:TextBox ID="TB_Correo" runat="server" TextMode="Email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_Correo" runat="server" ControlToValidate="TB_Correo" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:Button ID="B_Recuperar" runat="server" OnClick="B_Recuperar_Click" Text="Recuperar Contraseña" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

