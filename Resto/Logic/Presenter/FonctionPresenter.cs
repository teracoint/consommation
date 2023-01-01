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
    class FonctionPresenter
    {
        // // ناخد نسخة من IEtablissement
        IFonction ifonction;
        // تاخد instance 
        FonctiontModel fonctioModel = new FonctiontModel();

        // الفائدة من كونسركثور اول ما يتم استدعاء الكلاص هادي اول كود يتنفد هو كوسيكثور
         public FonctionPresenter(IFonction view)
        {
            this.ifonction = view;
        }

        private void connectBetweenModelInterface()
        {
            fonctioModel.IdFonction = ifonction.IdFonction;
            fonctioModel.DesFonction = ifonction.DesFonction;
            fonctioModel.PrixPetDej = ifonction.PrixPetDej;
            fonctioModel.PrixDej = ifonction.PrixDej;
            fonctioModel.PrixGouter = ifonction.PrixGouter;
            fonctioModel.PrixDiner = ifonction.PrixDiner;
           
        }

        public bool FonctionInsert()
        {
            connectBetweenModelInterface();
            bool check= FonctionService.fonctionInsert(fonctioModel.IdFonction, fonctioModel.DesFonction, fonctioModel.PrixPetDej,
               fonctioModel.PrixDej, fonctioModel.PrixGouter, fonctioModel.PrixDiner);
            getAllData();
            AutoNumber();
            return check;
        }

        // دالة التحدبث

        public bool FonctionUpdate()
        {
            connectBetweenModelInterface();
            bool check = FonctionService.fonctionUpdate(fonctioModel.IdFonction, fonctioModel.DesFonction, fonctioModel.PrixPetDej,
               fonctioModel.PrixDej, fonctioModel.PrixGouter, fonctioModel.PrixDiner);
            getAllData();
            AutoNumber();
            return check;
        }
        // دالة الحدف
        public bool FonctionDelete()
        {
            connectBetweenModelInterface();
            bool check = FonctionService.fonctionDelete(fonctioModel.IdFonction);
            getAllData();
            AutoNumber();
            return check;
        }
        // دالة حدف الكل
        public bool fonctionDeleteAll()
        {
            connectBetweenModelInterface();
            bool check = FonctionService.fonctionDeleteAll();
            getAllData();
            AutoNumber();
            return check;
        }

        public void ClearFields()
        {
           // connectBetweenModelInterface();
            ifonction.IdFonction = 0;
            ifonction.DesFonction = "";
            ifonction.PrixPetDej = 0;
            ifonction.PrixDej= 0;
            ifonction.PrixGouter = 0;
           
        }
        // دالة select
        public void getAllData()
        {
            //connectBetweenModelInterface();
            ifonction.dataGridView = FonctionService.getAllData();
            ClearFields();
        }
        public void AutoNumber()
        {
            string test = (FonctionService.getMaxID().Rows[0][0]).ToString();
            if (test == null || test == "")
            {
                ifonction.IdFonction = 1;
            }
            else
            {
                ifonction.IdFonction = Convert.ToInt32(FonctionService.getMaxID().Rows[0][0]) + 1;
            }
            ifonction.DesFonction = "";
            ifonction.PrixPetDej = 0;
            ifonction.PrixDej = 0;
            ifonction.PrixGouter = 0;

            ifonction.btnSave = false;
            ifonction.btnDelete = false;
            ifonction.btnDeleteAll = false;
            ifonction.btnNew = true;

        }
        public void getRow(int row)
        {
            // نعرق طابل 
            DataTable tbl = new DataTable();
            // البيانات التي عندا وضعتاها في طابل
            tbl = FonctionService.getAllData();

            ifonction.IdFonction = Convert.ToInt32(tbl.Rows[row][0]);
            ifonction.DesFonction = Convert.ToString(tbl.Rows[row][1]);
            ifonction.PrixPetDej = Convert.ToInt32(tbl.Rows[row][2]);
            ifonction.PrixDej = Convert.ToInt32(tbl.Rows[row][3]);
            ifonction.PrixGouter = Convert.ToInt32(tbl.Rows[row][4]);
            ifonction.PrixDiner = Convert.ToInt32(tbl.Rows[row][5]);


            ifonction.btnSave = true;
            ifonction.btnDelete = true;
            ifonction.btnDeleteAll = true;
            ifonction.btnNew = false;

        }
        public DataTable getLastRow()
        {
            // نعرق طابل 
            DataTable tbl = new DataTable();
            // البيانات التي عندا وضعتاها في طابل
            tbl = FonctionService.getLastRow();
            return tbl;
        }
    }
    
}
