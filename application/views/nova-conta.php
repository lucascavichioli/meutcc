<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?><!DOCTYPE html>
<html lang="en">

<head>
	<title>SISTEMA DE ANÁLISE DE INDICADORES</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="<?=base_url("public/images/icons/favicon.ico")?>">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?=base_url("public/vendor/bootstrap/css/bootstrap.min.css")?>">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?=base_url("public/fonts/font-awesome-4.7.0/css/font-awesome.min.css")?>">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?=base_url("public/vendor/animate/animate.css")?>">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="<?=base_url("public/vendor/css-hamburgers/hamburgers.min.css")?>">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?=base_url("public/vendor/select2/select2.min.css")?>">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<?=base_url("public/css/util.css")?>">
	<link rel="stylesheet" type="text/css" href="<?=base_url("public/css/main.css")?>">
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-background100">
			<div class="cadastro100-form">
                        <span class="cadastro100-form-title">
                            NOVA CONTA
                        </span>
                        <div class="container-cadastro100-form-btn">
                                <button type="submit" class="cadastro100-form-btn" onclick="location.href='<?=base_url('novaconta/contabilidade');?>'">
                                    CONTABILIDADE
                                </button>
                                <button class="cadastro100-form-btn" onclick="location.href='<?=base_url('novaconta/contador');?>'">
                                    CONTADOR
                                </button>
                        </div>
            </div>
        </div>
    </div>
