<div class="main-panel" id="main-panel">
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-transparent  bg-primary  navbar-absolute">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <div class="navbar-toggle">
              <button type="button" class="navbar-toggler">
                <span class="navbar-toggler-bar bar1"></span>
                <span class="navbar-toggler-bar bar2"></span>
                <span class="navbar-toggler-bar bar3"></span>
              </button>
            </div>
            <h6><?=$tituloGrafico ?? ''?></h6>
          </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
          </button>
          <div class="collapse navbar-collapse justify-content-end" id="navigation">
            <ul class="navbar-nav">
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="far fa-user"></i>
                  <p>
                    <span class="d-lg-none d-md-block">Some Actions</span>
                  </p>
                </a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                  <a class="dropdown-item" href="#">Alterar senha</a>
                  <a class="dropdown-item" href="#">Dados cadastrais</a>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </nav>
      <!-- End Navbar -->
      <div class="panel-header panel-header-<?php if(empty($grafico)){print "sm";}else{print "md";}?>">
        <?=$grafico ?? ''?>
        <?php 
        if(!empty($indicesComparados)){ ?>
        <div class="title col-md-12">
          <div class="row">
            <div class="title col-md-4" style="color:white">
              Empresas comparadas: <?php print $indicesComparados ?? ''?>
            </div>
            <div class="title col-md-4" style="color:white">
              CNAE: <?php print $cnae ?? ''?>
            </div>
            <div class="title col-md-4" style="color:white">
              Estado: <?php print $uf ?? ''?>
            </div>
          </div>
        </div>
        <?php }
        ?>
      </div>