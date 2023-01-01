using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Resto.Views.Interface
{
    public interface IFonction
    {
         int IdFonction { get; set; }
         string DesFonction { get; set; }
         int PrixPetDej { get; set; }
         int PrixDej { get; set; }
         int PrixGouter { get; set; }
         int PrixDiner { get; set; }
         
         object dataGridView { get; set; }
        int row { get; set; }
        // نعمل كل الازرار المراد التحكم بها  على شكل اوبجي
        object btnNew { get; set; }
        object btnAdd { get; set; }
        object btnSave { get; set; }
        object btnDelete { get; set; }
        object btnDeleteAll { get; set; }
    }
}
