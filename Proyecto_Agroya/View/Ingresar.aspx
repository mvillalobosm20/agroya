<%@ Page Title="" Language="C#" MasterPageFile="~/View/Inicio.master" AutoEventWireup="true" CodeFile="~/Controller/Ingresar.aspx.cs" Inherits="View_Ingresar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="form-horizontal">
            <hr />
            <div class="form-group">
                <h2>Login</h2>
                <asp:Label ID="Label2" CssClass="col-md-2 control-label" runat="server" Text="UserName"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txt_username" CssClass="form-control" runat="server"></asp:TextBox>
                </div>

            </div>
            <div class="form-group">
                <asp:Label ID="Label3" CssClass="col-md-2 control-label" runat="server" Text="Contraseña"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txt_clave" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                </div>

            </div>
            <div class="form-group">
                <div class="col-md-2"></div>
                <div class="col-md-6">
                    <asp:Button ID="Button1" CssClass="btn btn-success" runat="server" Text="Ingresar" OnClick="Button1_Click" />
                </div>
            </div>
               <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6"> 
                        <asp:LinkButton ID="olvidar" Text="¿Olvido Su Contraseña?" runat="server" PostBackUrl="~/View/RecuperarContrasena.aspx" CausesValidation="false"/>
                    </div>
                </div>
               <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6"> 
                        <asp:Label ID="lb_error" runat="server" CssClass="text-danger" Text=""></asp:Label>
                    </div>
                </div>
        </div>
    </div>
</asp:Content>

