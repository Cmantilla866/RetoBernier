using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class SubirDatos : System.Web.UI.Page
    {
        SqlConnection sqlCon = new SqlConnection(@"Data Source=(localdb)\Usuario;Initial Catalog=GooglePlayStore;Integrated Security=true;");
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                string ext = Path.GetExtension(FileUpload1.FileName);
                ext = ext.ToLower();
                if (ext == ".csv")
                {
                    FileUpload1.SaveAs(Server.MapPath("~/CSVData/"+FileUpload1.FileName));
                }
                string[] lineas = File.ReadAllLines("C:/Users/Usuario/source/repos/WebApplication2/WebApplication2/CSVData/"+ FileUpload1.FileName);
                Label1.Text = lineas.Length.ToString();
                for (int i = 1; i < lineas.Length; i++)
                {
                    lineas[i] = lineas[i].Replace(",00","00");
                    lineas[i] = lineas[i].Replace(", 20", ". 20");
                    lineas[i] = lineas[i].Replace("\"", ".");
                    var valores = lineas[i].Split(',');
                    if (sqlCon.State == ConnectionState.Closed)
                        sqlCon.Open();
                    SqlCommand sqlCmd = new SqlCommand("CreateOrUpdate", sqlCon);
                    sqlCmd.CommandType = CommandType.StoredProcedure;
                    sqlCmd.Parameters.AddWithValue("@AppID", 0);
                    if (valores.Length <= 13)
                    {
                        sqlCmd.Parameters.AddWithValue("@App", valores[0].Trim());
                        sqlCmd.Parameters.AddWithValue("@Category", valores[1].Trim());
                        sqlCmd.Parameters.AddWithValue("@Rating", valores[2].Trim());
                        sqlCmd.Parameters.AddWithValue("@Reviews", valores[3].Trim());
                        sqlCmd.Parameters.AddWithValue("@Size", valores[4].Trim());
                        sqlCmd.Parameters.AddWithValue("@Installs", valores[5].Trim());
                        sqlCmd.Parameters.AddWithValue("@Type", valores[6].Trim());
                        sqlCmd.Parameters.AddWithValue("@Price", valores[7].Trim());
                        sqlCmd.Parameters.AddWithValue("@Content_Rating", valores[8].Trim());
                        sqlCmd.Parameters.AddWithValue("@Genres", valores[9].Trim());
                        sqlCmd.Parameters.AddWithValue("@Last_Updated", valores[10].Trim());
                        sqlCmd.Parameters.AddWithValue("@Current_Ver", valores[11].Trim());
                        if (valores.Length == 13)
                            sqlCmd.Parameters.AddWithValue("@Android_Ver", valores[12].Trim());
                        else
                            sqlCmd.Parameters.AddWithValue("@Android_Ver", "");
                    }
                    else
                    {
                        sqlCmd.Parameters.AddWithValue("@App", valores[0].Trim()+valores[1].Trim());
                        sqlCmd.Parameters.AddWithValue("@Category", valores[2].Trim());
                        sqlCmd.Parameters.AddWithValue("@Rating", valores[3].Trim());
                        sqlCmd.Parameters.AddWithValue("@Reviews", valores[4].Trim());
                        sqlCmd.Parameters.AddWithValue("@Size", valores[5].Trim());
                        sqlCmd.Parameters.AddWithValue("@Installs", valores[6].Trim());
                        sqlCmd.Parameters.AddWithValue("@Type", valores[7].Trim());
                        sqlCmd.Parameters.AddWithValue("@Price", valores[8].Trim());
                        sqlCmd.Parameters.AddWithValue("@Content_Rating", valores[9].Trim());
                        sqlCmd.Parameters.AddWithValue("@Genres", valores[10].Trim());
                        sqlCmd.Parameters.AddWithValue("@Last_Updated", valores[11].Trim());
                        sqlCmd.Parameters.AddWithValue("@Current_Ver", valores[12].Trim());
                        sqlCmd.Parameters.AddWithValue("@Android_Ver", valores[13].Trim());
                    }
                    sqlCmd.ExecuteNonQuery();
                    sqlCon.Close();
                }
                Label1.Text = "Registros agregados Exitosamente";
            }
        }

        
    }
}