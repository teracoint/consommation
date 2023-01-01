using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;

namespace Resto.Logic.Services
{
    class JourTravailService
    {
        public static bool jourtravailInsert(int IdJourTravail, string Date, string Jour)
        {
            return DBHelper.exceutedata("JOURTRAVAILINSERT", () => JourTravailParameterInsert(IdJourTravail, Date,
                Jour, DBHelper.command));

        }
        // this methoud to add insert parameter into store procedure
        private static void JourTravailParameterInsert(int IdJourTravail, string Date, string Jour, SqlCommand command)
        {
            command.Parameters.Add("@IdJourTravail", SqlDbType.Int).Value = IdJourTravail;
            command.Parameters.Add("@Date", SqlDbType.NVarChar).Value = Date;
            command.Parameters.Add("@Jour", SqlDbType.NVarChar).Value = Jour;
           
        }
        // methoud delete
        public static bool jourtravailDelete(int IdJourTravail)
        {
            return DBHelper.exceutedata("JOURTRAVAILDELETE", () => JourTravailParameterDelete(IdJourTravail, DBHelper.command));

        }
        // this methoud to  delete parameter into store procedure
        private static void JourTravailParameterDelete(int IdJourTravail, SqlCommand command)
        {
            command.Parameters.Add("@IdJourTravail", SqlDbType.Int).Value = IdJourTravail;

        }
        // دالة التحديث
        public static bool jourtravailUpdate(int IdJourTravail, string Date, string Jour)
        {
            return DBHelper.exceutedata("JOURTRAVAILUPDATE", () => JourTravailParameterUpdate(IdJourTravail, Date, Jour,
                 DBHelper.command));

        }
        private static void JourTravailParameterUpdate(int IdJourTravail, string Date, string Jour, SqlCommand command)
        {
            command.Parameters.Add("@IdJourTravail", SqlDbType.Int).Value = IdJourTravail;
            command.Parameters.Add("@Date", SqlDbType.NVarChar).Value = Date;
            command.Parameters.Add("@Jour", SqlDbType.NVarChar).Value = Jour;
        }
        // methoud delete all
        public static bool jourtravailDeleteAll()
        {
            return DBHelper.exceutedata("JOURTRAVAILDELETEALL", () => JourTravailParameterDeleteAll());

        }
        private static void JourTravailParameterDeleteAll()
        {


        }
        // دالة select
        static public DataTable getAllData()
        {
            return DBHelper.getData("JOURTRAVAILGETALL", () => { });
        }
        // method get all data to get last row in table
        static public DataTable getLastRow()
        {
            return DBHelper.getData("JOURTRAVAILGETLASTROW", () => { });
        }
        // method get all data to get max id in table
        static public DataTable getMaxID()
        {
            return DBHelper.getData("JOURTRAVAILMAXID", () => { });
        }

    }
}
