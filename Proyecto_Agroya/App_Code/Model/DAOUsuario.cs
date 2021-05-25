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

    //public void registrarUsuario(EUsuario )
    //{
    //    Mapeo a = new Mapeo();
    //    a.usuario.Add();
    //    a.SaveChanges();
    //}
}