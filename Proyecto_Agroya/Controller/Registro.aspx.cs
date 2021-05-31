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
        EUsuario usuario = new EUsuario();
        usuario.Nombre = TB_Nombre.Text;
        usuario.Apellido = TB_Apellido.Text;
        usuario.Ciudad_residencia = TB_CiudadResidencia.Text;
        usuario.FechaNacimiento = DateTime.Parse(TB_FechaNacimiento.Text);
        usuario.Correo = TB_CorreoRegistro.Text;
        usuario.Direccion = TB_DireccionRegistro.Text;
        usuario.Foto_user = int.Parse(FileUpload1.Text);
        usuario.Telefono = int.Parse(L_EdadCalc.Text);
        usuario.Tipo_usuario = int.Parse(DDL_Roles.SelectedValue);

        new DAOUsuario().registrarUsuario(usuario);

        Response.Redirect("Registro.aspx");
    }

    protected void TB_FechaNacimiento_TextChanged(object sender, EventArgs e)
    {
        L_EdadCalc.Text = DateTime.Now.AddYears(DateTime.Parse(TB_FechaNacimiento.Text).Year * -1).Year.ToString();
    }




   
}
