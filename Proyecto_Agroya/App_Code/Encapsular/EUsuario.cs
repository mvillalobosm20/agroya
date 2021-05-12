using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

[Serializable]
[Table("usuario", Schema = "usuario")]
public class EUsuario
{
    private int id;
    private string nombre;
    private string apellido;
    private string userName;
    private string clave;
    private int rolId;
    private string token;
    private string session;
    private string estadoId;
    private string correo;
    private Nullable<DateTime> token_reset;
    private DateTime fecha_registro;
    private string foto_user;
    [Key]
    [Column("id_user")]
    public int Id { get => id; set => id = value; }
    [Column("username")]
    public string UserName { get => userName; set => userName = value; }
    [Column("password")]
    public string Clave { get => clave; set => clave = value; }
    [Column("correo")]
    public string Correo { get => correo; set => correo = value; }
    [Column("token_reset")]
    public DateTime? Token_reset { get => this.token_reset; set => this.token_reset = value; }
    [Column("estado_user")]
    public string EstadoId { get => estadoId; set => estadoId = value; }
    [Column("fecha_registro")]
    public DateTime Fecha_registro { get => fecha_registro; set => fecha_registro = value; }
    [Column("foto_user")]
    public string Foto_user { get => foto_user; set => foto_user = value; }
    [Column("nombre")]
    public string Nombre { get => nombre; set => nombre = value; }
    [Column("apellido")]
    public string Apellido { get => apellido; set => apellido = value; }
    [Column("tipo_documento")]
    public string tipo_documento { get => tipo_documento; set => tipo_documento = value; }
    [Column("numero_documento")]
    public string numero_documento { get => numero_documento; set => numero_documento = value; }
    [Column("ciudad_residencia")]
    public string ciudad_residencia { get => ciudad_residencia; set => ciudad_residencia = value; }
    [Column("direccion")]
    public string direccion { get => direccion; set => direccion = value; }
    [Column("telefono")]
    public int telefono { get => telefono; set => telefono = value; }
    [Column("tipo_usuario")]
    public int RolId { get => rolId; set => rolId = value; }
    [Column("token_verificacion")]
    public string Token { get => token; set => token = value; }
    
}