using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Resto.Views.Interface
{
    public interface IMenuJour
    {
         int IdMenuJour { get; set; }
         int IdJourTravail { get; set; }
         string PetDej { get; set; }
         string Dej { get; set; }
         string Gouter { get; set; }
         string Diner { get; set; }
         int NbPetDej { get; set; }
         int NbDej { get; set; }
         int NbGouter { get; set; }
         int NbDiner { get; set; }
         object dataGridView { get; set; }
         object cbxJourTravail { get; set; }
         int row { get; set; }
        // نعمل كل الازرار المراد التحكم بها  على شكل اوبجي
        object btnNew { get; set; }
        object btnAdd { get; set; }
        object btnSave { get; set; }
        object btnDelete { get; set; }
        object btnDeleteAll { get; set; }
    }
}
