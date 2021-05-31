using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;


public class DAOUsuario
{
    public EUsuario Login(EUsuario user)
    {
        using (var db = new Mapeo())
        {
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

    public EUsuario buscarToken(string token)
    {
        using (var db = new Mapeo())
        {
            return db.usuario.Where(x => x.Token_verificacion.Equals(token)).FirstOrDefault();
        }

    }

    public void actualizarUsuario(EUsuario user)
    {
        using (var db = new Mapeo())
        {
            db.usuario.Attach(user);

            var entry = db.Entry(user);
            entry.State = EntityState.Modified;
            db.SaveChanges();
        }
    }
    public List<EUsuario> obtenerEstado()
    {
        using (var db = new Mapeo())
        {
            return db.usuario.ToList();
        }

    }

    public void registrarUsuario(EUsuario usuario)
    {
      Mapeo a = new Mapeo();
        a.usuario.Add(usuario);
        a.SaveChanges();
    }

    public List<ERol> obtenerroles()
    {
        List<ERol> lista = new List<ERol>();
        using (var db = new Mapeo())
        {
            lista = db.rol.ToList();
        }

        ERol rol = new ERol();
        rol.Tipo_usuario = "-- Seleccione --";
        rol.Id_rol = 0;

        lista.Add(rol);

        return lista.OrderBy(x => x.Tipo_usuario).ToList();
    }

    public void editarUsuario(EUsuario aEditarUsuario)
    {
        using (var db = new Mapeo())
        {
            EUsuario usuarioAntiguo = db.usuario.Where(x => x.Id_user == aEditarUsuario.Id_user).FirstOrDefault();
            usuarioAntiguo.Nombre = aEditarUsuario.Nombre;
            // usuarioAntiguo.rolId = aEditarUsuario.rolId;
            usuarioAntiguo.Apellido = aEditarUsuario.Apellido;
            usuarioAntiguo.Ciudad_residencia = aEditarUsuario.Ciudad_residencia;
            usuarioAntiguo.Direccion = aEditarUsuario.Direccion;
            usuarioAntiguo.Telefono = aEditarUsuario.Telefono;
            
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