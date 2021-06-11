using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de DAOAdministrador
/// </summary>
public class DAOAdministrador
{
    public List<EUsuario> obtenerRegistrados()
    {
        using (var db = new Mapeo())
        {
            return (from e in db.usuario
                    join c in db.rol on e.Tipo_usuario equals c.Id_rol

                    select new
                    {
                        e,
                        c.Id_rol
                    }).ToList().Select(m => new EUsuario
                    {
                        Apellido = m.e.Apellido,
                        Correo = m.e.Correo,
                        Id_user = m.e.Id_user,
                        Nombre = m.e.Nombre,
                        Numero_documento = m.e.Numero_documento,
                        Foto_user = m.e.Foto_user
                    }).OrderBy(x => x.Nombre).ToList();
        }
    }
}