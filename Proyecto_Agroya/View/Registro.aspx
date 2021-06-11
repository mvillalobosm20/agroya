<%@ Page Title="" Language="C#" MasterPageFile="~/View/Inicio.master" AutoEventWireup="true" CodeFile="~/Controller/Registro.aspx.cs" Inherits="View_Registro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style31 {
            text-align: center;
            color: #186B41;
            height: 26px;
        }
        .auto-style32 {
            width: 163px;
        }
        .auto-style33 {
            width: 164px;
        }
        .auto-style34 {
            text-align: center;
        }
        .auto-style35 {
            height: 37px;
        }
        .auto-style36 {
            width: 163px;
            height: 37px;
        }
        .auto-style37 {
            width: 180px;
            height: 37px;
        }
        .auto-style38 {
            width: 180px;
        }
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style31" colspan="4">REGISTRO USUARIO</td>
        </tr>
        <tr>
            <td class="auto-style7" colspan="4">&nbsp;</td>
        </tr>
        <tr>
            <td class="Columna4">
                <asp:Label ID="L_Nombre" runat="server" Font-Names="Arial" Font-Size="Medium" Text="Digite el Nombre:"></asp:Label>
            </td>
            <td class="auto-style32">
                <asp:TextBox ID="TB_Nombre" runat="server" Width="90%"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV_TB_Nombre" runat="server" ControlToValidate="TB_Nombre" ErrorMessage="*" Font-Bold="True" Font-Size="X-Large" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style38">
                <asp:Label ID="L_Apellido" runat="server" Font-Names="Arial" Font-Size="Medium" Text="Digite el Apellido:"></asp:Label>
            </td>
            <td class="Columna4">
                <asp:TextBox ID="TB_Apellido" runat="server" Width="90%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Label ID="L_NombreUsuario" runat="server" Font-Names="Arial" Font-Size="Medium" Text="Digite nombre de usuario:"></asp:Label>
            </td>
            <td class="auto-style32">
                <asp:TextBox ID="TB_NombreUsuario" runat="server" Width="140px"></asp:TextBox>
            </td>
            <td class="auto-style38">
                <asp:Label ID="Label1" runat="server" Font-Names="Arial" Font-Size="Medium" Text="Digite una contraseña:"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:TextBox ID="TB_ContrasenaRegistro" runat="server" Width="167px" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style35">
                
                <asp:Label ID="L_NumeroDocumento" runat="server" Font-Names="Arial" Font-Size="Medium" Text="Digite su número de documento:"></asp:Label>
                
            </td>
            <td class="auto-style36">
               
                <asp:TextBox ID="TB_DocumentoRegistrado" runat="server" TextMode="Number"></asp:TextBox>
               
            </td>
            <td class="auto-style37">
                &nbsp;</td>
            <td class="auto-style35">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Label ID="L_Correo" runat="server" Font-Names="Arial" Font-Size="Medium" Text="Digite su correo:"></asp:Label>
            </td>


            <td class="auto-style32"> 
                <asp:TextBox ID="TB_CorreoRegistro" runat="server" TextMode="Email"></asp:TextBox>
            </td>

            <td class="auto-style38">
                
                <asp:Label ID="Label2" runat="server" Font-Names="Arial" Font-Size="Medium" Text="Digite su número telefonico:"></asp:Label>
                
            </td>

            <td class="auto-style9">
                
                <asp:TextBox ID="TB_NumeroTelefonico" runat="server" TextMode="Number"></asp:TextBox>
            </td>
        </tr>

        <td class="auto-style33">
            <asp:Label ID="L_DireccionRegistro" runat="server" Font-Names="Arial" Font-Size="Medium" Text="Digite su dirección:"></asp:Label>
        </td>

        <td class="auto-style33">
            <asp:TextBox ID="TB_DireccionRegistro" runat="server" Width="137px"></asp:TextBox>
        </td>
        <td class="auto-style38">
                
                
                
            <asp:Label ID="Label4" runat="server" Font-Names="Arial" Font-Size="Medium" Text="Digite su ciudad de residencia:"></asp:Label>
                
                
                
            </td>

        <td class="auto-style32">
                
                <asp:TextBox ID="TB_CiudadResidencia" runat="server"></asp:TextBox>
        </td>

        <tr>
            <td class="auto-style32">
                <asp:Label ID="Label3" runat="server" Font-Names="Arial" Font-Size="Medium" Text="Inserte una foto de perfil:"></asp:Label>
            </td>
            <td class="auto-style33">
                <asp:FileUpload ID="FU_Fotoperfil" runat="server" />
            </td>
            <td class="auto-style38"><asp:Label ID="L_Cargo" runat="server" Font-Names="Arial" Font-Size="Medium" Text="Seleccione el Cargo:"></asp:Label></td>
            <td class="auto-style33">
                
                <asp:DropDownList ID="DDL_Roles" runat="server" DataSourceID="ODS_Roles" DataTextField="Tipo_usuario" DataValueField="Id_rol" Width="90%">
                    
                </asp:DropDownList>
                <asp:RangeValidator ID="RV_DDL_Cargos" runat="server" ControlToValidate="DDL_Roles" ErrorMessage="*" Font-Bold="True" Font-Size="X-Large" ForeColor="Red" MaximumValue="10000" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                
            </td>

        </tr>


        <tr>
            <td class="auto-style34" colspan="4">
                <asp:Button ID="B_Guardar" runat="server" Font-Bold="True" Text="Registrar" OnClick="B_Guardar_Click" />
            <asp:ObjectDataSource ID="ODS_Roles" runat="server" SelectMethod="obtenerroles" TypeName="DAOUsuario"></asp:ObjectDataSource>
            </td>
        </tr>


        

    </table>
</asp:Content>

