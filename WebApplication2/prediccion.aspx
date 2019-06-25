<%@ Page Title="Predicción" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="prediccion.aspx.cs" Inherits="WebApplication2.prediccion" Async="true" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <div>
        <table class="table table-hover table-info">
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Categoría en la tienda a la que pertenece"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:DropDownList ID="Category" runat="server">
                        <asp:ListItem>ART_AND_DESIGN</asp:ListItem>
                        <asp:ListItem>AUTO_AND_VEHICLES</asp:ListItem>
                        <asp:ListItem>BEAUTY</asp:ListItem>
                        <asp:ListItem>BOOKS_AND_REFERENCE</asp:ListItem>
                        <asp:ListItem>BUSINESS</asp:ListItem>
                        <asp:ListItem>COMICS</asp:ListItem>
                        <asp:ListItem>COMMUNICATION</asp:ListItem>
                        <asp:ListItem>DATING</asp:ListItem>
                        <asp:ListItem>EDUCATION</asp:ListItem>
                        <asp:ListItem>ENTERTAINMENT</asp:ListItem>
                        <asp:ListItem>EVENTS</asp:ListItem>
                        <asp:ListItem>FINANCE</asp:ListItem>
                        <asp:ListItem>FOOD_AND_DRINK</asp:ListItem>
                        <asp:ListItem>HEALTH_AND_FITNESS</asp:ListItem>
                        <asp:ListItem>HOUSE_AND_HOME</asp:ListItem>
                        <asp:ListItem>LIBRARIES_AND_DEMO</asp:ListItem>
                        <asp:ListItem>LIFESTYLE</asp:ListItem>
                        <asp:ListItem>GAME</asp:ListItem>
                        <asp:ListItem>FAMILY</asp:ListItem>
                        <asp:ListItem>MEDICAL</asp:ListItem>
                        <asp:ListItem>SOCIAL</asp:ListItem>
                        <asp:ListItem>SHOPPING</asp:ListItem>
                        <asp:ListItem>PHOTOGRAPHY</asp:ListItem>
                        <asp:ListItem>SPORTS</asp:ListItem>
                        <asp:ListItem>TRAVEL_AND_LOCAL</asp:ListItem>
                        <asp:ListItem>TOOLS</asp:ListItem>
                        <asp:ListItem>PERSONALIZATION</asp:ListItem>
                        <asp:ListItem>PRODUCTIVITY</asp:ListItem>
                        <asp:ListItem>PARENTING</asp:ListItem>
                        <asp:ListItem>WEATHER</asp:ListItem>
                        <asp:ListItem>VIDEO_PLAYERS</asp:ListItem>
                        <asp:ListItem>NEWS_AND_MAGAZINES</asp:ListItem>
                        <asp:ListItem>MAPS_AND_NAVIGATION</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>

            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Total de los reviews de usuarios de la app"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="Reviews" runat="server"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>
                    <asp:Label ID="Label13" runat="server" Text="Tamaño del app"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="Size" runat="server"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Total de veces que la app ha sido instalada"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="Installs" runat="server"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Tipo"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:DropDownList ID="Type" runat="server">
                        <asp:ListItem>Free</asp:ListItem>
                        <asp:ListItem>Paid</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>

            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="Precio de la aplicación"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="Price" runat="server"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>
                    <asp:Label ID="Label8" runat="server" Text="Grupo etareo al que apunta la aplicación"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:DropDownList ID="Content_Rating" runat="server">
                        <asp:ListItem>Everyone</asp:ListItem>
                        <asp:ListItem>Teen</asp:ListItem>
                        <asp:ListItem>Everyone 10+</asp:ListItem>
                        <asp:ListItem>Mature 17+</asp:ListItem>
                        <asp:ListItem>Adults only 18+</asp:ListItem>
                        <asp:ListItem>Unrated</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>

            <tr>
                <td>
                    <asp:Label ID="Label9" runat="server" Text="Géneros a los que pertenece la app"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:DropDownList ID="Genres" runat="server">
                        <asp:ListItem>Art & Design</asp:ListItem>
                        <asp:ListItem>Auto & Vehicles</asp:ListItem>
                        <asp:ListItem>Beauty</asp:ListItem>
                        <asp:ListItem>Books & Reference</asp:ListItem>
                        <asp:ListItem>Business</asp:ListItem>
                        <asp:ListItem>Comics</asp:ListItem>
                        <asp:ListItem>Communication</asp:ListItem>
                        <asp:ListItem>Dating</asp:ListItem>
                        <asp:ListItem>Education</asp:ListItem>
                        <asp:ListItem>Entertainment</asp:ListItem>
                        <asp:ListItem>Events</asp:ListItem>
                        <asp:ListItem>Finance</asp:ListItem>
                        <asp:ListItem>Food & Drink</asp:ListItem>
                        <asp:ListItem>Health & Fitness</asp:ListItem>
                        <asp:ListItem>House & Home</asp:ListItem>
                        <asp:ListItem>Libraries & Demo</asp:ListItem>
                        <asp:ListItem>Lifestyle</asp:ListItem>
                        <asp:ListItem>Adventure</asp:ListItem>
                        <asp:ListItem>Arcade</asp:ListItem>
                        <asp:ListItem>Casual</asp:ListItem>
                        <asp:ListItem>Card</asp:ListItem>
                        <asp:ListItem>Action</asp:ListItem>
                        <asp:ListItem>Strategy</asp:ListItem>
                        <asp:ListItem>Puzzle</asp:ListItem>
                        <asp:ListItem>Sports</asp:ListItem>
                        <asp:ListItem>Music</asp:ListItem>
                        <asp:ListItem>Word</asp:ListItem>
                        <asp:ListItem>Racing</asp:ListItem>
                        <asp:ListItem>Simulation</asp:ListItem>
                        <asp:ListItem>Board</asp:ListItem>
                        <asp:ListItem>Trivia</asp:ListItem>
                        <asp:ListItem>Role Playing</asp:ListItem>
                        <asp:ListItem>Educational</asp:ListItem>
                        <asp:ListItem>Music & Audio</asp:ListItem>
                        <asp:ListItem>Video Players & Editors</asp:ListItem>
                        <asp:ListItem>Medical</asp:ListItem>
                        <asp:ListItem>Social</asp:ListItem>
                        <asp:ListItem>Shopping</asp:ListItem>
                        <asp:ListItem>Photography</asp:ListItem>
                        <asp:ListItem>Travel & Local</asp:ListItem>
                        <asp:ListItem>Tools</asp:ListItem>
                        <asp:ListItem>Personalization</asp:ListItem>
                        <asp:ListItem>Productivity</asp:ListItem>
                        <asp:ListItem>Parenting</asp:ListItem>
                        <asp:ListItem>Weather</asp:ListItem>
                        <asp:ListItem>News & Magazines</asp:ListItem>
                        <asp:ListItem>Maps & Navigation</asp:ListItem>
                        <asp:ListItem>Casino</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>

            <tr>
                <td>
                    <asp:Label ID="Label10" runat="server" Text="Fecha de última actualización"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="Last_Updated" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        <asp:Button ID="Predecir" runat="server" Text="Predecir Rating" OnClick="Predecir_Click" CssClass="btn btn-primary btn-lg btn-block" />
        <br />
        <div class="p-3 mb-2 bg-success text-white">
            <asp:Label ID="modelo1" runat="server" Text="" Font-Size="Large"></asp:Label>
            <br />
            <asp:Label ID="modelo2" runat="server" Text="" Font-Size="Large"></asp:Label>
            <br />
            <asp:Label ID="modelo3" runat="server" Text="" Font-Size="Large"></asp:Label>
        </div>
    </div>

</asp:Content>
