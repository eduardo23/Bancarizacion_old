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
    
    public partial class usp_ReporteEnvioCorreos_ReciboAfiliados_Result
    {
        public string Codigo { get; set; }
        public string Asegurado { get; set; }
        public string Beneficiario { get; set; }
        public Nullable<decimal> Prima { get; set; }
        public string Seguro { get; set; }
        public string CiaSeguros { get; set; }
        public Nullable<int> BeneficiarioID { get; set; }
        public Nullable<int> MonedaID { get; set; }
        public Nullable<System.DateTime> FechaVigenciaPolizaInicio { get; set; }
        public Nullable<System.DateTime> FechaVigenciaPolizaFin { get; set; }
        public string Nombre { get; set; }
        public string CodigoInstitucion { get; set; }
        public Nullable<int> TipoDeSeguro { get; set; }
    }
}
