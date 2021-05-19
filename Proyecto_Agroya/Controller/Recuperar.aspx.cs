using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class View_Recuperar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString.Count > 0)
        {
            EUsuario user = new DAOUsuario().buscarToken(Request.QueryString[0]);

            if (user == null)
                this.RegisterStartupScript("mensaje", "<script type='text/javascript'>alert('El Token es invalido. Genere uno nuevo');window.location=\"InicioSesion.aspx\"</script>");
            else if (user.Token_reset < DateTime.Now)
            {
                this.RegisterStartupScript("mensaje", "<script type='text/javascript'>alert('El Token esta vencido. Genere uno nuevo');window.location=\"InicioSesion.aspx\"</script>");
            }
            else
                Session["userRecuperado"] = user;
        }

        else
        {
            Response.Redirect("InicioSesion.aspx");
        }
    }

    protected void B_Guardar_Click(object sender, EventArgs e)
    {
        if (TB_Contrasena.Text.Length <= 8)
        {
            this.RegisterStartupScript("mensaje", "<script type='text/javascript'>alert('Passsword muy corto')</script>");
            return;
        }

        EUsuario user = (EUsuario)Session["userRecuperado"];

        user.Token_verificacion = null;
        user.Token_reset = null;
        user.Estado_user = 1;
        user.Password = TB_Contrasena.Text;

        new DAOUsuario().actualizarUsuario(user);
        Response.Redirect("InicioSesion.aspx");
    }

    protected void B_Guardar_Click1(object sender, EventArgs e)
    {
        if (TB_Contrasena.Text.Length <= 8)
        {
            this.RegisterStartupScript("mensaje", "<script type='text/javascript'>alert('Passsword muy corto')</script>");
            return;
        }

        EUsuario user = (EUsuario)Session["userRecuperado"];

        user.Token_verificacion = null;
        user.Token_reset = null;
        user.Estado_user = 1;
        user.Password = TB_Contrasena.Text;

        new DAOUsuario().actualizarUsuario(user);
        Response.Redirect("InicioSesion.aspx");
    }
}