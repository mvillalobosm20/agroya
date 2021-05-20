<%@ Page Title="" Language="C#" MasterPageFile="~/View/Inicio.master" AutoEventWireup="true" CodeFile="~/Controller/Registro.aspx.cs" Inherits="View_Registro" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style31 {
        text-align: center;
    }
    .auto-style32 {
            width: 285px;
        }
    .auto-style33 {
        width: 150px;
    }
    .auto-style34 {
        width: 227px;
    }
    .auto-style35 {
        width: 257px;
    }
    .auto-style36 {
        width: 285px;
        height: 23px;
    }
    .auto-style37 {
        width: 227px;
        height: 23px;
    }
    .auto-style38 {
        width: 257px;
        height: 23px;
    }
    .auto-style39 {
        width: 150px;
        height: 23px;
    }
        .auto-style41 {
            width: 227px;
            height: 26px;
        }
        .auto-style42 {
            height: 26px;
        }
        .auto-style43 {
            width: 257px;
            height: 26px;
        }
        .auto-style44 {
            width: 150px;
            height: 26px;
        }
        .auto-style45 {
            height: 23px;
            width: 7px;
        }
        .auto-style46 {
            width: 7px;
        }
        .auto-style47 {
            height: 26px;
            width: 7px;
        }
        .auto-style48 {
            width: 285px;
            text-align: center;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table class="auto-style1">
        <tr>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style31" colspan="4"><strong>REGISTRO DE USUARIOS</strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style36"></td>
            <td class="auto-style37"></td>
            <td class="auto-style45"></td>
            <td class="auto-style38"></td>
            <td class="auto-style39"></td>
            <td class="auto-style30"></td>
        </tr>
        <tr>
            <td class="auto-style48" rowspan="6">
                <asp:Image ID="I_R_Registro" runat="server" ImageUrl="~/Imagenes/Registro250x250.png" />
            </td>
            <td class="auto-style34">Nombre de Usuario (NickName)</td>
            <td class="auto-style46">
                <asp:TextBox ID="TB_R_Nickname" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style35">Nombre</td>
            <td class="auto-style33">
                <asp:TextBox ID="TB_R_Nombre" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style34">Contrasena</td>
            <td class="auto-style46">
                <asp:TextBox ID="TB_R_Contra" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style35">Apellido</td>
            <td class="auto-style33">
                <asp:TextBox ID="TB_R_Apellido" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style34">Correo elctrónico</td>
            <td class="auto-style46">
                <asp:TextBox ID="TB_R_Correo" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style35">Tipo de documento</td>
            <td class="auto-style33">
                <asp:TextBox ID="TB_R_Tipodoc" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style41">Fecha de registro:</td>
            <td class="auto-style47">
                <asp:TextBox ID="TB_R_Fecha" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style43">Número de Documento</td>
            <td class="auto-style44">
                <asp:TextBox ID="TB_R_Numerodoc" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style42"></td>
        </tr>
        <tr>
            <td class="auto-style34">Forografía:</td>
            <td class="auto-style46">
                <asp:TextBox ID="TB_R_Foto" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style35">Dirección</td>
            <td class="auto-style33">
                <asp:TextBox ID="TB_R_Direccion" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style41">Tipo de Usuario</td>
            <td class="auto-style47">
                <asp:TextBox ID="TB_R_Tipousuario" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style43">Telefono</td>
            <td class="auto-style44">
                <asp:TextBox ID="TB_R_Telefono" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style42"></td>
        </tr>
        <tr>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style34">Ciudad de Residencia</td>
            <td class="auto-style46">
                <asp:TextBox ID="TB_R_Ciudad" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style35">&nbsp;</td>
            <td class="auto-style33">
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style34">&nbsp;</td>
            <td class="auto-style46">&nbsp;</td>
            <td class="auto-style35">&nbsp;</td>
            <td class="auto-style33">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    
</asp:Content>

