<%@ Page Title="" Language="C#" MasterPageFile="~/View/Inicio.master" AutoEventWireup="true" CodeFile="~/Controller/Administrador.aspx.cs" Inherits="View_Administrador" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <colgroup>
    <col span="2" style="background-color:"#00773F />
    <col style="background-color:white">
  </colgroup>
  <tr>
    <th>BIENVENIDO ADMINISTRADOR</th>
</tr>

   
    
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>

     <asp:ObjectDataSource ID="ODS_Usuario" runat="server" SelectMethod="obtenerEmpleados" TypeName="DAOEmpleado" DataObjectTypeName="EEmpleado" DeleteMethod="eliminar" UpdateMethod="editarEmpleado"></asp:ObjectDataSource>


   
    
</asp:Content>

