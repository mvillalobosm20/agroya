<%@ Page Title="" Language="C#" MasterPageFile="~/View/Inicio.master" AutoEventWireup="true" CodeFile="~/Controller/Ingresar.aspx.cs" Inherits="View_Ingresar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style31 {
            width: 73%;
            height: 502px;
            max-width: 1320px;
            margin-left: auto;
            margin-right: auto;
            padding-left: var(--bs-gutter-x, .75rem);
            padding-right: var(--bs-gutter-x, .75rem);
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
     </fieldset>
    <div class="auto-style31">
        <div class="form-horizontal">
                    
                <h2>Inicio de sesión</h2>
                
                <asp:Label ID="Label2" CssClass="col-md-2 control-label" runat="server" Text="Nombre Usuario:"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txt_username" CssClass="form-control" runat="server"></asp:TextBox>
                </div>

            </div>
            <div class="form-group">
                <asp:Label ID="Label3" CssClass="col-md-2 control-label" runat="server" Text="Contraseña:"></asp:Label>
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
</asp:Content>

