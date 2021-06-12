<%@ Page Title="" Language="C#" MasterPageFile="~/View/Inicio.master" AutoEventWireup="true" CodeFile="~/Controller/Administrador.aspx.cs" Inherits="View_Administrador" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:Menu ID="M_Principal" runat="server" BackColor="#00773F" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="Large" ForeColor="White" StaticSubMenuIndent="10px">
                        <DynamicHoverStyle BackColor="#990000" ForeColor="White" />
                        <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                        <DynamicMenuStyle BackColor="#FFFBD6" />
                        <DynamicSelectedStyle BackColor="#FFCC66" />
                        <Items>
                            <asp:MenuItem Text="Consulta" Value="Consulta" NavigateUrl="~/View/ConsultaRegistro.aspx"></asp:MenuItem>
                            <asp:MenuItem Text="Insertar" Value="Insertar" NavigateUrl="~/View/InsertarEmpleado.aspx"></asp:MenuItem>
                        </Items>
                        <StaticHoverStyle BackColor="#990000" ForeColor="White" />
                        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                        <StaticSelectedStyle BackColor="#FFCC66" />
                    </asp:Menu>

   
    
</asp:Content>

