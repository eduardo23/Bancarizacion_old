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
    using System.Collections.Generic;
    
    public partial class logPromo
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public logPromo()
        {
            this.logPromoDet = new HashSet<logPromoDet>();
        }
    
        public int ID { get; set; }
        public string remitente { get; set; }
        public string asunto { get; set; }
        public Nullable<int> plantillaID { get; set; }
        public Nullable<System.DateTime> fecha { get; set; }
    
        public virtual Plantilla Plantilla { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<logPromoDet> logPromoDet { get; set; }
    }
}
