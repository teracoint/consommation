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
    public partial class Frm_MenuJour : DevExpress.XtraEditors.XtraForm, IMenuJour
    {
        MenuJourPresenter menujourPresenter;

        public Frm_MenuJour()
        {
            InitializeComponent();
            menujourPresenter = new MenuJourPresenter(this);
        }

        public int IdMenuJour { get => Convert.ToInt32(txtID.Text); set => txtID.Text = value.ToString(); }
        public int IdJourTravail { get => Convert.ToInt32(cbxJourTravail.SelectedValue); set => cbxJourTravail.SelectedValue = value; }
        public string PetDej { get => Convert.ToString(txtPDej.Text); set => txtPDej.Text = value.ToString(); }
        public string Dej { get => Convert.ToString(txtDej.Text); set => txtDej.Text = value.ToString(); }
        public string Gouter { get => Convert.ToString(txtGouter.Text); set => txtGouter.Text = value.ToString(); }
        public string Diner { get => Convert.ToString(txtDiner.Text); set => txtDiner.Text = value.ToString(); }
        public int NbPetDej { get => Convert.ToInt32(txtNbPedj.Text); set => txtNbPedj.Text = value.ToString(); }
        public int NbDej { get => Convert.ToInt32(txtNbDej.Text); set => txtNbDej.Text = value.ToString(); }
        public int NbGouter { get => Convert.ToInt32(txtNbGouter.Text); set => txtNbGouter.Text = value.ToString(); }
        public int NbDiner { get => Convert.ToInt32(txtNbDiner.Text); set => txtNbDiner.Text = value.ToString(); }
        public object dataGridView { get => Dgv.DataSource; set => Dgv.DataSource = value; }
        object IMenuJour.cbxJourTravail { get => cbxJourTravail.DataSource; set => cbxJourTravail.DataSource = value; }
        int IMenuJour.row { get => row; set => row = value; }
        object IMenuJour.btnNew { get => btnNew.Enabled; set => btnNew.Enabled = Convert.ToBoolean(value); }
        object IMenuJour.btnAdd { get => btnAdd.Enabled; set => btnAdd.Enabled = Convert.ToBoolean(value); }
        object IMenuJour.btnSave { get => btnSave.Enabled; set => btnSave.Enabled = Convert.ToBoolean(value); }
        object IMenuJour.btnDelete { get => btnDelete.Enabled; set => btnDelete.Enabled = Convert.ToBoolean(value); }
        object IMenuJour.btnDeleteAll { get => btnDeleteAll.Enabled; set => btnDeleteAll.Enabled = Convert.ToBoolean(value); }
        

        int row = 0;

        private void Frm_MenuJour_Load(object sender, EventArgs e)
        {
            menujourPresenter.getAllData();
            menujourPresenter.AutoNumber();
        }

        private void btnNew_Click(object sender, EventArgs e)
        {
            menujourPresenter.ClearFields();
            menujourPresenter.AutoNumber();
        }

        private void btnAdd_Click(object sender, EventArgs e)
        {
            if (txtPDej.Text == "" || txtDej.Text == "" || txtGouter.Text == "" ||txtDiner.Text == "" || txtNbPedj.Text == "" ||
                txtNbDej.Text == "" || txtNbGouter.Text=="" || txtNbDiner.Text =="")
            {
                MessageBox.Show("من فظلك المعلومات الناقصة", "تأكيد", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }

            bool check = menujourPresenter.MenuJourInsert();
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
            bool check = menujourPresenter.MenuJourDelete();
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
            bool check = menujourPresenter.MenuJourDeleteAll();
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
            menujourPresenter.getRow(row);
        }

        private void btnPrevious_Click(object sender, EventArgs e)
        {
            int countRow = Convert.ToInt32(menujourPresenter.getLastRow().Rows[0][0]) - 1;
            if (row == 0)
            {
                row = countRow;
            }
            else
            {
                row = row - 1;
            }

            menujourPresenter.getRow(row);
        }

        private void btnNext_Click(object sender, EventArgs e)
        {
            try
            {
                int countRow = Convert.ToInt32(menujourPresenter.getLastRow().Rows[0][0]);
                if (countRow == row)
                {
                    row = 0;
                }
                else
                {
                    row = row + 1;
                }
                menujourPresenter.getRow(row);
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
                int countRow = Convert.ToInt32(menujourPresenter.getLastRow().Rows[0][0]) - 1;
                row = countRow;
                menujourPresenter.getRow(row);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            if (txtPDej.Text == "" || txtDej.Text == "" || txtGouter.Text == "" || txtDiner.Text == "" || txtNbPedj.Text == "" ||
                txtNbDej.Text == "" || txtNbGouter.Text == "" || txtNbDiner.Text == "")
            {
                MessageBox.Show("من فظلك المعلومات الناقصة", "تأكيد", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }

            bool check = menujourPresenter.MenuJourUpdate();
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