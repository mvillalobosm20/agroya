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
            EUsuario retornarU = new EUsuario();
            retornarU = db.usuario.FirstOrDefault();
            return retornarU;
        }
    }
}