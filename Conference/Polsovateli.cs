//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Conference
{
    using System;
    using System.Collections.Generic;
    
    public partial class Polsovateli
    {
        public int IdPolzovatelya { get; set; }
        public string Familiya { get; set; }
        public string Imya { get; set; }
        public string Otchestvo { get; set; }
        public string Email { get; set; }
        public string Telefon { get; set; }
        public System.DateTime DataRojdeniya { get; set; }
        public int IdPola { get; set; }
        public int IdStrani { get; set; }
        public Nullable<int> IdNapravleniya { get; set; }
        public Nullable<int> IdMeropriyatiya { get; set; }
        public string Parol { get; set; }
        public int IdRoli { get; set; }
    
        public virtual Napravleniya Napravleniya { get; set; }
        public virtual Pol Pol { get; set; }
        public virtual Roli Roli { get; set; }
        public virtual Sobitiya Sobitiya { get; set; }
        public virtual Strani Strani { get; set; }
    }
}
