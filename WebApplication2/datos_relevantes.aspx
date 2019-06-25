<%@ Page Title="Datos Relevantes" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="datos_relevantes.aspx.cs" Inherits="WebApplication2.datos_relevantes" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="p-3 mb-2 bg-dark text-white">
        <h1 class="display-1">Datos relevantes</h1>
    </div>
    
    <br />
    <div class="container p-3 mb-3  bg-info text-white">
        <div class="row no-gutters">
            <div class="col-md-5">
                <br />
                <asp:Image ID="Image10" runat="server" ImageUrl="~/RatingBox.png" CssClass="card-img" />
            </div>

            <div class="col-md-7">
                <h1 class="display-3">Rating</h1>
                <p class="card-text">El rating se refiere a la puntuación promedio que le han asignado los usuarios.
                    En los datos de prueba con los que se hicieron los modelos de predicción, se encontró que el rating variaba entre 1 y 5, con su mayor concentración de datos entre 4 y 4.5.
                    Además, el promedio de todos los rating fue de 4.18.
                </p>
                
            </div>
        </div>
    </div>
    <div class="container p-3 mb-3  bg-info text-white">
        <div class="row no-gutters">
            <div class="col-md-5">
                <br />
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Category.jpg" CssClass="card-img" />
            </div>

            <div class="col-md-7">
                <h1 class="display-3">Category</h1>
                <p class="card-text">Se refiere a la categoría en la que se encuentra en la Play Store.</p>
                <p class="card-text">Se tiene registro de un total de 33 categorías.</p>
                <p class="card-text">Entre este total de categorías de las que se tienen más registros son: Familia, de la cual se tienen más de 1600 registros; Juegos, de los que se tiene casi 1000 registros; y Herramientas, de las que se tiene aproximadamente 600 registros.</p>
                <p class="card-text">El resto de categorías tiene una cantidad considerablemente menor de registros a estas 3, indicando así que Familia, juegos y herramientas son las categorías más famosas en la Play Store.</p>
            </div>
        </div>
    </div>
    <div class="container p-3 mb-3  bg-info text-white">
        <div class="row no-gutters">
            <div class="col-md-7">
                <br />
                <asp:Image ID="Image2" runat="server" ImageUrl="~/Genres.png" CssClass="card-img" />
            </div>

            <div class="col-md-5">
                <h1 class="display-3">Genres</h1>
                <p class="card-text">Se refiere a los géneros de contenido de la app. Una app puede pertenecer a uno o varios géneros.</p>
                <p class="card-text">Con base en los datos de prueba se puede observar que hay 3 géneros que son bastante más populares que el resto, mostrando así la tendencia en popularidad de los generos en la Play Store</p>
                <br />
                <p class="card-text">Herramientas: 800+ registros</p>
                <p class="card-text">Educación: 700+ registros</p>
                <p class="card-text">Entretenimiento: 700+ registros</p>
            </div>
        </div>
    </div>
    <div class="container p-3 mb-3  bg-info text-white">
        <div class="row no-gutters">
            <div class="col-md-5">
                <br />
                <asp:Image ID="Image3" runat="server" ImageUrl="~/ContentRating.png" CssClass="card-img" />
            </div>

            <div class="col-md-7">
                <h1 class="display-3">Content Rating</h1>
                <p class="card-text">Es una clasificación del contenido que indica a que tipo de público está dirigida la app.</p>
                <p class="card-text">En los datos de prueba se encontró que la gran mayoría de aplicaciones están clasificadas para el uso de cualquier persona.</p>
                <p class="card-text">Por otro lado, se encontró que la segunda clasificación más popular es la de adolescente, con más del doble de registros que M17 y E10.</p>
                <p class="card-text">Por último se puede observar que las clasificaciones de solo adultos y las no clasificadas son casi nulas, con una cantidad muy baja de registros, por esto no se alcanza a ver en la gráfica</p>
            </div>
        </div>
    </div>
    <div class="container p-3 mb-3  bg-info text-white">
        <div class="row no-gutters">
            <div class="col-md-5">
                <br />
                <asp:Image ID="Image4" runat="server" ImageUrl="~/TypePie.png" CssClass="card-img" />
            </div>

            <div class="col-md-7">
                <h1 class="display-3">Type</h1>
                <p class="card-text">Se refiere a sí es gratis o es de pago.</p>
                <p class="card-text">En la muestra de datos se puede observar que la gran mayoría de apps son gratis.</p>
            </div>
        </div>
    </div>
    <div class="container p-3 mb-3  bg-info text-white">
        <div class="row no-gutters">
            <div class="col-md-5">
                <br />
                <asp:Image ID="Image5" runat="server" ImageUrl="~/PriceHist.png" CssClass="card-img" />
            </div>

            <div class="col-md-7">
                <h1 class="display-3">Price</h1>
                <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                
            </div>
        </div>
    </div>
    <div class="container p-3 mb-3  bg-info text-white">
        <div class="row no-gutters">
            <div class="col-md-5">
                <br />
                <asp:Image ID="Image6" runat="server" ImageUrl="~/ReviewsHist.png" CssClass="card-img" />
            </div>

            <div class="col-md-7">
                <h1 class="display-3">Reviews</h1>
                <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                
            </div>
        </div>
    </div>
    <div class="container p-3 mb-3  bg-info text-white">
        <div class="row no-gutters">
            <div class="col-md-5">
                <br />
                <asp:Image ID="Image7" runat="server" ImageUrl="~/InstallsHist.png" CssClass="card-img" />
            </div>

            <div class="col-md-7">
                <h1 class="display-3">Installs</h1>
                <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                
            </div>
        </div>
    </div>
    <div class="container p-3 mb-3  bg-info text-white">
        <div class="row no-gutters">
            <div class="col-md-5">
                <br />
                <asp:Image ID="Image8" runat="server" ImageUrl="~/SizeHist.png" CssClass="card-img" />
            </div>

            <div class="col-md-7">
                <h1 class="display-3">Size</h1>
                <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                
            </div>
        </div>
    </div>
    <div class="container p-3 mb-3  bg-info text-white">
        <div class="row no-gutters">
            <div class="col-md-5">
                <br />
                <asp:Image ID="Image9" runat="server" ImageUrl="~/LastUpdated.png" CssClass="card-img" />
            </div>

            <div class="col-md-7">
                <h1 class="display-3">Last Updated</h1>
                <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                
            </div>
        </div>
    </div>
    

</asp:Content>
