using Resto.Logic.Services;
using Resto.Models;
using Resto.Views.Interface;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Resto.Logic.Presenter
{
    class JourTravailPresenter
    {
        // ناخد نسخة من interface
        IJourTravail ijourtravail;

        // تاخد instance 
        JourTravailModel jourtravailModel = new JourTravailModel();
        // الفائدة من كونسركثور اول ما يتم استدعاء الكلاص هادي اول كود يتنفد هو كوسيكثور
        public JourTravailPresenter(IJourTravail view)
        {
            this.ijourtravail = view;
        }
        private void connectBetweenModelInterface()
        {
            jourtravailModel.IdJourTravail = ijourtravail.IdJourTravail;
            jourtravailModel.Date = ijourtravail.Date;
            jourtravailModel.Jour = ijourtravail.Jour;
            
        }
        public bool JourTravailInsert()
        {
            connectBetweenModelInterface();
            bool check =  JourTravailService.jourtravailInsert(jourtravailModel.IdJourTravail, jourtravailModel.Date,
                jourtravailModel.Jour);
            getAllData();
            AutoNumber();
            return check;
        }

        // دالة التحدبث

        public bool JourTravailUpdate()
        {
            connectBetweenModelInterface();
            bool check = JourTravailService.jourtravailUpdate(jourtravailModel.IdJourTravail, jourtravailModel.Date,
                jourtravailModel.Jour);
            getAllData();
            AutoNumber();
            return check;
        }
        // دالة الحدف
        public bool JourTravailDelete()
        {
            connectBetweenModelInterface();
            bool check = JourTravailService.jourtravailDelete(jourtravailModel.IdJourTravail);
            getAllData();
            AutoNumber();
            return check;
        }
        // دالة حدف الكل
        public bool JourTravailDeleteAll()
        {
            connectBetweenModelInterface();
            bool check = JourTravailService.jourtravailDeleteAll();
            getAllData();
            AutoNumber();
            return check;
        }

        public void ClearFields()
        {
            //connectBetweenModelInterface();
            ijourtravail.IdJourTravail= 0;
            ijourtravail.Date = "";
            ijourtravail.Jour = "";
                      
        }
        // دالة select
        public void getAllData()
        {
            //connectBetweenModelInterface();
            ijourtravail.dataGridView = JourTravailService.getAllData();
            ClearFields();
        }
        public void AutoNumber()
        {
            string test = (JourTravailService.getMaxID().Rows[0][0]).ToString();
            if (test == null || test == "")
            {
                ijourtravail.IdJourTravail = 1;
            }
            else
            {
                ijourtravail.IdJourTravail = Convert.ToInt32(JourTravailService.getMaxID().Rows[0][0]) + 1;
            }
            ijourtravail.Date = "";
            ijourtravail.Jour = "";

            ijourtravail.btnSave = false;
            ijourtravail.btnDelete = false;
            ijourtravail.btnDeleteAll = false;
            ijourtravail.btnNew = true;

        }
        public void getRow(int row)
        {
            // نعرق طابل 
            DataTable tbl = new DataTable();
            // البيانات التي عندا وضعتاها في طابل
            tbl = JourTravailService.getAllData();

            ijourtravail.IdJourTravail = Convert.ToInt32(tbl.Rows[row][0]);
            ijourtravail.Date = Convert.ToString(tbl.Rows[row][1]);
            ijourtravail.Jour = Convert.ToString(tbl.Rows[row][2]);


            ijourtravail.btnSave = true;
            ijourtravail.btnDelete = true;
            ijourtravail.btnDeleteAll = true;
            ijourtravail.btnNew = false;
        }
        public DataTable getLastRow()
        {
            // نعرق طابل 
            DataTable tbl = new DataTable();
            // البيانات التي عندا وضعتاها في طابل
            tbl = JourTravailService.getLastRow();
            return tbl;
        }
    }

}

