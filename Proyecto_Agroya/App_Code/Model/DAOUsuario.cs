using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de DAOUsuario
/// </summary>
public class DAOUsuario
{
    public EUsuario Login(EUsuario user)
    {
            using (var db = new Mapeo())
            {
                return db.usuario.Where(x => x.Username.Equals(user.Username) && x.Password.Equals(user.Password) && x.Estado_user == 1).FirstOrDefault();
            }
        }
}