using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
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
            Guid g = Guid.NewGuid();
            user.Token_verificacion = g.ToString();
            user.Token_verificacion = encriptar(user.Token_verificacion);
            user.Token_reset = DateTime.Now.AddHours(24);
            user.Estado_user = 2;

            new DAOUsuario().actualizarUsuario(user);
            string mensaje = "Por favor ingrese al siguiente link: http://localhost:60604/View/Recuperar.aspx?=" +user.Token_verificacion;
            new Correo().enviarCorreo(correo, userToken: user.Token_verificacion, mensaje: mensaje);

            L_Mensaje.Text = "Hemos Enviado un correo electronico a su correo guardado. Por favor seguir instrucciones";
        }
    }

    private string encriptar(string input)
    {
        SHA256CryptoServiceProvider provider = new SHA256CryptoServiceProvider();

        byte[] inputBytes = Encoding.UTF8.GetBytes(input);
        byte[] hashedBytes = provider.ComputeHash(inputBytes);

        StringBuilder output = new StringBuilder();

        for (int i = 0; i < hashedBytes.Length; i++)
            output.Append(hashedBytes[i].ToString("x2").ToLower());

        return output.ToString();
    }

}