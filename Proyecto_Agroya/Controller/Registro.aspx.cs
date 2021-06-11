using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class View_Registro : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    
       

    protected void B_Guardar_Click(object sender, EventArgs e)
    {
        ClientScriptManager cm = this.ClientScript;
        EUsuario usuario= new EUsuario();
        string extension = System.IO.Path.GetExtension(FU_Fotoperfil.PostedFile.FileName);
        string nombre = DateTime.Now.ToFileTime().ToString() + extension;
        string saveLocation;
        if (extension.Equals("") == false)
        {
            if (extension.Equals(".jpg") || extension.Equals(".png") || extension.Equals(".jpeg"))
            {
                saveLocation = Server.MapPath("~\\Imagenes\\UsuariosRegistrados\\") + nombre;
                if (System.IO.File.Exists(saveLocation))
                {
                    cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Ya existe un archivo en el servidor con ese nombre');</script>");
                    return;
                }
                try
                {

                    FU_Fotoperfil.PostedFile.SaveAs(saveLocation);
                    cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Foto cargada correctamente');</script>");

                }
                catch
                {
                    cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Error subiendo la imagen');</script>");
                    return;
                }
                usuario.Username = TB_NombreUsuario.Text;
                usuario.Password = TB_ContrasenaRegistro.Text;
                usuario.Nombre = TB_Nombre.Text;
                usuario.Apellido = TB_Apellido.Text;
                usuario.Ciudad_residencia = TB_CiudadResidencia.Text;
                usuario.Numero_documento = int.Parse(TB_DocumentoRegistrado.Text);
                usuario.Correo = TB_CorreoRegistro.Text;
                usuario.Direccion = TB_DireccionRegistro.Text;
                usuario.Telefono = int.Parse(TB_NumeroTelefonico.Text);
                usuario.Tipo_usuario = int.Parse(DDL_Roles.SelectedValue);
                usuario.Foto_user = nombre;

                new DAOUsuario().registrarUsuario(usuario);
            }
            else
            {
                cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript>alert('Tipo de archivo incorrecto');</script>");
                return;
            }

        }
        else
        {
            usuario.Foto_user = "sinfoto.png";
            usuario.Nombre = TB_Nombre.Text;
            usuario.Apellido = TB_Apellido.Text;
            usuario.Ciudad_residencia = TB_CiudadResidencia.Text;
            usuario.Numero_documento = int.Parse(TB_DocumentoRegistrado.Text);
            usuario.Correo = TB_CorreoRegistro.Text;
            usuario.Direccion = TB_DireccionRegistro.Text;
            usuario.Telefono = int.Parse(TB_NumeroTelefonico.Text);
            usuario.Tipo_usuario = int.Parse(DDL_Roles.SelectedValue);
            new DAOUsuario().registrarUsuario(usuario);
        }
            Response.Redirect("Registro.aspx");
    }

   




   
}
