using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;


[Serializable]
[Table("rol", Schema = "usuario")]
public class ERol
{
    private int id_rol;
    private string tipo_usuario;

    [Key]
    [Column("id_rol")]
    public int Id_rol { get => id_rol; set => id_rol = value; }
    [Column("tipo_usuario")]
    public string Tipo_usuario { get => tipo_usuario; set => tipo_usuario = value; }
}