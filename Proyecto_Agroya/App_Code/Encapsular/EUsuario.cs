using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

[Serializable]
[Table("usuario", Schema = "usuario")]
public class EUsuario
{

    private int id_user;
    private string username;
    private string password;
    private string correo;
    private DateTime fecha_registro;
    private string foto_user;
    private string nombre;
    private string apellido;
    private string tipo_documento;
    private int numero_documento;
    private string ciudad_residencia;
    private string direccion;
    private double telefono;
    private int tipo_usuario;
    private string token_verificacion;
    private Nullable<DateTime> token_reset;
    private int estado_user;

    [Key]
    [Column("id_user")]
    public int Id_user { get => id_user; set => id_user = value; }
    [Column("username")]
    public string Username { get => username; set => username = value; }
    [Column("password")]
    public string Password { get => password; set => password = value; }
    [Column("correo")]
    public string Correo { get => correo; set => correo = value; }
    [Column("fecha_registro")]
    public DateTime Fecha_registro { get => fecha_registro; set => fecha_registro = value; }
    [Column("foto_user")]
    public string Foto_user { get => foto_user; set => foto_user = value; }
    [Column("nombre")]
    public string Nombre { get => nombre; set => nombre = value; }
    [Column("apellido")]
    public string Apellido { get => apellido; set => apellido = value; }
    [Column("tipo_documento")]
    public string Tipo_documento { get => tipo_documento; set => tipo_documento = value; }
    [Column("numero_documento")]
    public int Numero_documento { get => numero_documento; set => numero_documento = value; }
    [Column("ciudad_residencia")]
    public string Ciudad_residencia { get => ciudad_residencia; set => ciudad_residencia = value; }
    [Column("direccion")]
    public string Direccion { get => direccion; set => direccion = value; }
    [Column("telefono")]
    public double Telefono { get => telefono; set => telefono = value; }
    [Column("tipo_usuario")]
    public int Tipo_usuario { get => tipo_usuario; set => tipo_usuario = value; }
    [Column("token_verificacion")]
    public string Token_verificacion { get => token_verificacion; set => token_verificacion = value; }
    [Column("token_reset")]
    public DateTime? Token_reset { get => token_reset; set => token_reset = value; }
    [Column("estado_user")]
    public int Estado_user { get => estado_user; set => estado_user = value; }
}