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
    class MenuJourPresenter
    {
        // ناخد نسخة من interface
        IMenuJour imenujour;

        // تاخد instance 
        MenuJourModel menujourModel = new MenuJourModel();
        // الفائدة من كونسركثور اول ما يتم استدعاء الكلاص هادي اول كود يتنفد هو كوسيكثور
        public MenuJourPresenter(IMenuJour view)
        {
            this.imenujour = view;
        }
        private void connectBetweenModelInterface()
        {
            menujourModel.IdMenuJour = imenujour.IdMenuJour;
            menujourModel.IdJourTravail = imenujour.IdJourTravail;
            menujourModel.PetDej = imenujour.PetDej;
            menujourModel.Dej = imenujour.Dej;
            menujourModel.Gouter = imenujour.Gouter;
            menujourModel.Diner = imenujour.Diner;
            menujourModel.NbPetDej = imenujour.NbPetDej;
            menujourModel.NbDej = imenujour.NbDej;
            menujourModel.NbGouter = imenujour.NbGouter;
            menujourModel.NbDiner = imenujour.NbDiner;
            
        }
        public bool MenuJourInsert()
        {
            connectBetweenModelInterface();
            bool check = MenuJourService.menujourInsert(menujourModel.IdMenuJour,menujourModel.IdJourTravail, menujourModel.PetDej, menujourModel.Dej,
               menujourModel.Gouter, menujourModel.Diner, menujourModel.NbPetDej, menujourModel.NbDej, menujourModel.NbGouter, menujourModel.NbDiner);
            getAllData();
            AutoNumber();
            return check;
        }

        // دالة التحدبث

        public bool MenuJourUpdate()
        {
            connectBetweenModelInterface();
            bool check = MenuJourService.menujourUpdate(menujourModel.IdMenuJour, menujourModel.IdJourTravail, menujourModel.PetDej, menujourModel.Dej,
               menujourModel.Gouter, menujourModel.Diner, menujourModel.NbPetDej, menujourModel.NbDej, menujourModel.NbGouter, menujourModel.NbDiner);
            getAllData();
            AutoNumber();
            return check;
        }
        // دالة الحدف
        public bool MenuJourDelete()
        {
            connectBetweenModelInterface();
            bool check = MenuJourService.menujourDelete(menujourModel.IdMenuJour);
            getAllData();
            AutoNumber();
            return check;
        }
        // دالة حدف الكل
        public bool MenuJourDeleteAll()
        {
            connectBetweenModelInterface();
            bool check = MenuJourService.menujourDeleteAll();
            getAllData();
            AutoNumber();
            return check;
        }

        public void ClearFields()
        {
            //connectBetweenModelInterface();
            imenujour.IdMenuJour = 0;
            imenujour.IdJourTravail = 0;
            imenujour.PetDej = "";
            imenujour.Dej = "";
            imenujour.Gouter = "";
            imenujour.Diner = "";
            imenujour.NbPetDej = 0;
            imenujour.NbDej = 0;
            imenujour.NbGouter = 0;
            imenujour.NbDiner = 0;
          
        }
        // دالة select
        public void getAllData()
        {
            //connectBetweenModelInterface();
            imenujour.dataGridView = MenuJourService.getAllData();
            ClearFields();
        }
        public void AutoNumber()
        {
            string test = (MenuJourService.getMaxID().Rows[0][0]).ToString();
            if (test == null || test == "")
            {
                imenujour.IdMenuJour = 1;
            }
            else
            {
                imenujour.IdMenuJour = Convert.ToInt32(MenuJourService.getMaxID().Rows[0][0]) + 1;
            }
            imenujour.IdJourTravail = 0;
            imenujour.PetDej = "";
            imenujour.Dej = "";
            imenujour.Gouter = "";
            imenujour.Diner = "";
            imenujour.NbPetDej = 0;
            imenujour.NbDej = 0;
            imenujour.NbGouter = 0;
            imenujour.NbDiner = 0;
            imenujour.btnSave = false;
            imenujour.btnDelete = false;
            imenujour.btnDeleteAll = false;
            imenujour.btnNew = true;

        }
        public void getRow(int row)
        {
            // نعرق طابل 
            DataTable tbl = new DataTable();
            // البيانات التي عندا وضعتاها في طابل
            tbl = MenuJourService.getAllData();

            imenujour.IdMenuJour = Convert.ToInt32(tbl.Rows[row][0]);
            imenujour.IdJourTravail = Convert.ToInt32(tbl.Rows[row][1]);
            imenujour.PetDej = Convert.ToString(tbl.Rows[row][2]);
            imenujour.Dej = Convert.ToString(tbl.Rows[row][3]);
            imenujour.Gouter = Convert.ToString(tbl.Rows[row][4]);
            imenujour.Diner = Convert.ToString(tbl.Rows[row][5]);
            imenujour.NbPetDej =  Convert.ToInt32(tbl.Rows[row][6]);
            imenujour.NbDej = Convert.ToInt32(tbl.Rows[row][7]);
            imenujour.NbGouter = Convert.ToInt32(tbl.Rows[row][8]);
            imenujour.NbDiner = Convert.ToInt32(tbl.Rows[row][9]);
            imenujour.btnSave = true;
            imenujour.btnDelete = true;
            imenujour.btnDeleteAll = true;
            imenujour.btnNew = false;
        }
        public DataTable getLastRow()
        {
            // نعرق طابل 
            DataTable tbl = new DataTable();
            // البيانات التي عندا وضعتاها في طابل
            tbl = MenuJourService.getLastRow();
            return tbl;
        }
    }

}

