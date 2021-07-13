<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="request-section.aspx.cs" Inherits="TUP_Laboratorio_3_Tp_Final.request_section" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <!-- Bootstrap CSS -->
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
      integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
      crossorigin="anonymous"
    />

    <!-- Favicon-->
    <link rel="shortcut icon" href="./../images/favicon/shopping.png" />

    <!-- CSS File -->
    <link rel="stylesheet" href="./../css/style.css" />

    <!-- JQuerry-->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

    <!-- JavaScript File -->
    <script defer src="./../js/request-script.js"></script>

    <title>La Utileria</title>
</head>
<body>
    <!-- Nav Bar -->
    <nav class="navbar navbar-expand-md navbar-dark bg-dark">
      <button
        class="navbar-toggler"
        type="button"
        data-toggle="collapse"
        data-target="#navbarNav"
        aria-controls="navbarNav"
        aria-expanded="false"
        aria-label="Toggle navigation"
      >
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-dark navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
          <li class="nav-item active">
            <a class="nav-link active" href="./../../index.aspx" id="home"
              >Home</a
            >
          </li>
          <li class="nav-item">
            <a
              class="nav-link active"
              href="./offers-section.aspx"
              id="offers-section"
              >Ofertas</a
            >
          </li>
          <li class="nav-item">
            <a class="nav-link active" href="#" id="request-section"
              >Solicitar producto</a
            >
          </li>
          <li class="nav-item">
            <a
              class="nav-link active"
              href="./products-section.aspx"
              id="products-section"
              >Productos</a
            >
          </li>
          <li class="nav-item">
            <a
              class="nav-link active"
              href="./contact-section.aspx"
              id="contact-section"
              >Contacto</a
            >
          </li>
        </ul>
      </div>
    </nav>

    <form id="form1" runat="server">
        <!-- Main HTML -->
        <main class="mt-4">
            <!-- Solicitar Productos Section -->
            <div class="solicitarProudctos pagina">
                <!-- Banner -->
                <div class="container-fluid my-4 p-4 banner--titulo">
                    <h4 class="text-center display-4">Personalizado</h4>
                </div>

                <div class="container">
                    
                    <div class="m-4" id="formRequest">
                        <div class="mb-3 form-group">
                            <label for="inputEmail" cssClass="form-label" class="text-white bg-dark rounded p-1 px-2">Correo Electronico</label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Type="Email" Display="Dynamic" runat="server" ErrorMessage="Campo Obligatorio." ControlToValidate="inputEmail" cssClass="bg-warning rounded p-1 px-2" ></asp:RequiredFieldValidator>
                            <asp:TextBox ID="inputEmail" TextMode="Email" runat="server" cssClass="form-control danger" ></asp:TextBox>
                        </div>
                    
                        <div class="form-group">
                            <label for="sizeInput" class="text-white bg-dark rounded p-1 px-2">Talle</label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" Display="Dynamic" runat="server" ErrorMessage="Campo Obligatorio." ControlToValidate="sizeInput" cssClass="bg-warning rounded p-1 px-2" ></asp:RequiredFieldValidator>
                            <asp:DropDownList ID="sizeInput" runat="server" cssClass="form-control">
                                <asp:ListItem Text="XS" Value="XS"></asp:ListItem>
                                <asp:ListItem Text="S" Value="S"></asp:ListItem>
                                <asp:ListItem Text="M" Value="M"></asp:ListItem>
                                <asp:ListItem Text="L" Value="L"></asp:ListItem>
                                <asp:ListItem Text="XL" Value="XL"></asp:ListItem>
                            </asp:DropDownList>
                        </div>

                        <div class="form-group">
                            <label for="typeInput" class="text-white bg-dark rounded p-1 px-2">Tipo de Prenda</label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" Display="Dynamic" runat="server" ErrorMessage="Campo Obligatorio." ControlToValidate="typeInput" cssClass="bg-warning rounded p-1 px-2" ></asp:RequiredFieldValidator>
                            <asp:DropDownList ID="typeInput" runat="server" cssClass="form-control">
                                <asp:ListItem Text="Remera" Value="Remera"></asp:ListItem>
                                <asp:ListItem Text="Musculosa" Value="Musculosa"></asp:ListItem>
                                <asp:ListItem Text="Campera" Value="Campera"></asp:ListItem>
                                <asp:ListItem Text="Pantalones" Value="Pantalones"></asp:ListItem>
                                <asp:ListItem Text="Shorts" Value="Shorts"></asp:ListItem>
                            </asp:DropDownList>
                        </div>

                        <div class="form-group">
                            <label for="inputMessagge" class="text-white bg-dark rounded p-1 px-2">Que quieres que contenga tu prenda?</label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" Display="Dynamic" runat="server" ErrorMessage="Campo Obligatorio." ControlToValidate="inputMessagge" cssClass="bg-warning rounded p-1 px-2" ></asp:RequiredFieldValidator>
                            <asp:TextBox ID="inputMessagge" TextMode="MultiLine" rows="3" runat="server" cssClass="form-control" ></asp:TextBox>
                        </div>
                        <asp:Button ID="buttonSubmitForm" runat="server" cssClass="btn btn-primary disabled" Text="Enviar" />
                  </div>
                </div>
            </div>
        </main>

    <!-- Submit Modal -->
    <div
        class="modal fade show"
        id="submitModal"
        tabindex="-1"
        role="dialog"
        aria-hidden="true"
    >
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="confirmacionSubmit">Enviado!</h5>
                <button
                    type="button"
                    class="close"
                    id="closeModal"
                    data-dismiss="modal"
                    aria-label="Close"
                >
                <span aria-hidden="true">&times;</span>
                </button>
            </div>
        </div>
    </div>
</div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script
      src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
      integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
      integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
      integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
      crossorigin="anonymous"
    ></script>
    </form>

    </body>
</html>
