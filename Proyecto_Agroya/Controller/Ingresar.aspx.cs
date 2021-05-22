using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class View_Ingresar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        EUsuario user = new EUsuario();
        user.Username = txt_username.Text;
        user.Password = txt_clave.Text;


        user = new DAOUsuario().Login(user);
        if (user != null)
        {
            Session["user"] = user;
            switch (user.Tipo_usuario)
            {
                case 1:
                    Response.Redirect("Administrador.aspx");
                    break;
                case 2:
                    Response.Redirect("Agricultor.aspx");
                    break;

                case 3:
                    Response.Redirect("Usuario.aspx");
                    break;
                default:
                    break;
            }
        }
        else
        {
            lb_error.Text = "Nombre de usuario o Contraseña incorrecto";
            txt_username.Text = string.Empty;
        }
    }
}