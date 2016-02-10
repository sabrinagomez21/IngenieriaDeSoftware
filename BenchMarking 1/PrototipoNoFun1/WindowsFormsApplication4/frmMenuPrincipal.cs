using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApplication4
{
    public partial class frmMenuPrincipal : Form
    {
        public frmMenuPrincipal()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void pagosToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void profesorToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void alumnosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmAlumnos f = new frmAlumnos();
            f.Show();
            
        }

        private void empleadosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmEmpleado f = new frmEmpleado();
            f.Show();
        }

        private void familiaresToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmFamiliares f = new frmFamiliares();
            f.Show();
        }

        private void cargosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmCargos f = new frmCargos();
            f.Show();
        }

        private void salonesToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmSalones f = new frmSalones();
            f.Show();
        }

        private void cursosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmCursos f = new frmCursos();
            f.Show();
        }

        private void parqueosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmParqueos f = new frmParqueos();
            f.Show();
        }

        private void laboratoriosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmLaboratorios f = new frmLaboratorios();
            f.Show();
        }

        private void pensumToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmPensum f = new frmPensum();
            f.Show();
        }

        private void sedesToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmSedes f = new frmSedes();
            f.Show();
        }

        private void catedraticoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmNotasCatedraticos f = new frmNotasCatedraticos();
            f.Show();
        }

        private void alumnoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmNotasAlumno f = new frmNotasAlumno();
            f.Show();
        }

        private void asignacionOrdinariaToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmAsignacion f = new frmAsignacion();
            f.Show();
        }

        private void reasignacionesToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmReasignacion f = new frmReasignacion();
            f.Show();
        }

        private void emisionDeRecibosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmRecibos f = new frmRecibos();
            f.Show();
        }

        private void pagoEmpleadosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmPagoEmp f = new frmPagoEmp();
            f.Show();
        }

        private void solvenciasToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmSolvencias f = new frmSolvencias();
            f.Show();
        }

        private void certificacionesToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmCertificado f = new frmCertificado();
            f.Show();
        }

        private void talonarioToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmTalonario f = new frmTalonario();
            f.Show();
        }

        private void pagosPendientesToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmPagosPend f = new frmPagosPend();
            f.Show();
        }


    }
}
