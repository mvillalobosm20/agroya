using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class View_Recuperarcontra : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void B_Recuperar_Click(object sender, EventArgs e)
    {
        string correo = TB_Correo.Text;
        EUsuario user = new DAOUsuario().validarCorreo(correo);

        if (user !=null)
        {

        }
    }
}