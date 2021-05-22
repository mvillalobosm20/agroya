<%@ Page Title="" Language="C#" MasterPageFile="~/View/Inicio.master" AutoEventWireup="true" CodeFile="Ingresar.aspx.cs" Inherits="View_Ingresar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="form-horizontal">
            <hr />
            <div class="form-group">
                <h2>Login</h2>
                <asp:label id="Label2" cssclass="col-md-2 control-label" runat="server" text="UserName"></asp:label>
                <div class="col-md-3">
                    <asp:textbox id="txt_username" cssclass="form-control" runat="server"></asp:textbox>
                </div>

            </div>
            <div class="form-group">
                <asp:label id="Label3" cssclass="col-md-2 control-label" runat="server" text="Contraseña"></asp:label>
                <div class="col-md-3">
                    <asp:textbox id="txt_clave" cssclass="form-control" runat="server" textmode="Password"></asp:textbox>
                </div>

            </div>
            <div class="form-group">
                <div class="col-md-2"></div>
                <div class="col-md-6">
                    <asp:button id="Button1" cssclass="btn btn-success" runat="server" text="Ingresar" onclick="Button1_Click" />
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-2"></div>
                <div class="col-md-6">
                    <asp:linkbutton id="olvidar" text="¿Olvido Su Contraseña?" runat="server" postbackurl="~/View/RecuperarContrasena.aspx" causesvalidation="false" />
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-2"></div>
                <div class="col-md-6">
                    <asp:label id="lb_error" runat="server" cssclass="text-danger" text=""></asp:label>
                </div>
            </div>
        </div>
        <div class="form-horizontal">

            <hr />
            <div class="form-group">
                <h2>Login</h2>
                <asp:label id="Label1" cssclass="col-md-2 control-label" runat="server" text="UserName"></asp:label>
                <div class="col-md-3">
                    <asp:textbox id="Textbox1" cssclass="form-control" runat="server"></asp:textbox>
                </div>

            </div>

        </div>
    </div>
</asp:Content>

