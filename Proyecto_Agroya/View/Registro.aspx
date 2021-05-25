<%@ Page Title="" Language="C#" MasterPageFile="~/View/Inicio.master" AutoEventWireup="true" CodeFile="~/Controller/Registro.aspx.cs" Inherits="View_Registro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style31 {
            width: 95%;
            height: 150px;
            max-width: 1320px;
            margin-left: auto;
            margin-right: auto;
            padding-left: var(--bs-gutter-x, .75rem);
            padding-right: var(--bs-gutter-x, .75rem);
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<style>
    body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6,
    pre, form, fieldset, input, textarea, p, blockquote, th, td {
        padding: 0;
        margin: 0;
    }

    fieldset, img {
        border: 0
    }

    ol, ul, li {
        list-style: none
    }

    :focus {
        outline: none
    }

    body,
    input,
    textarea,
    select {
        font-family: 'Open Sans', sans-serif;
        font-size: 16px;
        color: #4c4c4c;
    }

    p {
        font-size: 12px;
        width: 150px;
        display: inline-block;
        margin-left: 18px;
    }

    h1 {
        font-size: 32px;
        font-weight: 300;
        color: #4c4c4c;
        text-align: center;
        padding-top: 10px;
        margin-bottom: 10px;
    }

    html {
        background-color: #ffffff;
    }

    .testbox {
        margin: 20px auto;
        padding-bottom: 30px;
        width: 60%;
        height: auto;
        -webkit-border-radius: 8px/7px;
        -moz-border-radius: 8px/7px;
        border-radius: 8px/7px;
        background-color: #ebebeb;
        -webkit-box-shadow: 1px 2px 5px rgba(0,0,0,.31);
        -moz-box-shadow: 1px 2px 5px rgba(0,0,0,.31);
        box-shadow: 1px 2px 5px rgba(0,0,0,.31);
        border: solid 1px #cbc9c9;
    }

    input[type=radio] {
        visibility: hidden;
    }

    form {
        margin: 0 30px;
    }

    label.radio {
        cursor: pointer;
        text-indent: 35px;
        overflow: visible;
        display: inline-block;
        position: relative;
        margin-bottom: 15px;
    }

        label.radio:before {
            background: #00773F;
            content: '';
            position: absolute;
            top: 2px;
            left: 0;
            width: 20px;
            height: 20px;
            border-radius: 100%;
        }

        label.radio:after {
            opacity: 0;
            content: '';
            position: absolute;
            width: 0.5em;
            height: 0.25em;
            background: transparent;
            top: 7.5px;
            left: 4.5px;
            border: 3px solid #ffffff;
            border-top: none;
            border-right: none;
            -webkit-transform: rotate(-45deg);
            -moz-transform: rotate(-45deg);
            -o-transform: rotate(-45deg);
            -ms-transform: rotate(-45deg);
            transform: rotate(-45deg);
        }

    input[type=radio]:checked + label:after {
        opacity: 1;
    }

    hr {
        color: #a9a9a9;
        opacity: 0.3;
    }

    input[type=text], input[type=password] {
        width: auto;
        height: 39px;
        -webkit-border-radius: 0px 4px 4px 0px/5px 5px 4px 4px;
        -moz-border-radius: 0px 4px 4px 0px/0px 0px 4px 4px;
        border-radius: 0px 4px 4px 0px/5px 5px 4px 4px;
        background-color: #fff;
        -webkit-box-shadow: 1px 2px 5px rgba(0,0,0,.09);
        -moz-box-shadow: 1px 2px 5px rgba(0,0,0,.09);
        box-shadow: 1px 2px 5px rgba(0,0,0,.09);
        border: solid 1px #cbc9c9;
        margin-left: -5px;
        margin-top: 13px;
        padding-left: 10px;
    }

    input[type=password] {
        margin-bottom: 25px;
    }

    #icon {
        display: inline-block;
        width: 30px;
        background-color: #00773F;
        padding: 1px 0px 1px 4px;
        margin-left: 15px;
        -webkit-border-radius: 4px 0px 0px 4px;
        -moz-border-radius: 4px 0px 0px 4px;
        border-radius: 4px 0px 0px 4px;
        color: white;
        -webkit-box-shadow: 1px 2px 5px rgba(0,0,0,.09);
        -moz-box-shadow: 1px 2px 5px rgba(0,0,0,.09);
        box-shadow: 1px 2px 5px rgba(0,0,0,.09);
        border: solid 0px #cbc9c9;
    }

    .gender {
        margin-left: 30px;
        margin-bottom: 30px;
    }

    .accounttype {
        margin-left: 8px;
        margin-top: 20px;
    }

    a.button {
        font-size: 14px;
        font-weight: 600;
        color: white;
        padding: 6px 25px 0px 20px;
        margin: 10px 8px 20px 0px;
        display: inline-block;
        float: right;
        text-decoration: none;
        width: 150px;
        height: 27px;
        -webkit-border-radius: 5px;
        -moz-border-radius: 5px;
        border-radius: 5px;
        background-color: #00773F;
        -webkit-box-shadow: 0 3px rgba(58,87,175,.75);
        -moz-box-shadow: 0 3px rgba(58,87,175,.75);
        box-shadow: 0 3px rgba(58,87,175,.75);
        transition: all 0.1s linear 0s;
        top: 0px;
        position: relative;
    }

        a.button:hover {
            top: 3px;
            background-color: #00773F;
            -webkit-box-shadow: none;
            -moz-box-shadow: none;
            box-shadow: none;
        }
</style>



    <div class="testbox">
        <h1>Registro</h1>
        <div class="row">
            <form action="/">
                <hr>
                <div class="accounttype">
                    <input type="radio" value="None" id="radioOne" name="account" checked />
                    <label for="radioOne" class="radio" chec>Agricultor</label>
                    <input type="radio" value="None" id="radioTwo" name="account" />
                    <label for="radioTwo" class="radio">Cliente</label>
                </div>
                <hr>

                <legend>
                    <label id="icon" for="name"><i class="icon-user "></i></label>
                    <input type="text" name="name" id="TB_NombresRegistro" placeholder="Nombres" required />
                    <label id="icon" for="name"><i class="icon-user"></i></label>
                    <input type="text" name="name" id="TB_Apellidos" placeholder="Apellidos" required />                    
                    <label id="icon" for="name"><i class="icon-folder-open"></i></label>
                    <input type="text" name="name" id="TB_TipodocumentoRegistro" placeholder="Tipo de Documento" required />
                    <label id="icon" for="name"><i class="icon-folder-open"></i></label>
                    <input type="password" name="name" id="TB_NumerodocumentoRegistro" placeholder="Número de Documento" required />
                    <label id="icon" for="name"><i class="icon-home"></i></label>
                    <input type="text" name="name" id="TB_CiudadRegistro" placeholder="Ciudad" required />
                    <label id="icon" for="name"><i class="icon-home"></i></label>
                    <input type="text" name="name" id="TB_DireccionRegistro" placeholder="Dirección" required />
                    <label id="icon" for="name"><i class="icon-folder-open"></i></label>
                    <input type="text" name="name" id="TB_TelefonoRegistro" placeholder="Teléfono" required />
                    <label id="icon" for="name"><i class="icon-folder-open"></i></label>
                    <input type="text" name="name" id="TB_CorreoRegistro" placeholder="Correo electrónico" required />
                    <label id="icon" for="name"><i class="icon-folder-open"></i></label>
                    <input type="text" name="name" id="TB_NombreusuarioRegistro" placeholder="Nombre de Usuario" required />

                    <label id="icon" for="name"><i class="icon-folder-open"></i></label>
                    <input type="password" name="name" id="TB_ContrasenaRegistro" placeholder="Contraseña" required />

                    <label id="icon" for="name"><i class="icon-folder-open"></i></label>
                    <input type="text" name="name" id="TB_FotoRegistro" placeholder="Foto" required />
                </legend>
                <!--<div class="gender">
                    <input type="radio" value="None" id="male" name="gender" checked />
                    <label for="male" class="radio" chec>Male</label>
    <input type="radio" value="None" id="female" name="gender" />
    <label for="female" class="radio">Female</label> 
                </div>-->
                <p>Consulte nuestro  <a href="#">Manual De Usuario</a>.</p>
                <a href="#" class="button" style="margin-left: 40%; text-align: center;">Registrar</a>
            </form>
        </div>
    </div>
</html>
    </asp:Content>
