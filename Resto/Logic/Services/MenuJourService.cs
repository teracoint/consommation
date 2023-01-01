using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;

namespace Resto.Logic.Services
{
    class MenuJourService
    {
        public static bool menujourInsert(int IdMenuJour, int IdJourTravail, string PetDej, string Dej,string Gouter,
            string Diner, int NbPetDej,int NbDej,int NbGouter,int NbDiner)
        {
            return DBHelper.exceutedata("MENUJOURINSERT", () => MenuJourParameterInsert(IdMenuJour, IdJourTravail,
                PetDej, Dej, Gouter, Diner, NbPetDej, NbDej, NbGouter, NbDiner, DBHelper.command));

        }
        // this methoud to add insert parameter into store procedure
        private static void MenuJourParameterInsert(int IdMenuJour, int IdJourTravail, string PetDej, string Dej, string Gouter,
            string Diner, int NbPetDej, int NbDej, int NbGouter, int NbDiner, SqlCommand command)
        {
            command.Parameters.Add("@IdMenuJour", SqlDbType.Int).Value = IdMenuJour;
            command.Parameters.Add("@IdJourTravail", SqlDbType.Int).Value = IdJourTravail;
            command.Parameters.Add("@PetDej", SqlDbType.NVarChar).Value = PetDej;
            command.Parameters.Add("@Dej", SqlDbType.NVarChar).Value = Dej;
            command.Parameters.Add("@Gouter", SqlDbType.NVarChar).Value = Gouter;
            command.Parameters.Add("@Diner", SqlDbType.NVarChar).Value = Diner;
            command.Parameters.Add("@NbPetDej", SqlDbType.Int).Value = NbPetDej;
            command.Parameters.Add("@NbDej", SqlDbType.Int).Value = NbDej;
            command.Parameters.Add("@NbGouter", SqlDbType.Int).Value = NbGouter;
            command.Parameters.Add("@NbGouter", SqlDbType.Int).Value = NbGouter;
        }
        // methoud delete
        public static bool menujourDelete(int id)
        {
            return DBHelper.exceutedata("MENUJOURDELETE", () => MenuJourParameterDelete(id, DBHelper.command));

        }
        // this methoud to  delete parameter into store procedure
        private static void MenuJourParameterDelete(int id, SqlCommand command)
        {
            command.Parameters.Add("@id", SqlDbType.Int).Value = id;

        }
        // دالة التحديث
        public static bool menujourUpdate(int IdMenuJour, int IdJourTravail, string PetDej, string Dej, string Gouter,
            string Diner, int NbPetDej, int NbDej, int NbGouter, int NbDiner)
        {
            return DBHelper.exceutedata("MENUJOURUPDATE", () => MenuJourParameterUpdate(IdMenuJour, IdJourTravail,
                PetDej, Dej, Gouter, Diner, NbPetDej, NbDej, NbGouter, NbDiner, DBHelper.command));

        }
        private static void MenuJourParameterUpdate(int IdMenuJour, int IdJourTravail, string PetDej, string Dej, string Gouter,
            string Diner, int NbPetDej, int NbDej, int NbGouter, int NbDiner, SqlCommand command)
        {
            command.Parameters.Add("@IdMenuJour", SqlDbType.Int).Value = IdMenuJour;
            command.Parameters.Add("@IdJourTravail", SqlDbType.Int).Value = IdJourTravail;
            command.Parameters.Add("@PetDej", SqlDbType.NVarChar).Value = PetDej;
            command.Parameters.Add("@Dej", SqlDbType.NVarChar).Value = Dej;
            command.Parameters.Add("@Gouter", SqlDbType.NVarChar).Value = Gouter;
            command.Parameters.Add("@Diner", SqlDbType.NVarChar).Value = Diner;
            command.Parameters.Add("@NbPetDej", SqlDbType.Int).Value = NbPetDej;
            command.Parameters.Add("@NbDej", SqlDbType.Int).Value = NbDej;
            command.Parameters.Add("@NbGouter", SqlDbType.Int).Value = NbGouter;
            command.Parameters.Add("@NbGouter", SqlDbType.Int).Value = NbGouter;

        }
        // methoud delete all
        public static bool menujourDeleteAll()
        {
            return DBHelper.exceutedata("MENUJOURDELETEALL", () => FournisseurParameterDeleteAll());

        }
        private static void FournisseurParameterDeleteAll()
        {


        }
        // دالة select
        static public DataTable getAllData()
        {
            return DBHelper.getData("MENUJOURGETALL", () => { });
        }
        // method get all data to get last row in table
        static public DataTable getLastRow()
        {
            return DBHelper.getData("MENUJOURGETLASTROW", () => { });
        }
        // method get all data to get max id in table
        static public DataTable getMaxID()
        {
            return DBHelper.getData("MENUJOURMAXID", () => { });
        }

    }
}
