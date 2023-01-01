using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;

namespace Resto.Logic.Services
{
    class FonctionService
    {
        // methoud insert
        public static bool fonctionInsert(int IdFonction, string DesFonction, int PrixPetDej, int PrixDej,
            int PrixGouter, int PrixDiner)
        {
            return DBHelper.exceutedata("FONCTIONINSERT", () => FonctionParameterInsert(IdFonction, DesFonction, PrixPetDej,
            PrixDej, PrixGouter, PrixDiner, DBHelper.command));
            
        }
        private static void FonctionParameterInsert(int IdFonction, string DesFonction, int PrixPetDej, int PrixDej,
            int PrixGouter, int PrixDiner, SqlCommand command)
        {
            command.Parameters.Add("@IdFonction", SqlDbType.Int).Value = IdFonction;
            command.Parameters.Add("@DesFonction", SqlDbType.NVarChar).Value = DesFonction;
            command.Parameters.Add("@PrixPetDej", SqlDbType.Int).Value = PrixPetDej;
            command.Parameters.Add("@PrixDej", SqlDbType.Int).Value = PrixDej;
            command.Parameters.Add("@PrixGouter", SqlDbType.Int).Value = PrixGouter;
            command.Parameters.Add("@PrixDiner", SqlDbType.Int).Value = PrixDiner;
            
        }
        // methoud delete from
        public static bool fonctionDelete(int IdFonction)
        {
            return DBHelper.exceutedata("FONCTIONDELETE", () => FonctionParameterDelete(IdFonction, DBHelper.command));
            
        }
        private static void FonctionParameterDelete(int IdFonction, SqlCommand command)
        {
            command.Parameters.Add("@IdFonction", SqlDbType.Int).Value = IdFonction;
            
        }
        // دالة التحديث
        public static bool fonctionUpdate(int IdFonction, string DesFonction, int PrixPetDej, int PrixDej,
            int PrixGouter, int PrixDiner)
        {
            return DBHelper.exceutedata("FONCTIONUPDATE", () => FonctionParameterUpdate(IdFonction, DesFonction, PrixPetDej,
            PrixDej, PrixGouter, PrixDiner, DBHelper.command));
            
        }
        private static void FonctionParameterUpdate(int IdFonction, string DesFonction, int PrixPetDej, int PrixDej,
            int PrixGouter, int PrixDiner, SqlCommand command)
        {
            command.Parameters.Add("@IdFonction", SqlDbType.Int).Value = IdFonction;
            command.Parameters.Add("@DesFonction", SqlDbType.NVarChar).Value = DesFonction;
            command.Parameters.Add("@PrixPetDej", SqlDbType.Int).Value = PrixPetDej;
            command.Parameters.Add("@PrixDej", SqlDbType.Int).Value = PrixDej;
            command.Parameters.Add("@PrixGouter", SqlDbType.Int).Value = PrixGouter;
            command.Parameters.Add("@PrixDiner", SqlDbType.Int).Value = PrixDiner;
        }

        // methoud delete all
        public static bool fonctionDeleteAll()
        {
            return DBHelper.exceutedata("FONCTIONDELETEALL", () => FonctionParameterDeleteAll());

        }
        private static void FonctionParameterDeleteAll()
        {
           

        }
        static public DataTable getAllData()
        {
            return DBHelper.getData("FONCTIONGETALL", () => { });
        }
        // method get all data to get last row in table
        static public DataTable getLastRow()
        {
            return DBHelper.getData("FONCTIONGETLASTROW", () => { });
        }
        // method get all data to get max id in table
        static public DataTable getMaxID()
        {
            return DBHelper.getData("FONCTIONMAXID", () => { });
        }
    }
}
