using System;
using System.Collections.Generic;
using System.Data.Entity;
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
                        Telefono = m.e.Telefono,
                        Username = m.e.Username,
                        Password = m.e.Password,
                        Direccion = m.e.Direccion,
                        Ciudad_residencia = m.e.Ciudad_residencia,
                        Foto_user = m.e.Foto_user
                    }).OrderBy(x => x.Nombre).ToList();
        }
    }

    public void editarUsuario(EUsuario editarUsuario)
    {
        using (var db = new Mapeo())
        {
            EUsuario usuarioAntiguo = db.usuario.Where(x => x.Id_user == editarUsuario.Id_user).FirstOrDefault();
            usuarioAntiguo.Nombre = editarUsuario.Nombre;
            // empleadoAntiguo.CargoId = aEditarEmpleado.CargoId;
            usuarioAntiguo.Apellido = editarUsuario.Apellido;
            //empleadoAntiguo.Edad = aEditarEmpleado.Edad;
            //empleadoAntiguo.FechaNacimiento = aEditarEmpleado.FechaNacimiento;
            var enty = db.Entry(usuarioAntiguo);
            enty.State = EntityState.Modified;
            db.SaveChanges();
        }
    }
    public void eliminar(EUsuario usuarioElminado)
    {
        using (var db = new Mapeo())
        {
            var enty = db.Entry(usuarioElminado);
            enty.State = EntityState.Deleted;
            db.SaveChanges();
        }

    }
}