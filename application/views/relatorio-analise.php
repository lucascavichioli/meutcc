<div class="title col-md-12">
          <div class="row">
            
          </div>
        </div>
<div class="row">

</div>
<div class="content">
        <div class="row">
          <div class="col-md-12">
            <div class="card">
              <div class="card-header">
                <h4 class="card-title center">Análise - <?php print $empresa ?></h4>
                <div class="title col-md-4">
                    Empresas comparadas: <?php print $indicesComparados ?? ''?>
                </div>
                <div class="col-md-12" >
                    CNAE: <?php print $cnae ?? ''?> - <?php print $descricaoCnae ?? ''?>
                </div>
                <div class="col-md-4">
                    Estado: <?php print $uf ?? ''?>
                </div>
              </div>
                <div class="card-body">
                <div class="title col-md-8">
                 Notas: RUIM - SATISFATÓRIO - BOM - ÓTIMO
                </div>
                    <div class="table-responsive">
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                <th>Índice</th>
                                    <?php
                                        foreach ($anos as $ano) {
                                            print "<th>";
                                            print $ano;
                                            print "</th>";
                                        }
                                    ?>
                                </tr>
                            </thead>
                            <tbody>
                            <?php   
                                foreach ($comparativos as $i => $v) {
                                    print "<tr>";
                                    print "<td class='text-left' title=''>" . $i . "</td>";
                                        foreach ($v as $ano => $indice) {
                                            print "<td title='" . $indice['VALOR'] . "' onclick='modalQuartil(\"" . $indice['ind'] . $indice['ano'] . "\")'>";
                                                print $indice['POSICIONAMENTO'] . "(" . $indice['VALOR'] .")";
                                                ?>
                                                <div id="modalQuartil<?php print $indice['ind'].$indice['ano']; ?>" class="modal fade">
                                                    <div class="modal-dialog modal-md modal-dialog-centered">
                                                        <div class="modal-content">
                                                            <div class="modal-header text-center d-block">
                                                            <h4 class="modal-title">Índices padrão - <?php print $i . " / "; print $indice['ano'] ?? '';?></h4>
                                                            </div>
                                                            <div class="modal-body">
                                                                <div class='table-responsive'>
                                                                    <table class='table table-hover text-center'>
                                                                        <thead>
                                                                            <tr>
                                                                                <th>Q 1</th>
                                                                                <th>Q 2</th>
                                                                                <th>Q 3</th>
                                                                            </tr>
                                                                        </thead>
                                                                        <tbody>
                                                                            <tr>
                                                                                <td><strong><?=$indice['Q1'] ?? ''?></strong></td>
                                                                                <td><strong><?=$indice['Q2'] ?? ''?></strong></td>
                                                                                <td><strong><?=$indice['Q3'] ?? ''?></strong></td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            <?php print "</td>";
                                        }
                                    print "</tr>";
                                }                          
                            ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="content">
        <div class="row">
          <div class="col-md-12">
            <div class="card">
              <div class="card-header">
                <h4 class="card-title center">Índices para o ano anterior</h4>
              </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                <th>Índices - Ano Anterior</th>
                                    <?php
                                        foreach ($anosAnterior as $anoA) {
                                            print "<th>";
                                            print $anoA;
                                            print "</th>";
                                        }
                                    ?>
                                </tr>
                            </thead>
                            <tbody>
                            <?php   
                                foreach ($comparativosAnoAnterior as $i => $v) {
                                    print "<tr>";
                                    print "<td class='text-left' title='teste'>" . $i . "</td>";
                                        foreach ($v as $ano => $indice) {
                                            print "<td title='". $indice['VALOR'] . "' onclick='modalQuartil(\"" . $indice['ind'] . $indice['ano'] . "\")'>";
                                                print $indice['POSICIONAMENTO'] . "(" . $indice['VALOR'] .")";
                                        ?>
                                        <div id="modalQuartil<?php print $indice['ind'].$indice['ano']; ?>" class="modal fade">
                                                    <div class="modal-dialog modal-md modal-dialog-centered">
                                                        <div class="modal-content">
                                                            <div class="modal-header text-center d-block">
                                                            <h4 class="modal-title">Índices padrão - <?php print $i . " / "; print $indice['ano'] ?? '';?></h4>
                                                            </div>
                                                            <div class="modal-body">
                                                                <div class='table-responsive'>
                                                                    <table class='table table-hover text-center'>
                                                                        <thead>
                                                                            <tr>
                                                                                <th>Q 1</th>
                                                                                <th>Q 2</th>
                                                                                <th>Q 3</th>
                                                                            </tr>
                                                                        </thead>
                                                                        <tbody>
                                                                            <tr>
                                                                                <td><strong><?=$indice['Q1'] ?? ''?></strong></td>
                                                                                <td><strong><?=$indice['Q2'] ?? ''?></strong></td>
                                                                                <td><strong><?=$indice['Q3'] ?? ''?></strong></td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            <?php print "</td>";
                                        }
                                    print "</tr>";
                                }                          
                            ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<table>
    <thead>
    <tr>
        <th>
            Liquidez
        </th>
    </tr>
    </thead>
    <tbody>
        <tr>
            <td>LG = Líquidez Geral</td><td>LG = Líquidez Geral</td>
        </tr>
        <tr>
            <td>LG = Líquidez Geral</td>
        </tr>
    </tbody>
</table>