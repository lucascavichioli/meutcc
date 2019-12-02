<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Documentação - UnIndices</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/simple-sidebar.css" rel="stylesheet">

</head>

<body>

  <div class="d-flex" id="wrapper">

    <!-- Sidebar -->
    <div class="bg-light border-right" id="sidebar-wrapper">
      <div class="sidebar-heading">Documentação</div>
      <div class="list-group list-group-flush">
        <a href="cadastroempresa.php" class="list-group-item list-group-item-action bg-light">Adicionar Empresas</a>
        <a href="cadastrodadosfinanceiros.php" class="list-group-item list-group-item-action bg-light">Cadastro Financeiro</a>
        <a href="atualizarinformacoes.php" class="list-group-item list-group-item-action bg-light">Atualizar informações</a>
        <a href="alterarsenha.php" class="list-group-item list-group-item-action bg-light">Alterar senha</a>
        <a href="dadoscadastrais.php" class="list-group-item list-group-item-action bg-light">Dados Cadastrais</a>
        <a href="indices.php" class="list-group-item list-group-item-action bg-light">Índices Econômico-Financeiros</a>
        <a href="calculoanalise.php" class="list-group-item list-group-item-action bg-light">Cálculo - Análise</a>
      </div>
    </div>
    <!-- /#sidebar-wrapper -->

    <!-- Page Content -->
    <div id="page-content-wrapper">

      <nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom">
        <button class="btn btn-primary" id="menu-toggle">Exibir Menu</button>

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav ml-auto mt-2 mt-lg-0">
            <li class="nav-item active">
              <a class="nav-link" href="<?="http://localhost/tcc/"?>">Dashboard</a>
            </li>
          </ul>
        </div>
      </nav>

      <div class="container-fluid">
        <h1 class="mt-4">Cálculo utilizado para análise</h1>
        <p>Para a análise é realizado as seguintes etapas:</p>
        <ul>
            <li>1ª - Reservar os índices da empresa-cliente a ser analisada.</li>
            <li>2ª - Buscar índices das empresas com o mesmo CNAE(Geral), Estado e quantidade equivalente de colaboradores.</li>
            <li>3ª - Realizar o cálculo do Quartil.</li>
            <li>4ª - Classificar quanto aos índices-padrão gerados.</li>
        </ul>
        <p>Para realizar a classificação das empresas do mesmo ramo; o sistema leva em consideração o 
            mesmo Estado (UF), mesma categoria de CNAE e para a quantidade de colaboradores é 
            considerado um range de 50 colaboradores a cima ou a baixo da quantidade originária.</p>
        <p>Cálculo do Quartil:</p>
        
            <img src="http://localhost/tcc/public/images/calculo-quartil.png" alt="Cálculo Quartil">
        
      </div>
    </div>
    <!-- /#page-content-wrapper -->

  </div>
  <!-- /#wrapper -->

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Menu Toggle Script -->
  <script>
    $("#menu-toggle").click(function(e) {
      e.preventDefault();
      $("#wrapper").toggleClass("toggled");
    });
  </script>

</body>

</html>

