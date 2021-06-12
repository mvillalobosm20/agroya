<%@ Page Title="" Language="C#" MasterPageFile="~/View/Inicio.master" AutoEventWireup="true" CodeFile="~/Controller/ConsultaRegistro.aspx.cs" Inherits="View_ConsultaRegistro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style7 {
        font-size: xx-large;
    }
        .auto-style8 {
            height: 356px;
        }
        .imagen{
            width:100px;
            height:100px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style7">
            <h1 class="auto-style7"><em>Usuarios</em></h1>
        </td>
    </tr>
    <tr>
         <td class="auto-style8">
            <div class="auto-style6">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="ODS_Usuario" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" Width="80%" Font-Names="Arial">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Id_user" HeaderText="Id_user" SortExpression="Id_user" />
                    <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                    <asp:BoundField DataField="Correo" HeaderText="Correo" SortExpression="Correo" />
                    <asp:BoundField DataField="Fecha_registro" HeaderText="Fecha_registro" SortExpression="Fecha_registro" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                    <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                    <asp:BoundField DataField="Numero_documento" HeaderText="Numero_documento" SortExpression="Numero_documento" />
                    <asp:BoundField DataField="Ciudad_residencia" HeaderText="Ciudad_residencia" SortExpression="Ciudad_residencia" />
                    <asp:BoundField DataField="Direccion" HeaderText="Direccion" SortExpression="Direccion" />
                    <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                    <asp:BoundField DataField="Tipo_usuario" HeaderText="Tipo_usuario" SortExpression="Tipo_usuario" />
                    <asp:BoundField DataField="Token_verificacion" HeaderText="Token_verificacion" SortExpression="Token_verificacion" />
                    <asp:BoundField DataField="Token_reset" HeaderText="Token_reset" SortExpression="Token_reset" />
                    <asp:BoundField DataField="Estado_user" HeaderText="Estado_user" SortExpression="Estado_user" />
                    <asp:TemplateField HeaderText="Foto_user" SortExpression="Foto_user">
                        <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Foto_User") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <img class="imagen" src="../Imagenes/UsuariosRegistrados/<%#DataBinder.Eval(Container.DataItem,"Foto_User")%>" />
                            </ItemTemplate>
                        </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
                 </div>
        
          
            <asp:ObjectDataSource ID="ODS_Usuario" runat="server" SelectMethod="obtenerRegistrados" TypeName="DAOAdministrador" DataObjectTypeName="EUsuario" DeleteMethod="eliminar" UpdateMethod="editarUsuario"></asp:ObjectDataSource>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>



