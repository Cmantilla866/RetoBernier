using Glimpse.Core.ClientScript;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Http.Headers;
using System.Threading.Tasks;
using Newtonsoft.Json;

namespace WebApplication2
{
    public partial class prediccion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Predecir_Click(object sender, EventArgs e)
        {
            string url = "https://apppredictor.herokuapp.com/predict?Reviews=" + Reviews.Text.Trim() + "&Size=" + Size.Text.Trim() + "&" +
                "Installs=" + Installs.Text.Trim() + "&Type=" + Type.Text.Trim() + "&Price=" + Price.Text.Trim() + "&Content_Rating=" + Content_Rating.Text.Trim() + "&" +
                "Last_Updated=" + Last_Updated.Text.Trim() + "&Category=" + Category.Text.Trim() + "&Genres=" + Genres.Text.Trim();
            Console.WriteLine(url);
            var json = new WebClient().DownloadString(url);
            dynamic p = JsonConvert.DeserializeObject(json);
            modelo1.Text = "Predicción con el modelo EpsilonSupportVectorRegression: " + p.EpsilonSupportVectorRegression;
            modelo2.Text = "Predicción con el modelo KNeighborsRegressor: " + p.KNeighborsRegressor;
            modelo3.Text = "Predicción con el modelo RandomForestRegressor: " + p.RandomForestRegressor;
        }
    }
}