<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="TUP_Laboratorio_3_Tp_Final.index_section" %>

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
    <link rel="shortcut icon" href="./resources/images/favicon/shopping.png" />

    <!-- CSS File -->
    <link rel="stylesheet" href="./resources/css/style.css" />

    <!-- JQuerry-->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

    <!-- JavaScript File -->
    <script defer src="./resources/js/index-script.js"></script>

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
                <a class="nav-link active" href="#" id="home">Home</a>
              </li>
              <li class="nav-item">
                <a
                  class="nav-link active"
                  href="./resources/html/offers-section.aspx"
                  id="offers-section"
                  >Ofertas</a
                >
              </li>
              <li class="nav-item">
                <a
                  class="nav-link active"
                  href="./resources/html/request-section.aspx"
                  id="request-section"
                  >Solicitar producto</a
                >
              </li>
              <li class="nav-item">
                <a
                  class="nav-link active"
                  href="./resources/html/products-section.aspx"
                  id="products-section"
                  >Productos</a
                >
              </li>
              <li class="nav-item">
                <a
                  class="nav-link active"
                  href="./resources/html/contact-section.aspx"
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
            <!-- Home Section -->
            <div class="home pagina">
                <!-- Banner -->
                <div class="container-fluid p-4 mb-4 banner--titulo">
                    <h1 class="text-center display-1">La Utileria</h1>
                </div>
                <div>
                    <img src="./resources/images/home-banner.jpg" class="img--home" alt="Imagen del local"/>
                </div>
            </div>
        </main>
    </form>

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
</body>
</html>
