using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Resto.Models
{
    public class MenuJourModel
    {
        public int IdMenuJour { get; set; }
        public int IdJourTravail { get; set; }
        public string PetDej { get; set; }
        public string Dej { get; set; }
        public string Gouter { get; set; }
        public string Diner { get; set; }
        public int NbPetDej { get; set; }
        public int NbDej { get; set; }
        public int NbGouter { get; set; }
        public int NbDiner { get; set; }
    }
}
