using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class _Default : Page
    {
        SqlConnection sqlCon = new SqlConnection(@"Data Source=(localdb)\Usuario;Initial Catalog=GooglePlayStore;Integrated Security=true;");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                Delete.Enabled = false;
                FillGridView();
            }
        }

        protected void Clear_Click(object sender, EventArgs e)
        {
            clear();
        }
        public void clear()
        {
            hfAppID.Value = "";
            App.Text = Category.Text = Rating.Text = Reviews.Text = Installs.Text = Size.Text = Type.Text = Price.Text = Content_Rating.Text = Genres.Text = Last_Updated.Text = Current_Ver.Text = Android_Ver.Text = "";
            SuccessMessage.Text = ErrorMessage.Text = "";
            Save.Text = "Guardar";
            Delete.Enabled = false;
        }

        protected void Save_Click(object sender, EventArgs e)
        {
            if (sqlCon.State == ConnectionState.Closed)
                sqlCon.Open();
            SqlCommand sqlCmd = new SqlCommand("CreateOrUpdate",sqlCon);
            sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.Parameters.AddWithValue("@AppID",hfAppID.Value==""?0:Convert.ToInt32(hfAppID.Value));
            sqlCmd.Parameters.AddWithValue("@App",App.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@Category", Category.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@Rating", Rating.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@Reviews", Reviews.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@Size", Size.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@Installs", Installs.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@Type", Type.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@Price", Price.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@Content_Rating", Content_Rating.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@Genres", Genres.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@Last_Updated", Last_Updated.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@Current_Ver", Current_Ver.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@Android_Ver", Android_Ver.Text.Trim());
            sqlCmd.ExecuteNonQuery();
            sqlCon.Close();
            string value = hfAppID.Value;
            clear();
            if (value == "")
                SuccessMessage.Text = "App se ha guardado existosamente";
            else
                SuccessMessage.Text = "App se ha actualizado existosamente";
            FillGridView();
        }
        void FillGridView()
        {
            if (sqlCon.State == ConnectionState.Closed)
                sqlCon.Open();
            SqlDataAdapter sqlDA = new SqlDataAdapter("ViewAll",sqlCon);
            sqlDA.SelectCommand.CommandType = CommandType.StoredProcedure;
            DataTable dt = new DataTable();
            sqlDA.Fill(dt);
            sqlCon.Close();
            gvApps.DataSource = dt;
            gvApps.DataBind();
        }
        protected void gvApps_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvApps.PageIndex = e.NewPageIndex;
            FillGridView();
        }
        protected void lnk_OnClick(object sender, EventArgs e)
        {
            int AppID = Convert.ToInt32((sender as LinkButton).CommandArgument);
            if (sqlCon.State == ConnectionState.Closed)
                sqlCon.Open();
            SqlDataAdapter sqlDA = new SqlDataAdapter("ViewById", sqlCon);
            sqlDA.SelectCommand.CommandType = CommandType.StoredProcedure;
            sqlDA.SelectCommand.Parameters.AddWithValue("@AppID", AppID);
            DataTable dt = new DataTable();
            sqlDA.Fill(dt);
            sqlCon.Close();
            hfAppID.Value = AppID.ToString();
            App.Text = dt.Rows[0]["App"].ToString();
            Category.Text = dt.Rows[0]["Category"].ToString();
            Rating.Text = dt.Rows[0]["Rating"].ToString();
            Reviews.Text = dt.Rows[0]["Reviews"].ToString();
            Size.Text = dt.Rows[0]["Size"].ToString();
            Installs.Text = dt.Rows[0]["Installs"].ToString();
            Type.Text = dt.Rows[0]["Type"].ToString();
            Price.Text = dt.Rows[0]["Price"].ToString();
            Content_Rating.Text = dt.Rows[0]["Content_Rating"].ToString();
            Genres.Text = dt.Rows[0]["Genres"].ToString();
            Last_Updated.Text = dt.Rows[0]["Last_Updated"].ToString();
            Current_Ver.Text = dt.Rows[0]["Current_Ver"].ToString();
            Android_Ver.Text = dt.Rows[0]["Android_Ver"].ToString();
            Save.Text = "Actualizar";
            Delete.Enabled = true;

        }

        protected void Delete_Click(object sender, EventArgs e)
        {
            if (sqlCon.State == ConnectionState.Closed)
                sqlCon.Open();
            SqlCommand sqlCmd = new SqlCommand("DeleteById", sqlCon);
            sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.Parameters.AddWithValue("@AppID", hfAppID.Value == "" ? 0 : Convert.ToInt32(hfAppID.Value));
            sqlCmd.ExecuteNonQuery();
            sqlCon.Close();
            clear();
            FillGridView();
            SuccessMessage.Text = "App eliminada correcamente";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (sqlCon.State == ConnectionState.Closed)
                sqlCon.Open();
            SqlDataAdapter sqlDA = new SqlDataAdapter("SELECT*From App where App like'"+TextBox2.Text+"%'", sqlCon);
            DataTable dt = new DataTable();
            sqlDA.Fill(dt);
            sqlCon.Close();
            gvApps.DataSource = dt;
            gvApps.DataBind();
        }
    }
}