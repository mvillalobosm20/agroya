using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de DAOUsuario
/// </summary>
public class DAOUsuario
{
    public EUsuario login(EUsuario user)
    {
        using (var db = new Mapeo())
        {
            return db.usuario.Where(x => x.UserName.Equals(user.UserName) && x.Clave.Equals(user.Clave) && x.EstadoId == 1).FirstOrDefault();
        }
    }
}