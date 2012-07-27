using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ServicioProyectoCliente;
using System.Data.SqlClient;
using System.Data;
public partial class Pages_Equipos : System.Web.UI.Page
{
    ServicioProyectoCliente.IService sr;
    SqlConnection cn = new SqlConnection("server=.;database=Comercial2012;uid=sa;pwd=sql");
    
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void btnBuscar_Click(object sender, EventArgs e)
    {
        DataSet ds = sr.findInstrumento(txtCodigo.Text);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    protected void btnAgregar_Click(object sender, EventArgs e)
    {
        try
        {
            cn.Open();
            SqlCommand q = new SqlCommand("insert into Instrumentos values (@cod,@nom,@fecini,@fecgar,@est);", cn);
            q.Parameters.Add("@cod", SqlDbType.VarChar).Value = txtCodigo;
            q.Parameters.Add("@nom", SqlDbType.VarChar).Value = txtnom;
            q.Parameters.Add("@fecini", SqlDbType.Date).Value = datetimer.SelectedDate;
            q.Parameters.Add("fecgar", SqlDbType.Date).Value = datetimer2.SelectedDate;
            q.Parameters.Add("@est", SqlDbType.Int).Value = cboestado.SelectedValue;
            q.ExecuteNonQuery();
        }
        catch(Exception) {
            txtCodigo.Text = "RELLENE LOS CAMPOS VACIOS";
            txtnom.Text = "RELLENE LOS CAMPOS VACIOS";
        }
        finally { 
            cn.Close();
        }
    }

    protected void btnActualizar_Click(object sender, EventArgs e)
    {
        try
        {
            cn.Open();
            SqlCommand q = new SqlCommand("Update Instrumentos"+
                                           "set codigo = @cod,"+
                                           "descripcion = @nom,"+
                                           "feccompra = @fecini,"+
                                           "fecgarantia = @fecgar,"
                                           +"id_estado = @est"+
                                           "where codigo = @cod;", cn);
            q.Parameters.Add("@cod", SqlDbType.VarChar).Value = txtCodigo;
            q.Parameters.Add("@nom", SqlDbType.VarChar).Value = txtnom;
            q.Parameters.Add("@fecini", SqlDbType.Date).Value = datetimer.SelectedDate;
            q.Parameters.Add("fecgar", SqlDbType.Date).Value = datetimer2.SelectedDate;
            q.Parameters.Add("@est", SqlDbType.Int).Value = cboestado.SelectedValue;
            q.ExecuteNonQuery();
        }
        catch (Exception)
        {
            txtCodigo.Text = "RELLENE LOS CAMPOS VACIOS";
            txtnom.Text = "RELLENE LOS CAMPOS VACIOS";
        }
        finally
        {
            cn.Close();
        }
    }
    protected void btnSalir_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //moviendo datos
        txtCodigo.Text = GridView1.SelectedRow.Cells[0].Text;
        txtnom.Text = GridView1.SelectedRow.Cells[1].Text ;
        datetimer.SelectedDate = DateTime.Parse(GridView1.SelectedRow.Cells[2].Text); 
        datetimer2.SelectedDate = DateTime.Parse(GridView1.SelectedRow.Cells[3].Text);
        cboestado.SelectedValue = GridView1.SelectedRow.Cells[4].Text;
    }
}