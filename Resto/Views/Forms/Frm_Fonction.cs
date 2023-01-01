using DevExpress.XtraEditors;
using Resto.Logic.Presenter;
using Resto.Views.Interface;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Resto.Views.Forms
{
    public partial class Frm_Fonction : DevExpress.XtraEditors.XtraForm, IFonction
    {
        FonctionPresenter foncPresenter;

        public Frm_Fonction()
        {
            InitializeComponent();
            foncPresenter = new FonctionPresenter(this);
        }

        public int IdFonction { get => Convert.ToInt32(txtID.Text); set => txtID.Text = value.ToString(); }
        public string DesFonction { get => Convert.ToString(txtFonction.Text); set => txtFonction.Text = value.ToString(); }
        public int PrixPetDej { get => Convert.ToInt32(txtPrixPDej.Text); set => txtPrixPDej.Text = value.ToString(); }
        public int PrixDej { get => Convert.ToInt32(txtPrixDej.Text); set => txtPrixDej.Text = value.ToString(); }
        public int PrixGouter { get => Convert.ToInt32(txtPrixGouter.Text); set => txtPrixGouter.Text = value.ToString(); }
        public int PrixDiner { get => Convert.ToInt32(txtPrixDiner.Text); set => txtPrixDiner.Text = value.ToString(); }
        public object dataGridView { get => Dgv.DataSource; set => Dgv.DataSource = value; }
        int IFonction.row { get => row; set => row = value; }
        object IFonction.btnNew { get => btnNew.Enabled; set => btnNew.Enabled = Convert.ToBoolean(value); }
        object IFonction.btnAdd { get => btnAdd.Enabled; set => btnAdd.Enabled = Convert.ToBoolean(value); }
        object IFonction.btnSave { get => btnSave.Enabled; set => btnSave.Enabled = Convert.ToBoolean(value); }
        object IFonction.btnDelete { get => btnDelete.Enabled; set => btnDelete.Enabled = Convert.ToBoolean(value); }
        object IFonction.btnDeleteAll { get => btnDeleteAll.Enabled; set => btnDeleteAll.Enabled = Convert.ToBoolean(value); }

        int row = 0;

        private void Frm_Fonction_Load(object sender, EventArgs e)
        {
            foncPresenter.getAllData();
            foncPresenter.AutoNumber();
        }

        private void btnNew_Click(object sender, EventArgs e)
        {
            foncPresenter.ClearFields();
            foncPresenter.AutoNumber();
        }

        private void btnAdd_Click(object sender, EventArgs e)
        {
            if (txtFonction.Text == "" || txtPrixPDej.Text == "" || txtPrixDej.Text == "" || txtPrixGouter.Text == "" ||
                txtPrixDiner.Text == "")
            {
                MessageBox.Show("من فظلك المعلومات الناقصة", "تأكيد", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }

            bool check = foncPresenter.FonctionInsert();
            if (check)
            {
                MessageBox.Show("تمت الإصافة بنجاح");
            }
            else
            {
                MessageBox.Show("فشل في عملية الإضافة");
            }
        }

        private void btnEdit_Click(object sender, EventArgs e)
        {
            
        }

        private void btnDelete_Click(object sender, EventArgs e)
        {
            bool check = foncPresenter.FonctionDelete();
            if (check)
            {
                MessageBox.Show("تم الحدف بنجاح");
            }
            else
            {
                MessageBox.Show("فشل في عمليةالحدف");
            }
        }

        private void btnDeleteAll_Click(object sender, EventArgs e)
        {
            bool check = foncPresenter.fonctionDeleteAll();
            if (check)
            {
                MessageBox.Show("تم حدف الكل بنجاح");
            }
            else
            {
                MessageBox.Show("فشل في عملية الحدف");
            }
        }

        private void btnFrist_Click(object sender, EventArgs e)
        {
            row = 0;
            foncPresenter.getRow(row);
        }

        private void btnPrevious_Click(object sender, EventArgs e)
        {
            int countRow = Convert.ToInt32(foncPresenter.getLastRow().Rows[0][0]) - 1;
            if (row == 0)
            {
                row = countRow;
            }
            else
            {
                row = row - 1;
            }

            foncPresenter.getRow(row);
        }

        private void btnNext_Click(object sender, EventArgs e)
        {
            try
            {
                int countRow = Convert.ToInt32(foncPresenter.getLastRow().Rows[0][0]);
                if (countRow == row)
                {
                    row = 0;
                }
                else
                {
                    row = row + 1;
                }
                foncPresenter.getRow(row);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void btnLast_Click(object sender, EventArgs e)
        {
            try
            {
                int countRow = Convert.ToInt32(foncPresenter.getLastRow().Rows[0][0]) - 1;
                row = countRow;
                foncPresenter.getRow(row);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            if (txtFonction.Text == "" || txtPrixPDej.Text == "" || txtPrixDej.Text == "" || txtPrixGouter.Text == "" ||
                txtPrixDiner.Text == "" )
            {
                MessageBox.Show("من فظلك المعلومات الناقصة", "تأكيد", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }

            bool check = foncPresenter.FonctionUpdate();
            if (check)
            {
                MessageBox.Show("تم التعديل بنجاح");
            }
            else
            {
                MessageBox.Show("فشل في عمليةالتعديل");
            }
        }
    }
}