//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DAO_Hermes
{
    using System;
    
    public partial class Usp_Sel_CodigoDetalle_Pagos_Result
    {
        public int ID { get; set; }
        public Nullable<int> ProductoID { get; set; }
        public Nullable<int> Correlativo { get; set; }
        public string Codigo { get; set; }
        public string Descripcion { get; set; }
        public Nullable<int> AfiliacionSeguroAlumnoID { get; set; }
        public Nullable<int> AfiliacionSeguroPadreID { get; set; }
        public Nullable<bool> TipoCarga { get; set; }
        public decimal Prima { get; set; }
        public Nullable<decimal> GastoCuracion { get; set; }
        public Nullable<decimal> InvalidezPermanenteTotal { get; set; }
        public Nullable<decimal> InvalidezPermanenteParcial { get; set; }
        public Nullable<decimal> MuerteAccidental { get; set; }
        public Nullable<decimal> GastosSepelio { get; set; }
        public Nullable<decimal> PensionMensual { get; set; }
        public Nullable<int> MesesPension { get; set; }
        public Nullable<int> AnniosPension { get; set; }
        public string InstitucionEducativaNombre { get; set; }
        public string InstitucionEducativaDireccion { get; set; }
        public string InstitucionEducativaCodigo { get; set; }
        public string MonedaSimbolo { get; set; }
        public string AlumnoApellidoPaterno { get; set; }
        public string AlumnoApellidoMaterno { get; set; }
        public string AlumnoNombre { get; set; }
        public Nullable<System.DateTime> AlumnoFechaNacimiento { get; set; }
        public string AlumnoNumeroDocumento { get; set; }
        public Nullable<bool> AlumnoEstado { get; set; }
        public string AlumnoSeccion { get; set; }
        public string AlumnoTipoDocumento { get; set; }
        public string AlumnoGrado { get; set; }
        public Nullable<int> AlumnoSexo { get; set; }
        public string PadreApellidoPaterno { get; set; }
        public string PadreApellidoMaterno { get; set; }
        public string PadreNombre { get; set; }
        public Nullable<System.DateTime> PadreFechaNacimiento { get; set; }
        public string PadreNumeroDocumento { get; set; }
        public Nullable<bool> PadreEstado { get; set; }
        public string PadreTipoDocumento { get; set; }
        public string PadreTipoPadreNombre { get; set; }
        public Nullable<int> PadreTipo { get; set; }
        public Nullable<System.DateTime> FechaPago { get; set; }
        public string OperacionBancaria { get; set; }
        public Nullable<int> BancoPagoID { get; set; }
        public string BancoPagoNombre { get; set; }
        public Nullable<int> MonedaPagoID { get; set; }
        public string MonedaPagoNombre { get; set; }
        public string MonedaPagoSimbolo { get; set; }
        public Nullable<bool> IsPagado { get; set; }
        public string NroPoliza { get; set; }
        public string CodigoContratante { get; set; }
        public string NombreContratante { get; set; }
        public Nullable<System.DateTime> FechaCreacion { get; set; }
        public string Situacion { get; set; }
    }
}
