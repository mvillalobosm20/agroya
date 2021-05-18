using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class DAOUsuario
{
    public EUsuario Login(EUsuario user)
    {
            using (var db = new Mapeo())
            {
            List<EUsuario> Prueba = db.usuario.ToList();
            return db.usuario.Where(x => x.Username.Equals(user.Username) && x.Password.Equals(user.Password)).FirstOrDefault();
            
            }
        }

    public EUsuario validarCorreo(string correo)
    {
        using (var db = new Mapeo())
        {
            return db.usuario.Where(x => x.Correo.ToLower().Equals(correo.ToLower())).FirstOrDefault();
        }
    }
}