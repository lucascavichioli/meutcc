-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 31-Out-2019 às 03:51
-- Versão do servidor: 5.6.45
-- versão do PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `mydb`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `anos`
--

CREATE TABLE `anos` (
  `ANO_ID` int(10) NOT NULL,
  `ANO_REF` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `anos`
--

INSERT INTO `anos` (`ANO_ID`, `ANO_REF`) VALUES
(2010, '2010'),
(2011, '2011'),
(2012, '2012'),
(2013, '2013'),
(2014, '2014'),
(2015, '2015'),
(2016, '2016'),
(2017, '2017'),
(2018, '2018');

-- --------------------------------------------------------

--
-- Estrutura da tabela `balanco_ativos`
--

CREATE TABLE `balanco_ativos` (
  `BATIV_ID` int(10) NOT NULL,
  `BATIV_ATIVO_CIRCULANTE` decimal(14,2) DEFAULT NULL,
  `BATIV_ESTOQUE` decimal(14,2) DEFAULT NULL,
  `BATIV_ATIVO_RLP` decimal(14,2) DEFAULT NULL COMMENT 'ATIVO REALIZÁVEL A LONGO PRAZO',
  `BATIV_INVESTIMENTOS` decimal(14,2) DEFAULT NULL,
  `BATIV_IMOB_INTANGIVEL` decimal(14,2) DEFAULT NULL COMMENT 'IMOBILIZADO INTANGÍVEL\n',
  `BATIV_ATIVO_TOTAL` decimal(14,2) DEFAULT NULL,
  `BATIV_ATIVO_NAO_CIRCULANTE` decimal(14,2) DEFAULT NULL,
  `BATIV_CAIXA_EQUIV_CAIXA` decimal(14,2) DEFAULT NULL,
  `BATIV_CLIENTES` decimal(14,2) DEFAULT NULL,
  `BATIV_OUTROS_ATIVOS_CIRCULANTES` decimal(14,2) DEFAULT NULL,
  `BATIV_EMP_ID` int(11) NOT NULL,
  `BATIV_ANO_ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `balanco_ativos`
--

INSERT INTO `balanco_ativos` (`BATIV_ID`, `BATIV_ATIVO_CIRCULANTE`, `BATIV_ESTOQUE`, `BATIV_ATIVO_RLP`, `BATIV_INVESTIMENTOS`, `BATIV_IMOB_INTANGIVEL`, `BATIV_ATIVO_TOTAL`, `BATIV_ATIVO_NAO_CIRCULANTE`, `BATIV_CAIXA_EQUIV_CAIXA`, `BATIV_CLIENTES`, `BATIV_OUTROS_ATIVOS_CIRCULANTES`, `BATIV_EMP_ID`, `BATIV_ANO_ID`) VALUES
(25, '3138316.00', '19861.00', '286308.00', '2348.00', '52326534.00', '55753506.00', '52615190.00', '1028280.00', '1721867.00', '368308.00', 15, 2017),
(26, '3036594.00', '21068.00', '327970.00', '2348.00', '52817671.00', '56184583.00', '53147989.00', '646389.00', '2095632.00', '273505.00', 15, 2018),
(27, '21989290.91', '64906.64', '33115.38', '1013070.70', '29303072.85', '52338549.84', '30349258.93', '17676547.18', '4031656.32', '216180.77', 18, 2017),
(28, '21056432.80', '107696.96', '17363.32', '1030070.70', '34180055.26', '56283922.08', '35227489.28', '16885099.09', '3918530.77', '145105.98', 18, 2018),
(29, '38145635.00', '30980.00', '1343985.00', '29388.00', '38380912.00', '77899920.00', '39754285.00', '31394261.00', '2969224.00', '3751170.00', 19, 2017),
(30, '34395881.00', '28135.00', '141935.00', '31261.00', '38256854.00', '72825931.00', '38430050.00', '29445093.00', '2125763.00', '2796890.00', 19, 2018);

-- --------------------------------------------------------

--
-- Estrutura da tabela `balanco_passivos`
--

CREATE TABLE `balanco_passivos` (
  `BPAS_ID` int(10) NOT NULL,
  `BPAS_PASSIVO_CIRCULANTE` decimal(14,2) DEFAULT NULL,
  `BPAS_PASSIVO_N_CIRCULANTE` decimal(14,2) DEFAULT NULL,
  `BPAS_PATRIMONIO_LIQUIDO` decimal(14,2) DEFAULT NULL,
  `BPAS_PASSIVO_TOTAL` decimal(14,2) DEFAULT NULL,
  `BPAS_FORNECEDORES` decimal(14,2) DEFAULT NULL,
  `BPAS_OUTROS_PASSIVOS_CIRCULANTES` decimal(14,2) DEFAULT NULL,
  `BPAS_ANO_ID` int(10) NOT NULL,
  `BPAS_EMP_ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `balanco_passivos`
--

INSERT INTO `balanco_passivos` (`BPAS_ID`, `BPAS_PASSIVO_CIRCULANTE`, `BPAS_PASSIVO_N_CIRCULANTE`, `BPAS_PATRIMONIO_LIQUIDO`, `BPAS_PASSIVO_TOTAL`, `BPAS_FORNECEDORES`, `BPAS_OUTROS_PASSIVOS_CIRCULANTES`, `BPAS_ANO_ID`, `BPAS_EMP_ID`) VALUES
(25, '936164.00', '8000161.00', '39581413.00', '48517738.00', '461900.00', '474264.00', 2017, 15),
(26, '1545375.00', '7233074.00', '39859969.00', '48638418.00', '536008.00', '1009367.00', 2018, 15),
(27, '3793232.61', '7217085.32', '41312479.22', '52322797.15', '107430.54', '3685802.07', 2017, 18),
(28, '4570493.45', '5205085.28', '46524095.41', '56299674.14', '272737.34', '4297756.11', 2018, 18),
(29, '12505934.00', '43912104.00', '13208890.00', '69626928.00', '323624.00', '12182310.00', 2017, 19),
(30, '9317551.00', '52185094.00', '19596278.00', '81098923.00', '250999.00', '9066552.00', 2018, 19);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cnae`
--

CREATE TABLE `cnae` (
  `codigo_cnae` varchar(255) NOT NULL,
  `desc_cnae` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cnae`
--

INSERT INTO `cnae` (`codigo_cnae`, `desc_cnae`) VALUES
('0111-3/01', 'Cultivo de arroz'),
('0111-3/02', 'Cultivo de milho'),
('0111-3/03', 'Cultivo de trigo'),
('0111-3/99', 'Cultivo de outros cereais não especificados anteriormente'),
('0112-1/01', 'Cultivo de algodão herbáceo'),
('0112-1/02', 'Cultivo de juta'),
('0112-1/99', 'Cultivo de outras fibras de lavoura temporária não especificadas anteriormente'),
('0113-0/00', 'Cultivo de cana-de-açúcar'),
('0114-8/00', 'Cultivo de fumo'),
('0115-6/00', 'Cultivo de soja'),
('0116-4/01', 'Cultivo de amendoim'),
('0116-4/02', 'Cultivo de girassol'),
('0116-4/03', 'Cultivo de mamona'),
('0116-4/99', 'Cultivo de outras oleaginosas de lavoura temporária não especificadas anteriormente'),
('0119-9/01', 'Cultivo de abacaxi'),
('0119-9/02', 'Cultivo de alho'),
('0119-9/03', 'Cultivo de batata-inglesa'),
('0119-9/04', 'Cultivo de cebola'),
('0119-9/05', 'Cultivo de feijão'),
('0119-9/06', 'Cultivo de mandioca'),
('0119-9/07', 'Cultivo de melão'),
('0119-9/08', 'Cultivo de melancia'),
('0119-9/09', 'Cultivo de tomate rasteiro'),
('0119-9/99', 'Cultivo de outras plantas de lavoura temporária não especificadas anteriormente'),
('0121-1/01', 'Horticultura, exceto morango'),
('0121-1/02', 'Cultivo de morango'),
('0122-9/00', 'Floricultura'),
('0131-8/00', 'Cultivo de laranja'),
('0132-6/00', 'Cultivo de uva'),
('0133-4/01', 'Cultivo de açaí'),
('0133-4/02', 'Cultivo de banana'),
('0133-4/03', 'Cultivo de caju'),
('0133-4/04', 'Cultivo de cítricos, exceto laranja'),
('0133-4/05', 'Cultivo de coco-da-baía'),
('0133-4/06', 'Cultivo de guaraná'),
('0133-4/07', 'Cultivo de maçã'),
('0133-4/08', 'Cultivo de mamão'),
('0133-4/09', 'Cultivo de maracujá'),
('0133-4/10', 'Cultivo de manga'),
('0133-4/11', 'Cultivo de pêssego'),
('0133-4/99', 'Cultivo de frutas de lavoura permanente não especificadas anteriormente'),
('0134-2/00', 'Cultivo de café'),
('0135-1/00', 'Cultivo de cacau'),
('0139-3/01', 'Cultivo de chá-da-índia'),
('0139-3/02', 'Cultivo de erva-mate'),
('0139-3/03', 'Cultivo de pimenta-do-reino'),
('0139-3/04', 'Cultivo de plantas para condimento, exceto pimenta-do-reino'),
('0139-3/05', 'Cultivo de dendê'),
('0139-3/06', 'Cultivo de seringueira'),
('0139-3/99', 'Cultivo de outras plantas de lavoura permanente não especificadas anteriormente'),
('0141-5/01', 'Produção de sementes certificadas, exceto de forrageiras para pasto'),
('0141-5/02', 'Produção de sementes certificadas de forrageiras para formação de pasto'),
('0142-3/00', 'Produção de mudas e outras formas de propagação vegetal, certificadas'),
('0151-2/01', 'Criação de bovinos para corte'),
('0151-2/02', 'Criação de bovinos para leite'),
('0151-2/03', 'Criação de bovinos, exceto para corte e leite'),
('0152-1/01', 'Criação de bufalinos'),
('0152-1/02', 'Criação de eqüinos'),
('0152-1/03', 'Criação de asininos e muares'),
('0153-9/01', 'Criação de caprinos'),
('0153-9/02', 'Criação de ovinos, inclusive para produção de lã'),
('0154-7/00', 'Criação de suínos'),
('0155-5/01', 'Criação de frangos para corte'),
('0155-5/02', 'Produção de pintos de um dia'),
('0155-5/03', 'Criação de outros galináceos, exceto para corte'),
('0155-5/04', 'Criação de aves, exceto galináceos'),
('0155-5/05', 'Produção de ovos'),
('0159-8/01', 'Apicultura'),
('0159-8/02', 'Criação de animais de estimação'),
('0159-8/03', 'Criação de escargô'),
('0159-8/04', 'Criação de bicho-da-seda'),
('0159-8/99', 'Criação de outros animais não especificados anteriormente'),
('0161-0/01', 'Serviço de pulverização e controle de pragas agrícolas'),
('0161-0/02', 'Serviço de poda de árvores para lavouras'),
('0161-0/03', 'Serviço de preparação de terreno, cultivo e colheita'),
('0161-0/99', 'Atividades de apoio à agricultura não especificadas anteriormente'),
('0162-8/01', 'Serviço de inseminação artificial de animais *'),
('0162-8/02', 'Serviço de tosquiamento de ovinos'),
('0162-8/03', 'Serviço de manejo de animais'),
('0162-8/99', 'Atividades de apoio à pecuária não especificadas anteriormente'),
('0163-6/00', 'Atividades de pós-colheita'),
('0170-9/00', 'Caça e serviços relacionados'),
('0210-1/01', 'Cultivo de eucalipto'),
('0210-1/02', 'Cultivo de acácia-negra'),
('0210-1/03', 'Cultivo de pinus'),
('0210-1/04', 'Cultivo de teca'),
('0210-1/05', 'Cultivo de espécies madeireiras, exceto eucalipto, acácia-negra, pinus e teca'),
('0210-1/06', 'Cultivo de mudas em viveiros florestais'),
('0210-1/07', 'Extração de madeira em florestas plantadas'),
('0210-1/08', 'Produção de carvão vegetal - florestas plantadas'),
('0210-1/09', 'Produção de casca de acácia-negra - florestas plantadas'),
('0210-1/99', 'Produção de produtos não-madeireiros não especificados anteriormente em florestas plantadas'),
('0220-9/01', 'Extração de madeira em florestas nativas'),
('0220-9/02', 'Produção de carvão vegetal - florestas nativas'),
('0220-9/03', 'Coleta de castanha-do-pará em florestas nativas'),
('0220-9/04', 'Coleta de látex em florestas nativas'),
('0220-9/05', 'Coleta de palmito em florestas nativas'),
('0220-9/06', 'Conservação de florestas nativas'),
('0220-9/99', 'Coleta de produtos não-madeireiros não especificados anteriormente em florestas nativas'),
('0230-6/00', 'Atividades de apoio à produção florestal'),
('0311-6/01', 'Pesca de peixes em água salgada'),
('0311-6/02', 'Pesca de crustáceos e moluscos em água salgada'),
('0311-6/03', 'Coleta de outros produtos marinhos'),
('0311-6/04', 'Atividades de apoio à pesca em água salgada'),
('0312-4/01', 'Pesca de peixes em água doce'),
('0312-4/02', 'Pesca de crustáceos e moluscos em água doce'),
('0312-4/03', 'Coleta de outros produtos aquáticos de água doce'),
('0312-4/04', 'Atividades de apoio à pesca em água doce'),
('0321-3/01', 'Criação de peixes em água salgada e salobra'),
('0321-3/02', 'Criação de camarões em água salgada e salobra'),
('0321-3/03', 'Criação de ostras e mexilhões em água salgada e salobra'),
('0321-3/04', 'Criação de peixes ornamentais em água salgada e salobra'),
('0321-3/05', 'Atividades de apoio à aqüicultura em água salgada e salobra'),
('0321-3/99', 'Cultivos e semicultivos da aqüicultura em água salgada e salobra não especificados anteriormente'),
('0322-1/01', 'Criação de peixes em água doce'),
('0322-1/02', 'Criação de camarões em água doce'),
('0322-1/03', 'Criação de ostras e mexilhões em água doce'),
('0322-1/04', 'Criação de peixes ornamentais em água doce'),
('0322-1/05', 'Ranicultura'),
('0322-1/06', 'Criação de jacaré'),
('0322-1/07', 'Atividades de apoio à aqüicultura em água doce'),
('0322-1/99', 'Cultivos e semicultivos da aqüicultura em água doce não especificados anteriormente'),
('0500-3/01', 'Extração de carvão mineral'),
('0500-3/02', 'Beneficiamento de carvão mineral'),
('0600-0/01', 'Extração de petróleo e gás natural'),
('0600-0/02', 'Extração e beneficiamento de xisto'),
('0600-0/03', 'Extração e beneficiamento de areias betuminosas'),
('0710-3/01', 'Extração de minério de ferro'),
('0710-3/02', 'Pelotização, sinterização e outros beneficiamentos de minério de ferro'),
('0721-9/01', 'Extração de minério de alumínio'),
('0721-9/02', 'Beneficiamento de minério de alumínio'),
('0722-7/01', 'Extração de minério de estanho'),
('0722-7/02', 'Beneficiamento de minério de estanho'),
('0723-5/01', 'Extração de minério de manganês'),
('0723-5/02', 'Beneficiamento de minério de manganês'),
('0724-3/01', 'Extração de minério de metais preciosos'),
('0724-3/02', 'Beneficiamento de minério de metais preciosos'),
('0725-1/00', 'Extração de minerais radioativos'),
('0729-4/01', 'Extração de minérios de nióbio e titânio'),
('0729-4/02', 'Extração de minério de tungstênio'),
('0729-4/03', 'Extração de minério de níquel'),
('0729-4/04', 'Extração de minérios de cobre, chumbo, zinco e outros minerais metálicos não-ferrosos não especificados anteriormente'),
('0729-4/05', 'Beneficiamento de minérios de cobre, chumbo, zinco e outros minerais metálicos não-ferrosos não especificados anteriormente'),
('0810-0/01', 'Extração de ardósia e beneficiamento associado'),
('0810-0/02', 'Extração de granito e beneficiamento associado'),
('0810-0/03', 'Extração de mármore e beneficiamento associado'),
('0810-0/04', 'Extração de calcário e dolomita e beneficiamento associado'),
('0810-0/05', 'Extração de gesso e caulim'),
('0810-0/06', 'Extração de areia, cascalho ou pedregulho e beneficiamento associado'),
('0810-0/07', 'Extração de argila e beneficiamento associado'),
('0810-0/08', 'Extração de saibro e beneficiamento associado'),
('0810-0/09', 'Extração de basalto e beneficiamento associado'),
('0810-0/10', 'Beneficiamento de gesso e caulim associado à extração'),
('0810-0/99', 'Extração e britamento de pedras e outros materiais para construção e beneficiamento associado'),
('0891-6/00', 'Extração de minerais para fabricação de adubos, fertilizantes e outros produtos químicos'),
('0892-4/01', 'Extração de sal marinho'),
('0892-4/02', 'Extração de sal-gema'),
('0892-4/03', 'Refino e outros tratamentos do sal'),
('0893-2/00', 'Extração de gemas (pedras preciosas e semipreciosas)'),
('0899-1/01', 'Extração de grafita'),
('0899-1/02', 'Extração de quartzo'),
('0899-1/03', 'Extração de amianto'),
('0899-1/99', 'Extração de outros minerais não-metálicos não especificados anteriormente'),
('0910-6/00', 'Atividades de apoio à extração de petróleo e gás natural'),
('0990-4/01', 'Atividades de apoio à extração de minério de ferro'),
('0990-4/02', 'Atividades de apoio à extração de minerais metálicos não-ferrosos'),
('0990-4/03', 'Atividades de apoio à extração de minerais não-metálicos'),
('1011-2/01', 'Frigorífico - abate de bovinos'),
('1011-2/02', 'Frigorífico - abate de eqüinos'),
('1011-2/03', 'Frigorífico - abate de ovinos e caprinos'),
('1011-2/04', 'Frigorífico - abate de bufalinos'),
('1011-2/05', 'Matadouro - abate de reses sob contrato - exceto abate de suínos'),
('1012-1/01', 'Abate de aves'),
('1012-1/02', 'Abate de pequenos animais'),
('1012-1/03', 'Frigorífico - abate de suínos'),
('1012-1/04', 'Matadouro - abate de suínos sob contrato'),
('1013-9/01', 'Fabricação de produtos de carne'),
('1013-9/02', 'Preparação de subprodutos do abate'),
('1020-1/01', 'Preservação de peixes, crustáceos e moluscos'),
('1020-1/02', 'Fabricação de conservas de peixes, crustáceos e moluscos'),
('1031-7/00', 'Fabricação de conservas de frutas'),
('1032-5/01', 'Fabricação de conservas de palmito'),
('1032-5/99', 'Fabricação de conservas de legumes e outros vegetais, exceto palmito'),
('1033-3/01', 'Fabricação de sucos concentrados de frutas, hortaliças e legumes'),
('1033-3/02', 'Fabricação de sucos de frutas, hortaliças e legumes, exceto concentrados'),
('1041-4/00', 'Fabricação de óleos vegetais em bruto, exceto óleo de milho'),
('1042-2/00', 'Fabricação de óleos vegetais refinados, exceto óleo de milho'),
('1043-1/00', 'Fabricação de margarina e outras gorduras vegetais e de óleos não-comestíveis de animais'),
('1051-1/00', 'Preparação do leite'),
('1052-0/00', 'Fabricação de laticínios'),
('1053-8/00', 'Fabricação de sorvetes e outros gelados comestíveis'),
('1061-9/01', 'Beneficiamento de arroz'),
('1061-9/02', 'Fabricação de produtos do arroz'),
('1062-7/00', 'Moagem de trigo e fabricação de derivados'),
('1063-5/00', 'Fabricação de farinha de mandioca e derivados'),
('1064-3/00', 'Fabricação de farinha de milho e derivados, exceto óleos de milho'),
('1065-1/01', 'Fabricação de amidos e féculas de vegetais'),
('1065-1/02', 'Fabricação de óleo de milho em bruto'),
('1065-1/03', 'Fabricação de óleo de milho refinado'),
('1066-0/00', 'Fabricação de alimentos para animais'),
('1069-4/00', 'Moagem e fabricação de produtos de origem vegetal não especificados anteriormente'),
('1071-6/00', 'Fabricação de açúcar em bruto'),
('1072-4/01', 'Fabricação de açúcar de cana refinado'),
('1072-4/02', 'Fabricação de açúcar de cereais (dextrose) e de beterraba'),
('1081-3/01', 'Beneficiamento de café'),
('1081-3/02', 'Torrefação e moagem de café'),
('1082-1/00', 'Fabricação de produtos à base de café'),
('1091-1/00', 'Fabricação de produtos de panificação'),
('1092-9/00', 'Fabricação de biscoitos e bolachas'),
('1093-7/01', 'Fabricação de produtos derivados do cacau e de chocolates'),
('1093-7/02', 'Fabricação de frutas cristalizadas, balas e semelhantes'),
('1094-5/00', 'Fabricação de massas alimentícias'),
('1095-3/00', 'Fabricação de especiarias, molhos, temperos e condimentos'),
('1096-1/00', 'Fabricação de alimentos e pratos prontos'),
('1099-6/01', 'Fabricação de vinagres'),
('1099-6/02', 'Fabricação de pós alimentícios'),
('1099-6/03', 'Fabricação de fermentos e leveduras'),
('1099-6/04', 'Fabricação de gelo comum'),
('1099-6/05', 'Fabricação de produtos para infusão (chá, mate, etc.)'),
('1099-6/06', 'Fabricação de adoçantes naturais e artificiais'),
('1099-6/99', 'Fabricação de outros produtos alimentícios não especificados anteriormente'),
('1111-9/01', 'Fabricação de aguardente de cana-de-açúcar'),
('1111-9/02', 'Fabricação de outras aguardentes e bebidas destiladas'),
('1112-7/00', 'Fabricação de vinho'),
('1113-5/01', 'Fabricação de malte, inclusive malte uísque'),
('1113-5/02', 'Fabricação de cervejas e chopes'),
('1121-6/00', 'Fabricação de águas envasadas'),
('1122-4/01', 'Fabricação de refrigerantes'),
('1122-4/02', 'Fabricação de chá mate e outros chás prontos para consumo'),
('1122-4/03', 'Fabricação de refrescos, xaropes e pós para refrescos, exceto refrescos de frutas'),
('1122-4/99', 'Fabricação de outras bebidas não-alcoólicas não especificadas anteriormente'),
('1210-7/00', 'Processamento industrial do fumo'),
('1220-4/01', 'Fabricação de cigarros'),
('1220-4/02', 'Fabricação de cigarrilhas e charutos'),
('1220-4/03', 'Fabricação de filtros para cigarros'),
('1220-4/99', 'Fabricação de outros produtos do fumo, exceto cigarros, cigarrilhas e charutos'),
('1311-1/00', 'Preparação e fiação de fibras de algodão'),
('1312-0/00', 'Preparação e fiação de fibras têxteis naturais, exceto algodão'),
('1313-8/00', 'Fiação de fibras artificiais e sintéticas'),
('1314-6/00', 'Fabricação de linhas para costurar e bordar'),
('1321-9/00', 'Tecelagem de fios de algodão'),
('1322-7/00', 'Tecelagem de fios de fibras têxteis naturais, exceto algodão'),
('1323-5/00', 'Tecelagem de fios de fibras artificiais e sintéticas'),
('1330-8/00', 'Fabricação de tecidos de malha'),
('1340-5/01', 'Estamparia e texturização em fios, tecidos, artefatos têxteis e peças do vestuário'),
('1340-5/02', 'Alvejamento, tingimento e torção em fios, tecidos, artefatos têxteis e peças do vestuário'),
('1340-5/99', 'Outros serviços de acabamento em fios, tecidos, artefatos têxteis e peças do vestuário'),
('1351-1/00', 'Fabricação de artefatos têxteis para uso doméstico'),
('1352-9/00', 'Fabricação de artefatos de tapeçaria'),
('1353-7/00', 'Fabricação de artefatos de cordoaria'),
('1354-5/00', 'Fabricação de tecidos especiais, inclusive artefatos'),
('1359-6/00', 'Fabricação de outros produtos têxteis não especificados anteriormente'),
('1411-8/01', 'Confecção de roupas íntimas'),
('1411-8/02', 'Facção de roupas íntimas'),
('1412-6/01', 'Confecção de peças do vestuário, exceto roupas íntimas e as confeccionadas sob medida'),
('1412-6/02', 'Confecção, sob medida, de peças do vestuário, exceto roupas íntimas'),
('1412-6/03', 'Facção de peças do vestuário, exceto roupas íntimas'),
('1413-4/01', 'Confecção de roupas profissionais, exceto sob medida'),
('1413-4/02', 'Confecção, sob medida, de roupas profissionais'),
('1413-4/03', 'Facção de roupas profissionais'),
('1414-2/00', 'Fabricação de acessórios do vestuário, exceto para segurança e proteção'),
('1421-5/00', 'Fabricação de meias'),
('1422-3/00', 'Fabricação de artigos do vestuário, produzidos em malharias e tricotagens, exceto meias'),
('1510-6/00', 'Curtimento e outras preparações de couro'),
('1521-1/00', 'Fabricação de artigos para viagem, bolsas e semelhantes de qualquer material'),
('1529-7/00', 'Fabricação de artefatos de couro não especificados anteriormente'),
('1531-9/01', 'Fabricação de calçados de couro'),
('1531-9/02', 'Acabamento de calçados de couro sob contrato'),
('1532-7/00', 'Fabricação de tênis de qualquer material'),
('1533-5/00', 'Fabricação de calçados de material sintético'),
('1539-4/00', 'Fabricação de calçados de materiais não especificados anteriormente'),
('1540-8/00', 'Fabricação de partes para calçados, de qualquer material'),
('1610-2/01', 'Serrarias com desdobramento de madeira'),
('1610-2/02', 'Serrarias sem desdobramento de madeira'),
('1621-8/00', 'Fabricação de madeira laminada e de chapas de madeira compensada, prensada e aglomerada'),
('1622-6/01', 'Fabricação de casas de madeira pré-fabricadas'),
('1622-6/02', 'Fabricação de esquadrias de madeira e de peças de madeira para instalações industriais e comerciais'),
('1622-6/99', 'Fabricação de outros artigos de carpintaria para construção'),
('1623-4/00', 'Fabricação de artefatos de tanoaria e de embalagens de madeira'),
('1629-3/01', 'Fabricação de artefatos diversos de madeira, exceto móveis'),
('1629-3/02', 'Fabricação de artefatos diversos de cortiça, bambu, palha, vime e outros materiais trançados, exceto móveis'),
('1710-9/00', 'Fabricação de celulose e outras pastas para a fabricação de papel'),
('1721-4/00', 'Fabricação de papel'),
('1722-2/00', 'Fabricação de cartolina e papel-cartão'),
('1731-1/00', 'Fabricação de embalagens de papel'),
('1732-0/00', 'Fabricação de embalagens de cartolina e papel-cartão'),
('1733-8/00', 'Fabricação de chapas e de embalagens de papelão ondulado'),
('1741-9/01', 'Fabricação de formulários contínuos'),
('1741-9/02', 'Fabricação de produtos de papel, cartolina, papel-cartão e papelão ondulado para uso industrial, comercial e de escritório, exceto formulário contínuo'),
('1742-7/01', 'Fabricação de fraldas descartáveis'),
('1742-7/02', 'Fabricação de absorventes higiênicos'),
('1742-7/99', 'Fabricação de produtos de papel para uso doméstico e higiênico-sanitário não especificados anteriormente'),
('1749-4/00', 'Fabricação de produtos de pastas celulósicas, papel, cartolina, papel-cartão e papelão ondulado não especificados anteriormente'),
('1811-3/01', 'Impressão de jornais'),
('1811-3/02', 'Impressão de livros, revistas e outras publicações periódicas'),
('1812-1/00', 'Impressão de material de segurança'),
('1813-0/01', 'Impressão de material para uso publicitário'),
('1813-0/99', 'Impressão de material para outros usos'),
('1821-1/00', 'Serviços de pré-impressão'),
('1822-9/00', 'Serviços de acabamentos gráficos'),
('1830-0/01', 'Reprodução de som em qualquer suporte'),
('1830-0/02', 'Reprodução de vídeo em qualquer suporte'),
('1830-0/03', 'Reprodução de software em qualquer suporte'),
('1910-1/00', 'Coquerias'),
('1921-7/00', 'Fabricação de produtos do refino de petróleo'),
('1922-5/01', 'Formulação de combustíveis'),
('1922-5/02', 'Rerrefino de óleos lubrificantes'),
('1922-5/99', 'Fabricação de outros produtos derivados do petróleo, exceto produtos do refino'),
('1931-4/00', 'Fabricação de álcool'),
('1932-2/00', 'Fabricação de biocombustíveis, exceto álcool'),
('2011-8/00', 'Fabricação de cloro e álcalis'),
('2012-6/00', 'Fabricação de intermediários para fertilizantes'),
('2013-4/00', 'Fabricação de adubos e fertilizantes'),
('2014-2/00', 'Fabricação de gases industriais'),
('2019-3/01', 'Elaboração de combustíveis nucleares'),
('2019-3/99', 'Fabricação de outros produtos químicos inorgânicos não especificados anteriormente'),
('2021-5/00', 'Fabricação de produtos petroquímicos básicos'),
('2022-3/00', 'Fabricação de intermediários para plastificantes, resinas e fibras'),
('2029-1/00', 'Fabricação de produtos químicos orgânicos não especificados anteriormente'),
('2031-2/00', 'Fabricação de resinas termoplásticas'),
('2032-1/00', 'Fabricação de resinas termofixas'),
('2033-9/00', 'Fabricação de elastômeros'),
('2040-1/00', 'Fabricação de fibras artificiais e sintéticas'),
('2051-7/00', 'Fabricação de defensivos agrícolas'),
('2052-5/00', 'Fabricação de desinfestantes domissanitários'),
('2061-4/00', 'Fabricação de sabões e detergentes sintéticos'),
('2062-2/00', 'Fabricação de produtos de limpeza e polimento'),
('2063-1/00', 'Fabricação de cosméticos, produtos de perfumaria e de higiene pessoal'),
('2071-1/00', 'Fabricação de tintas, vernizes, esmaltes e lacas'),
('2072-0/00', 'Fabricação de tintas de impressão'),
('2073-8/00', 'Fabricação de impermeabilizantes, solventes e produtos afins'),
('2091-6/00', 'Fabricação de adesivos e selantes'),
('2092-4/01', 'Fabricação de pólvoras, explosivos e detonantes'),
('2092-4/02', 'Fabricação de artigos pirotécnicos'),
('2092-4/03', 'Fabricação de fósforos de segurança'),
('2093-2/00', 'Fabricação de aditivos de uso industrial'),
('2094-1/00', 'Fabricação de catalisadores'),
('2099-1/01', 'Fabricação de chapas, filmes, papéis e outros materiais e produtos químicos para fotografia'),
('2099-1/99', 'Fabricação de outros produtos químicos não especificados anteriormente'),
('2110-6/00', 'Fabricação de produtos farmoquímicos'),
('2121-1/01', 'Fabricação de medicamentos alopáticos para uso humano'),
('2121-1/02', 'Fabricação de medicamentos homeopáticos para uso humano'),
('2121-1/03', 'Fabricação de medicamentos fitoterápicos para uso humano'),
('2122-0/00', 'Fabricação de medicamentos para uso veterinário'),
('2123-8/00', 'Fabricação de preparações farmacêuticas'),
('2211-1/00', 'Fabricação de pneumáticos e de câmaras-de-ar'),
('2212-9/00', 'Reforma de pneumáticos usados'),
('2219-6/00', 'Fabricação de artefatos de borracha não especificados anteriormente'),
('2221-8/00', 'Fabricação de laminados planos e tubulares de material plástico'),
('2222-6/00', 'Fabricação de embalagens de material plástico'),
('2223-4/00', 'Fabricação de tubos e acessórios de material plástico para uso na construção'),
('2229-3/01', 'Fabricação de artefatos de material plástico para uso pessoal e doméstico'),
('2229-3/02', 'Fabricação de artefatos de material plástico para usos industriais'),
('2229-3/03', 'Fabricação de artefatos de material plástico para uso na construção, exceto tubos e acessórios'),
('2229-3/99', 'Fabricação de artefatos de material plástico para outros usos não especificados anteriormente'),
('2311-7/00', 'Fabricação de vidro plano e de segurança'),
('2312-5/00', 'Fabricação de embalagens de vidro'),
('2319-2/00', 'Fabricação de artigos de vidro'),
('2320-6/00', 'Fabricação de cimento'),
('2330-3/01', 'Fabricação de estruturas pré-moldadas de concreto armado, em série e sob encomenda'),
('2330-3/02', 'Fabricação de artefatos de cimento para uso na construção'),
('2330-3/03', 'Fabricação de artefatos de fibrocimento para uso na construção'),
('2330-3/04', 'Fabricação de casas pré-moldadas de concreto'),
('2330-3/05', 'Preparação de massa de concreto e argamassa para construção'),
('2330-3/99', 'Fabricação de outros artefatos e produtos de concreto, cimento, fibrocimento, gesso e materiais semelhantes'),
('2341-9/00', 'Fabricação de produtos cerâmicos refratários'),
('2342-7/01', 'Fabricação de azulejos e pisos'),
('2342-7/02', 'Fabricação de artefatos de cerâmica e barro cozido para uso na construção, exceto azulejos e pisos'),
('2349-4/01', 'Fabricação de material sanitário de cerâmica'),
('2349-4/99', 'Fabricação de produtos cerâmicos não-refratários não especificados anteriormente'),
('2391-5/01', 'Britamento de pedras, exceto associado à extração'),
('2391-5/02', 'Aparelhamento de pedras para construção, exceto associado à extração'),
('2391-5/03', 'Aparelhamento de placas e execução de trabalhos em mármore, granito, ardósia e outras pedras'),
('2392-3/00', 'Fabricação de cal e gesso'),
('2399-1/01', 'Decoração, lapidação, gravação, vitrificação e outros trabalhos em cerâmica, louça, vidro e cristal'),
('2399-1/99', 'Fabricação de outros produtos de minerais não-metálicos não especificados anteriormente'),
('2411-3/00', 'Produção de ferro-gusa'),
('2412-1/00', 'Produção de ferroligas'),
('2421-1/00', 'Produção de semi-acabados de aço'),
('2422-9/01', 'Produção de laminados planos de aço ao carbono, revestidos ou não'),
('2422-9/02', 'Produção de laminados planos de aços especiais'),
('2423-7/01', 'Produção de tubos de aço sem costura'),
('2423-7/02', 'Produção de laminados longos de aço, exceto tubos'),
('2424-5/01', 'Produção de arames de aço'),
('2424-5/02', 'Produção de relaminados, trefilados e perfilados de aço, exceto arames'),
('2431-8/00', 'Produção de tubos de aço com costura'),
('2439-3/00', 'Produção de outros tubos de ferro e aço'),
('2441-5/01', 'Produção de alumínio e suas ligas em formas primárias'),
('2441-5/02', 'Produção de laminados de alumínio'),
('2442-3/00', 'Metalurgia dos metais preciosos'),
('2443-1/00', 'Metalurgia do cobre'),
('2449-1/01', 'Produção de zinco em formas primárias'),
('2449-1/02', 'Produção de laminados de zinco'),
('2449-1/03', 'Produção de soldas e ânodos para galvanoplastia'),
('2449-1/99', 'Metalurgia de outros metais não-ferrosos e suas ligas não especificados anteriormente'),
('2451-2/00', 'Fundição de ferro e aço'),
('2452-1/00', 'Fundição de metais não-ferrosos e suas ligas'),
('2511-0/00', 'Fabricação de estruturas metálicas'),
('2512-8/00', 'Fabricação de esquadrias de metal'),
('2513-6/00', 'Fabricação de obras de caldeiraria pesada'),
('2521-7/00', 'Fabricação de tanques, reservatórios metálicos e caldeiras para aquecimento central'),
('2522-5/00', 'Fabricação de caldeiras geradoras de vapor, exceto para aquecimento central e para veículos'),
('2531-4/01', 'Produção de forjados de aço'),
('2531-4/02', 'Produção de forjados de metais não-ferrosos e suas ligas'),
('2532-2/01', 'Produção de artefatos estampados de metal'),
('2532-2/02', 'Metalurgia do pó'),
('2539-0/00', 'Serviços de usinagem, solda, tratamento e revestimento em metais'),
('2541-1/00', 'Fabricação de artigos de cutelaria'),
('2542-0/00', 'Fabricação de artigos de serralheria, exceto esquadrias'),
('2543-8/00', 'Fabricação de ferramentas'),
('2550-1/01', 'Fabricação de equipamento bélico pesado, exceto veículos militares de combate'),
('2550-1/02', 'Fabricação de armas de fogo e munições'),
('2591-8/00', 'Fabricação de embalagens metálicas'),
('2592-6/01', 'Fabricação de produtos de trefilados de metal padronizados'),
('2592-6/02', 'Fabricação de produtos de trefilados de metal, exceto padronizados'),
('2593-4/00', 'Fabricação de artigos de metal para uso doméstico e pessoal'),
('2599-3/01', 'Serviços de confecção de armações metálicas para a construção'),
('2599-3/99', 'Fabricação de outros produtos de metal não especificados anteriormente'),
('2610-8/00', 'Fabricação de componentes eletrônicos'),
('2621-3/00', 'Fabricação de equipamentos de informática'),
('2622-1/00', 'Fabricação de periféricos para equipamentos de informática'),
('2631-1/00', 'Fabricação de equipamentos transmissores de comunicação, peças e acessórios'),
('2632-9/00', 'Fabricação de aparelhos telefônicos e de outros equipamentos de comunicação, peças e acessórios'),
('2640-0/00', 'Fabricação de aparelhos de recepção, reprodução, gravação e amplificação de áudio e vídeo'),
('2651-5/00', 'Fabricação de aparelhos e equipamentos de medida, teste e controle'),
('2652-3/00', 'Fabricação de cronômetros e relógios'),
('2660-4/00', 'Fabricação de aparelhos eletromédicos e eletroterapêuticos e equipamentos de irradiação'),
('2670-1/01', 'Fabricação de equipamentos e instrumentos ópticos, peças e acessórios'),
('2670-1/02', 'Fabricação de aparelhos fotográficos e cinematográficos, peças e acessórios'),
('2680-9/00', 'Fabricação de mídias virgens, magnéticas e ópticas'),
('2710-4/01', 'Fabricação de geradores de corrente contínua e alternada, peças e acessórios'),
('2710-4/02', 'Fabricação de transformadores, indutores, conversores, sincronizadores e semelhantes, peças e acessórios'),
('2710-4/03', 'Fabricação de motores elétricos, peças e acessórios'),
('2721-0/00', 'Fabricação de pilhas, baterias e acumuladores elétricos, exceto para veículos automotores'),
('2722-8/01', 'Fabricação de baterias e acumuladores para veículos automotores'),
('2722-8/02', 'Recondicionamento de baterias e acumuladores para veículos automotores'),
('2731-7/00', 'Fabricação de aparelhos e equipamentos para distribuição e controle de energia elétrica'),
('2732-5/00', 'Fabricação de material elétrico para instalações em circuito de consumo'),
('2733-3/00', 'Fabricação de fios, cabos e condutores elétricos isolados'),
('2740-6/01', 'Fabricação de lâmpadas'),
('2740-6/02', 'Fabricação de luminárias e outros equipamentos de iluminação'),
('2751-1/00', 'Fabricação de fogões, refrigeradores e máquinas de lavar e secar para uso doméstico, peças e acessórios'),
('2759-7/01', 'Fabricação de aparelhos elétricos de uso pessoal, peças e acessórios'),
('2759-7/99', 'Fabricação de outros aparelhos eletrodomésticos não especificados anteriormente, peças e acessórios'),
('2790-2/01', 'Fabricação de eletrodos, contatos e outros artigos de carvão e grafita para uso elétrico, eletroímãs e isoladores'),
('2790-2/02', 'Fabricação de equipamentos para sinalização e alarme'),
('2790-2/99', 'Fabricação de outros equipamentos e aparelhos elétricos não especificados anteriormente'),
('2811-9/00', 'Fabricação de motores e turbinas, peças e acessórios, exceto para aviões e veículos rodoviários'),
('2812-7/00', 'Fabricação de equipamentos hidráulicos e pneumáticos, peças e acessórios, exceto válvulas'),
('2813-5/00', 'Fabricação de válvulas, registros e dispositivos semelhantes, peças e acessórios'),
('2814-3/01', 'Fabricação de compressores para uso industrial, peças e acessórios'),
('2814-3/02', 'Fabricação de compressores para uso não industrial, peças e acessórios'),
('2815-1/01', 'Fabricação de rolamentos para fins industriais'),
('2815-1/02', 'Fabricação de equipamentos de transmissão para fins industriais, exceto rolamentos'),
('2821-6/01', 'Fabricação de fornos industriais, aparelhos e equipamentos não-elétricos para instalações térmicas, peças e acessórios'),
('2821-6/02', 'Fabricação de estufas e fornos elétricos para fins industriais, peças e acessórios'),
('2822-4/01', 'Fabricação de máquinas, equipamentos e aparelhos para transporte e elevação de pessoas, peças e acessórios'),
('2822-4/02', 'Fabricação de máquinas, equipamentos e aparelhos para transporte e elevação de cargas, peças e acessórios'),
('2823-2/00', 'Fabricação de máquinas e aparelhos de refrigeração e ventilação para uso industrial e comercial, peças e acessórios'),
('2824-1/01', 'Fabricação de aparelhos e equipamentos de ar condicionado para uso industrial'),
('2824-1/02', 'Fabricação de aparelhos e equipamentos de ar condicionado para uso não-industrial'),
('2825-9/00', 'Fabricação de máquinas e equipamentos para saneamento básico e ambiental, peças e acessórios'),
('2829-1/01', 'Fabricação de máquinas de escrever, calcular e outros equipamentos não-eletrônicos para escritório, peças e acessórios'),
('2829-1/99', 'Fabricação de outras máquinas e equipamentos de uso geral não especificados anteriormente, peças e acessórios'),
('2831-3/00', 'Fabricação de tratores agrícolas, peças e acessórios'),
('2832-1/00', 'Fabricação de equipamentos para irrigação agrícola, peças e acessórios'),
('2833-0/00', 'Fabricação de máquinas e equipamentos para a agricultura e pecuária, peças e acessórios, exceto para irrigação'),
('2840-2/00', 'Fabricação de máquinas-ferramenta, peças e acessórios'),
('2851-8/00', 'Fabricação de máquinas e equipamentos para a prospecção e extração de petróleo, peças e acessórios'),
('2852-6/00', 'Fabricação de outras máquinas e equipamentos para uso na extração mineral, peças e acessórios, exceto na extração de petróleo'),
('2853-4/00', 'Fabricação de tratores, peças e acessórios, exceto agrícolas'),
('2854-2/00', 'Fabricação de máquinas e equipamentos para terraplenagem, pavimentação e construção, peças e acessórios, exceto tratores'),
('2861-5/00', 'Fabricação de máquinas para a indústria metalúrgica, peças e acessórios, exceto máquinas-ferramenta'),
('2862-3/00', 'Fabricação de máquinas e equipamentos para as indústrias de alimentos, bebidas e fumo, peças e acessórios'),
('2863-1/00', 'Fabricação de máquinas e equipamentos para a indústria têxtil, peças e acessórios'),
('2864-0/00', 'Fabricação de máquinas e equipamentos para as indústrias do vestuário, do couro e de calçados, peças e acessórios'),
('2865-8/00', 'Fabricação de máquinas e equipamentos para as indústrias de celulose, papel e papelão e artefatos, peças e acessórios'),
('2866-6/00', 'Fabricação de máquinas e equipamentos para a indústria do plástico, peças e acessórios'),
('2869-1/00', 'Fabricação de máquinas e equipamentos para uso industrial específico não especificados anteriormente, peças e acessórios'),
('2910-7/01', 'Fabricação de automóveis, camionetas e utilitários'),
('2910-7/02', 'Fabricação de chassis com motor para automóveis, camionetas e utilitários'),
('2910-7/03', 'Fabricação de motores para automóveis, camionetas e utilitários'),
('2920-4/01', 'Fabricação de caminhões e ônibus'),
('2920-4/02', 'Fabricação de motores para caminhões e ônibus'),
('2930-1/01', 'Fabricação de cabines, carrocerias e reboques para caminhões'),
('2930-1/02', 'Fabricação de carrocerias para ônibus'),
('2930-1/03', 'Fabricação de cabines, carrocerias e reboques para outros veículos automotores, exceto caminhões e ônibus'),
('2941-7/00', 'Fabricação de peças e acessórios para o sistema motor de veículos automotores'),
('2942-5/00', 'Fabricação de peças e acessórios para os sistemas de marcha e transmissão de veículos automotores'),
('2943-3/00', 'Fabricação de peças e acessórios para o sistema de freios de veículos automotores'),
('2944-1/00', 'Fabricação de peças e acessórios para o sistema de direção e suspensão de veículos automotores'),
('2945-0/00', 'Fabricação de material elétrico e eletrônico para veículos automotores, exceto baterias'),
('2949-2/01', 'Fabricação de bancos e estofados para veículos automotores'),
('2949-2/99', 'Fabricação de outras peças e acessórios para veículos automotores não especificadas anteriormente'),
('2950-6/00', 'Recondicionamento e recuperação de motores para veículos automotores'),
('3011-3/01', 'Construção de embarcações de grande porte'),
('3011-3/02', 'Construção de embarcações para uso comercial e para usos especiais, exceto de grande porte'),
('3012-1/00', 'Construção de embarcações para esporte e lazer'),
('3021-1/00', 'Manutenção e reparação de embarcações e estruturas flutuantes'),
('3022-9/00', 'Manutenção e reparação de embarcações para esporte e lazer'),
('3031-8/00', 'Fabricação de locomotivas, vagões e outros materiais rodantes'),
('3032-6/00', 'Fabricação de peças e acessórios para veículos ferroviários'),
('3041-5/00', 'Fabricação de aeronaves'),
('3042-3/00', 'Fabricação de turbinas, motores e outros componentes e peças para aeronaves'),
('3050-4/00', 'Fabricação de veículos militares de combate'),
('3091-1/00', 'Fabricação de motocicletas, peças e acessórios'),
('3092-0/00', 'Fabricação de bicicletas e triciclos não-motorizados, peças e acessórios'),
('3099-7/00', 'Fabricação de equipamentos de transporte não especificados anteriormente'),
('3101-2/00', 'Fabricação de móveis com predominância de madeira'),
('3102-1/00', 'Fabricação de móveis com predominância de metal'),
('3103-9/00', 'Fabricação de móveis de outros materiais, exceto madeira e metal'),
('3104-7/00', 'Fabricação de colchões'),
('3211-6/01', 'Lapidação de gemas'),
('3211-6/02', 'Fabricação de artefatos de joalheria e ourivesaria'),
('3211-6/03', 'Cunhagem de moedas e medalhas'),
('3212-4/00', 'Fabricação de bijuterias e artefatos semelhantes'),
('3220-5/00', 'Fabricação de instrumentos musicais, peças e acessórios'),
('3230-2/00', 'Fabricação de artefatos para pesca e esporte'),
('3240-0/01', 'Fabricação de jogos eletrônicos'),
('3240-0/02', 'Fabricação de mesas de bilhar, de sinuca e acessórios não associada à locação'),
('3240-0/03', 'Fabricação de mesas de bilhar, de sinuca e acessórios associada à locação'),
('3240-0/99', 'Fabricação de outros brinquedos e jogos recreativos não especificados anteriormente'),
('3250-7/01', 'Fabricação de instrumentos não-eletrônicos e utensílios para uso médico, cirúrgico, odontológico e de laboratório'),
('3250-7/02', 'Fabricação de mobiliário para uso médico, cirúrgico, odontológico e de laboratório'),
('3250-7/03', 'Fabricação de aparelhos e utensílios para correção de defeitos físicos e aparelhos ortopédicos em geral sob encomenda'),
('3250-7/04', 'Fabricação de aparelhos e utensílios para correção de defeitos físicos e aparelhos ortopédicos em geral, exceto sob encomenda'),
('3250-7/05', 'Fabricação de materiais para medicina e odontologia'),
('3250-7/06', 'Serviços de prótese dentária'),
('3250-7/07', 'Fabricação de artigos ópticos'),
('3250-7/08', 'Fabricação de artefatos de tecido não tecido para uso odonto-médico-hospitalar'),
('3291-4/00', 'Fabricação de escovas, pincéis e vassouras'),
('3292-2/01', 'Fabricação de roupas de proteção e segurança e resistentes a fogo'),
('3292-2/02', 'Fabricação de equipamentos e acessórios para segurança pessoal e profissional'),
('3299-0/01', 'Fabricação de guarda-chuvas e similares'),
('3299-0/02', 'Fabricação de canetas, lápis e outros artigos para escritório'),
('3299-0/03', 'Fabricação de letras, letreiros e placas de qualquer material, exceto luminosos'),
('3299-0/04', 'Fabricação de painéis e letreiros luminosos'),
('3299-0/05', 'Fabricação de aviamentos para costura'),
('3299-0/99', 'Fabricação de produtos diversos não especificados anteriormente'),
('3311-2/00', 'Manutenção e reparação de tanques, reservatórios metálicos e caldeiras, exceto para veículos'),
('3312-1/01', 'Manutenção e reparação de equipamentos transmissores de comunicação'),
('3312-1/02', 'Manutenção e reparação de aparelhos e instrumentos de medida, teste e controle'),
('3312-1/03', 'Manutenção e reparação de aparelhos eletromédicos e eletroterapêuticos e equipamentos de irradiação'),
('3312-1/04', 'Manutenção e reparação de equipamentos e instrumentos ópticos'),
('3313-9/01', 'Manutenção e reparação de geradores, transformadores e motores elétricos'),
('3313-9/02', 'Manutenção e reparação de baterias e acumuladores elétricos, exceto para veículos'),
('3313-9/99', 'Manutenção e reparação de máquinas, aparelhos e materiais elétricos não especificados anteriormente'),
('3314-7/01', 'Manutenção e reparação de máquinas motrizes não-elétricas'),
('3314-7/02', 'Manutenção e reparação de equipamentos hidráulicos e pneumáticos, exceto válvulas'),
('3314-7/03', 'Manutenção e reparação de válvulas industriais'),
('3314-7/04', 'Manutenção e reparação de compressores'),
('3314-7/05', 'Manutenção e reparação de equipamentos de transmissão para fins industriais'),
('3314-7/06', 'Manutenção e reparação de máquinas, aparelhos e equipamentos para instalações térmicas'),
('3314-7/07', 'Manutenção e reparação de máquinas e aparelhos de refrigeração e ventilação para uso industrial e comercial'),
('3314-7/08', 'Manutenção e reparação de máquinas, equipamentos e aparelhos para transporte e elevação de cargas'),
('3314-7/09', 'Manutenção e reparação de máquinas de escrever, calcular e de outros equipamentos não-eletrônicos para escritório'),
('3314-7/10', 'Manutenção e reparação de máquinas e equipamentos para uso geral não especificados anteriormente'),
('3314-7/11', 'Manutenção e reparação de máquinas e equipamentos para agricultura e pecuária'),
('3314-7/12', 'Manutenção e reparação de tratores agrícolas'),
('3314-7/13', 'Manutenção e reparação de máquinas-ferramenta'),
('3314-7/14', 'Manutenção e reparação de máquinas e equipamentos para a prospecção e extração de petróleo'),
('3314-7/15', 'Manutenção e reparação de máquinas e equipamentos para uso na extração mineral, exceto na extração de petróleo'),
('3314-7/16', 'Manutenção e reparação de tratores, exceto agrícolas'),
('3314-7/17', 'Manutenção e reparação de máquinas e equipamentos de terraplenagem, pavimentação e construção, exceto tratores'),
('3314-7/18', 'Manutenção e reparação de máquinas para a indústria metalúrgica, exceto máquinas-ferramenta'),
('3314-7/19', 'Manutenção e reparação de máquinas e equipamentos para as indústrias de alimentos, bebidas e fumo'),
('3314-7/20', 'Manutenção e reparação de máquinas e equipamentos para a indústria têxtil, do vestuário, do couro e calçados'),
('3314-7/21', 'Manutenção e reparação de máquinas e aparelhos para a indústria de celulose, papel e papelão e artefatos'),
('3314-7/22', 'Manutenção e reparação de máquinas e aparelhos para a indústria do plástico'),
('3314-7/99', 'Manutenção e reparação de outras máquinas e equipamentos para usos industriais não especificados anteriormente'),
('3315-5/00', 'Manutenção e reparação de veículos ferroviários'),
('3316-3/01', 'Manutenção e reparação de aeronaves, exceto a manutenção na pista'),
('3316-3/02', 'Manutenção de aeronaves na pista *'),
('3319-8/00', 'Manutenção e reparação de equipamentos e produtos não especificados anteriormente'),
('3321-0/00', 'Instalação de máquinas e equipamentos industriais'),
('3329-5/01', 'Serviços de montagem de móveis de qualquer material'),
('3329-5/99', 'Instalação de outros equipamentos não especificados anteriormente'),
('3511-5/00', 'Geração de energia elétrica'),
('3512-3/00', 'Transmissão de energia elétrica'),
('3513-1/00', 'Comércio atacadista de energia elétrica'),
('3514-0/00', 'Distribuição de energia elétrica'),
('3520-4/01', 'Produção de gás; processamento de gás natural'),
('3520-4/02', 'Distribuição de combustíveis gasosos por redes urbanas'),
('3530-1/00', 'Produção e distribuição de vapor, água quente e ar condicionado'),
('3600-6/01', 'Captação, tratamento e distribuição de água'),
('3600-6/02', 'Distribuição de água por caminhões'),
('3701-1/00', 'Gestão de redes de esgoto'),
('3702-9/00', 'Atividades relacionadas a esgoto, exceto a gestão de redes'),
('3811-4/00', 'Coleta de resíduos não-perigosos'),
('3812-2/00', 'Coleta de resíduos perigosos'),
('3821-1/00', 'Tratamento e disposição de resíduos não-perigosos'),
('3822-0/00', 'Tratamento e disposição de resíduos perigosos'),
('3831-9/01', 'Recuperação de sucatas de alumínio'),
('3831-9/99', 'Recuperação de materiais metálicos, exceto alumínio'),
('3832-7/00', 'Recuperação de materiais plásticos'),
('3839-4/01', 'Usinas de compostagem'),
('3839-4/99', 'Recuperação de materiais não especificados anteriormente'),
('3900-5/00', 'Descontaminação e outros serviços de gestão de resíduos'),
('4110-7/00', 'Incorporação de empreendimentos imobiliários'),
('4120-4/00', 'Construção de edifícios'),
('4211-1/01', 'Construção de rodovias e ferrovias'),
('4211-1/02', 'Pintura para sinalização em pistas rodoviárias e aeroportos'),
('4212-0/00', 'Construção de obras de arte especiais'),
('4213-8/00', 'Obras de urbanização - ruas, praças e calçadas'),
('4221-9/01', 'Construção de barragens e represas para geração de energia elétrica'),
('4221-9/02', 'Construção de estações e redes de distribuição de energia elétrica'),
('4221-9/03', 'Manutenção de redes de distribuição de energia elétrica'),
('4221-9/04', 'Construção de estações e redes de telecomunicações'),
('4221-9/05', 'Manutenção de estações e redes de telecomunicações'),
('4222-7/01', 'Construção de redes de abastecimento de água, coleta de esgoto e construções correlatas, exceto obras de irrigação'),
('4222-7/02', 'Obras de irrigação'),
('4223-5/00', 'Construção de redes de transportes por dutos, exceto para água e esgoto'),
('4291-0/00', 'Obras portuárias, marítimas e fluviais'),
('4292-8/01', 'Montagem de estruturas metálicas'),
('4292-8/02', 'Obras de montagem industrial'),
('4299-5/01', 'Construção de instalações esportivas e recreativas'),
('4299-5/99', 'Outras obras de engenharia civil não especificadas anteriormente'),
('4311-8/01', 'Demolição de edifícios e outras estruturas'),
('4311-8/02', 'Preparação de canteiro e limpeza de terreno'),
('4312-6/00', 'Perfurações e sondagens'),
('4313-4/00', 'Obras de terraplenagem'),
('4319-3/00', 'Serviços de preparação do terreno não especificados anteriormente'),
('4321-5/00', 'Instalação e manutenção elétrica'),
('4322-3/01', 'Instalações hidráulicas, sanitárias e de gás'),
('4322-3/02', 'Instalação e manutenção de sistemas centrais de ar condicionado, de ventilação e refrigeração'),
('4322-3/03', 'Instalações de sistema de prevenção contra incêndio'),
('4329-1/01', 'Instalação de painéis publicitários'),
('4329-1/02', 'Instalação de equipamentos para orientação à navegação marítima, fluvial e lacustre'),
('4329-1/03', 'Instalação, manutenção e reparação de elevadores, escadas e esteiras rolantes, exceto de fabricação própria'),
('4329-1/04', 'Montagem e instalação de sistemas e equipamentos de iluminação e sinalização em vias públicas, portos e aeroportos'),
('4329-1/05', 'Tratamentos térmicos, acústicos ou de vibração'),
('4329-1/99', 'Outras obras de instalações em construções não especificadas anteriormente'),
('4330-4/01', 'Impermeabilização em obras de engenharia civil'),
('4330-4/02', 'Instalação de portas, janelas, tetos, divisórias e armários embutidos de qualquer material'),
('4330-4/03', 'Obras de acabamento em gesso e estuque'),
('4330-4/04', 'Serviços de pintura de edifícios em geral'),
('4330-4/05', 'Aplicação de revestimentos e de resinas em interiores e exteriores'),
('4330-4/99', 'Outras obras de acabamento da construção'),
('4391-6/00', 'Obras de fundações'),
('4399-1/01', 'Administração de obras'),
('4399-1/02', 'Montagem e desmontagem de andaimes e outras estruturas temporárias'),
('4399-1/03', 'Obras de alvenaria'),
('4399-1/04', 'Serviços de operação e fornecimento de equipamentos para transporte e elevação de cargas e pessoas para uso em obras'),
('4399-1/05', 'Perfuração e construção de poços de água'),
('4399-1/99', 'Serviços especializados para construção não especificados anteriormente'),
('4511-1/01', 'Comércio a varejo de automóveis, camionetas e utilitários novos'),
('4511-1/02', 'Comércio a varejo de automóveis, camionetas e utilitários usados'),
('4511-1/03', 'Comércio por atacado de automóveis, camionetas e utilitários novos e usados'),
('4511-1/04', 'Comércio por atacado de caminhões novos e usados'),
('4511-1/05', 'Comércio por atacado de reboques e semi-reboques novos e usados'),
('4511-1/06', 'Comércio por atacado de ônibus e microônibus novos e usados'),
('4512-9/01', 'Representantes comerciais e agentes do comércio de veículos automotores'),
('4512-9/02', 'Comércio sob consignação de veículos automotores'),
('4520-0/01', 'Serviços de manutenção e reparação mecânica de veículos automotores'),
('4520-0/02', 'Serviços de lanternagem ou funilaria e pintura de veículos automotores'),
('4520-0/03', 'Serviços de manutenção e reparação elétrica de veículos automotores'),
('4520-0/04', 'Serviços de alinhamento e balanceamento de veículos automotores'),
('4520-0/05', 'Serviços de lavagem, lubrificação e polimento de veículos automotores'),
('4520-0/06', 'Serviços de borracharia para veículos automotores'),
('4520-0/07', 'Serviços de instalação, manutenção e reparação de acessórios para veículos automotores'),
('4530-7/01', 'Comércio por atacado de peças e acessórios novos para veículos automotores'),
('4530-7/02', 'Comércio por atacado de pneumáticos e câmaras-de-ar'),
('4530-7/03', 'Comércio a varejo de peças e acessórios novos para veículos automotores'),
('4530-7/04', 'Comércio a varejo de peças e acessórios usados para veículos automotores'),
('4530-7/05', 'Comércio a varejo de pneumáticos e câmaras-de-ar'),
('4530-7/06', 'Representantes comerciais e agentes do comércio de peças e acessórios novos e usados para veículos automotores'),
('4541-2/01', 'Comércio por atacado de motocicletas e motonetas'),
('4541-2/02', 'Comércio por atacado de peças e acessórios para motocicletas e motonetas'),
('4541-2/03', 'Comércio a varejo de motocicletas e motonetas novas'),
('4541-2/04', 'Comércio a varejo de motocicletas e motonetas usadas'),
('4541-2/05', 'Comércio a varejo de peças e acessórios para motocicletas e motonetas'),
('4542-1/01', 'Representantes comerciais e agentes do comércio de motocicletas e motonetas, peças e acessórios'),
('4542-1/02', 'Comércio sob consignação de motocicletas e motonetas'),
('4543-9/00', 'Manutenção e reparação de motocicletas e motonetas'),
('4611-7/00', 'Representantes comerciais e agentes do comércio de matérias-primas agrícolas e animais vivos'),
('4612-5/00', 'Representantes comerciais e agentes do comércio de combustíveis, minerais, produtos siderúrgicos e químicos'),
('4613-3/00', 'Representantes comerciais e agentes do comércio de madeira, material de construção e ferragens'),
('4614-1/00', 'Representantes comerciais e agentes do comércio de máquinas, equipamentos, embarcações e aeronaves'),
('4615-0/00', 'Representantes comerciais e agentes do comércio de eletrodomésticos, móveis e artigos de uso doméstico'),
('4616-8/00', 'Representantes comerciais e agentes do comércio de têxteis, vestuário, calçados e artigos de viagem'),
('4617-6/00', 'Representantes comerciais e agentes do comércio de produtos alimentícios, bebidas e fumo'),
('4618-4/01', 'Representantes comerciais e agentes do comércio de medicamentos, cosméticos e produtos de perfumaria'),
('4618-4/02', 'Representantes comerciais e agentes do comércio de instrumentos e materiais odonto-médico-hospitalares'),
('4618-4/03', 'Representantes comerciais e agentes do comércio de jornais, revistas e outras publicações'),
('4618-4/99', 'Outros representantes comerciais e agentes do comércio especializado em produtos não especificados anteriormente'),
('4619-2/00', 'Representantes comerciais e agentes do comércio de mercadorias em geral não especializado'),
('4621-4/00', 'Comércio atacadista de café em grão'),
('4622-2/00', 'Comércio atacadista de soja'),
('4623-1/01', 'Comércio atacadista de animais vivos'),
('4623-1/02', 'Comércio atacadista de couros, lãs, peles e outros subprodutos não-comestíveis de origem animal'),
('4623-1/03', 'Comércio atacadista de algodão'),
('4623-1/04', 'Comércio atacadista de fumo em folha não beneficiado'),
('4623-1/05', 'Comércio atacadista de cacau *'),
('4623-1/06', 'Comércio atacadista de sementes, flores, plantas e gramas'),
('4623-1/07', 'Comércio atacadista de sisal'),
('4623-1/08', 'Comércio atacadista de matérias-primas agrícolas com atividade de fracionamento e acondicionamento associada'),
('4623-1/09', 'Comércio atacadista de alimentos para animais'),
('4623-1/99', 'Comércio atacadista de matérias-primas agrícolas não especificadas anteriormente'),
('4631-1/00', 'Comércio atacadista de leite e laticínios'),
('4632-0/01', 'Comércio atacadista de cereais e leguminosas beneficiados'),
('4632-0/02', 'Comércio atacadista de farinhas, amidos e féculas'),
('4632-0/03', 'Comércio atacadista de cereais e leguminosas beneficiados, farinhas, amidos e féculas, com atividade de fracionamento e acondicionamento associada'),
('4633-8/01', 'Comércio atacadista de frutas, verduras, raízes, tubérculos, hortaliças e legumes frescos'),
('4633-8/02', 'Comércio atacadista de aves vivas e ovos'),
('4633-8/03', 'Comércio atacadista de coelhos e outros pequenos animais vivos para alimentação'),
('4634-6/01', 'Comércio atacadista de carnes bovinas e suínas e derivados'),
('4634-6/02', 'Comércio atacadista de aves abatidas e derivados'),
('4634-6/03', 'Comércio atacadista de pescados e frutos do mar');
INSERT INTO `cnae` (`codigo_cnae`, `desc_cnae`) VALUES
('4634-6/99', 'Comércio atacadista de carnes e derivados de outros animais'),
('4635-4/01', 'Comércio atacadista de água mineral'),
('4635-4/02', 'Comércio atacadista de cerveja, chope e refrigerante'),
('4635-4/03', 'Comércio atacadista de bebidas com atividade de fracionamento e acondicionamento associada'),
('4635-4/99', 'Comércio atacadista de bebidas não especificadas anteriormente'),
('4636-2/01', 'Comércio atacadista de fumo beneficiado'),
('4636-2/02', 'Comércio atacadista de cigarros, cigarrilhas e charutos'),
('4637-1/01', 'Comércio atacadista de café torrado, moído e solúvel'),
('4637-1/02', 'Comércio atacadista de açúcar'),
('4637-1/03', 'Comércio atacadista de óleos e gorduras'),
('4637-1/04', 'Comércio atacadista de pães, bolos, biscoitos e similares'),
('4637-1/05', 'Comércio atacadista de massas alimentícias'),
('4637-1/06', 'Comércio atacadista de sorvetes'),
('4637-1/07', 'Comércio atacadista de chocolates, confeitos, balas, bombons e semelhantes'),
('4637-1/99', 'Comércio atacadista especializado em outros produtos alimentícios não especificados anteriormente'),
('4639-7/01', 'Comércio atacadista de produtos alimentícios em geral'),
('4639-7/02', 'Comércio atacadista de produtos alimentícios em geral, com atividade de fracionamento e acondicionamento associada'),
('4641-9/01', 'Comércio atacadista de tecidos'),
('4641-9/02', 'Comércio atacadista de artigos de cama, mesa e banho'),
('4641-9/03', 'Comércio atacadista de artigos de armarinho'),
('4642-7/01', 'Comércio atacadista de artigos do vestuário e acessórios, exceto profissionais e de segurança'),
('4642-7/02', 'Comércio atacadista de roupas e acessórios para uso profissional e de segurança do trabalho'),
('4643-5/01', 'Comércio atacadista de calçados'),
('4643-5/02', 'Comércio atacadista de bolsas, malas e artigos de viagem'),
('4644-3/01', 'Comércio atacadista de medicamentos e drogas de uso humano'),
('4644-3/02', 'Comércio atacadista de medicamentos e drogas de uso veterinário'),
('4645-1/01', 'Comércio atacadista de instrumentos e materiais para uso médico, cirúrgico, hospitalar e de laboratórios'),
('4645-1/02', 'Comércio atacadista de próteses e artigos de ortopedia'),
('4645-1/03', 'Comércio atacadista de produtos odontológicos'),
('4646-0/01', 'Comércio atacadista de cosméticos e produtos de perfumaria'),
('4646-0/02', 'Comércio atacadista de produtos de higiene pessoal'),
('4647-8/01', 'Comércio atacadista de artigos de escritório e de papelaria'),
('4647-8/02', 'Comércio atacadista de livros, jornais e outras publicações'),
('4649-4/01', 'Comércio atacadista de equipamentos elétricos de uso pessoal e doméstico'),
('4649-4/02', 'Comércio atacadista de aparelhos eletrônicos de uso pessoal e doméstico'),
('4649-4/03', 'Comércio atacadista de bicicletas, triciclos e outros veículos recreativos'),
('4649-4/04', 'Comércio atacadista de móveis e artigos de colchoaria'),
('4649-4/05', 'Comércio atacadista de artigos de tapeçaria; persianas e cortinas'),
('4649-4/06', 'Comércio atacadista de lustres, luminárias e abajures'),
('4649-4/07', 'Comércio atacadista de filmes, CDs, DVDs, fitas e discos'),
('4649-4/08', 'Comércio atacadista de produtos de higiene, limpeza e conservação domiciliar'),
('4649-4/09', 'Comércio atacadista de produtos de higiene, limpeza e conservação domiciliar, com atividade de fracionamento e acondicionamento associada'),
('4649-4/10', 'Comércio atacadista de jóias, relógios e bijuterias, inclusive pedras preciosas e semipreciosas lapidadas'),
('4649-4/99', 'Comércio atacadista de outros equipamentos e artigos de uso pessoal e doméstico não especificados anteriormente'),
('4651-6/01', 'Comércio atacadista de equipamentos de informática'),
('4651-6/02', 'Comércio atacadista de suprimentos para informática'),
('4652-4/00', 'Comércio atacadista de componentes eletrônicos e equipamentos de telefonia e comunicação'),
('4661-3/00', 'Comércio atacadista de máquinas, aparelhos e equipamentos para uso agropecuário; partes e peças'),
('4662-1/00', 'Comércio atacadista de máquinas, equipamentos para terraplenagem, mineração e construção; partes e peças'),
('4663-0/00', 'Comércio atacadista de máquinas e equipamentos para uso industrial; partes e peças'),
('4664-8/00', 'Comércio atacadista de máquinas, aparelhos e equipamentos para uso odonto-médico-hospitalar; partes e peças'),
('4665-6/00', 'Comércio atacadista de máquinas e equipamentos para uso comercial; partes e peças'),
('4669-9/01', 'Comércio atacadista de bombas e compressores; partes e peças'),
('4669-9/99', 'Comércio atacadista de outras máquinas e equipamentos não especificados anteriormente; partes e peças'),
('4671-1/00', 'Comércio atacadista de madeira e produtos derivados'),
('4672-9/00', 'Comércio atacadista de ferragens e ferramentas'),
('4673-7/00', 'Comércio atacadista de material elétrico'),
('4674-5/00', 'Comércio atacadista de cimento'),
('4679-6/01', 'Comércio atacadista de tintas, vernizes e similares'),
('4679-6/02', 'Comércio atacadista de mármores e granitos'),
('4679-6/03', 'Comércio atacadista de vidros, espelhos e vitrais'),
('4679-6/04', 'Comércio atacadista especializado de materiais de construção não especificados anteriormente'),
('4679-6/99', 'Comércio atacadista de materiais de construção em geral'),
('4681-8/01', 'Comércio atacadista de álcool carburante, biodiesel, gasolina e demais derivados de petróleo, exceto lubrificantes, não realizado por transportador retalhista (TRR)'),
('4681-8/02', 'Comércio atacadista de combustíveis realizado por transportador retalhista (TRR)'),
('4681-8/03', 'Comércio atacadista de combustíveis de origem vegetal, exceto álcool carburante'),
('4681-8/04', 'Comércio atacadista de combustíveis de origem mineral em bruto'),
('4681-8/05', 'Comércio atacadista de lubrificantes'),
('4682-6/00', 'Comércio atacadista de gás liqüefeito de petróleo (GLP)'),
('4683-4/00', 'Comércio atacadista de defensivos agrícolas, adubos, fertilizantes e corretivos do solo'),
('4684-2/01', 'Comércio atacadista de resinas e elastômeros'),
('4684-2/02', 'Comércio atacadista de solventes'),
('4684-2/99', 'Comércio atacadista de outros produtos químicos e petroquímicos não especificados anteriormente'),
('4685-1/00', 'Comércio atacadista de produtos siderúrgicos e metalúrgicos, exceto para construção'),
('4686-9/01', 'Comércio atacadista de papel e papelão em bruto'),
('4686-9/02', 'Comércio atacadista de embalagens'),
('4687-7/01', 'Comércio atacadista de resíduos de papel e papelão'),
('4687-7/02', 'Comércio atacadista de resíduos e sucatas não-metálicos, exceto de papel e papelão'),
('4687-7/03', 'Comércio atacadista de resíduos e sucatas metálicos'),
('4689-3/01', 'Comércio atacadista de produtos da extração mineral, exceto combustíveis'),
('4689-3/02', 'Comércio atacadista de fios e fibras têxteis beneficiados *'),
('4689-3/99', 'Comércio atacadista especializado em outros produtos intermediários não especificados anteriormente *'),
('4691-5/00', 'Comércio atacadista de mercadorias em geral, com predominância de produtos alimentícios'),
('4692-3/00', 'Comércio atacadista de mercadorias em geral, com predominância de insumos agropecuários'),
('4693-1/00', 'Comércio atacadista de mercadorias em geral, sem predominância de alimentos ou de insumos agropecuários'),
('4711-3/01', 'Comércio varejista de mercadorias em geral, com predominância de produtos alimentícios - hipermercados'),
('4711-3/02', 'Comércio varejista de mercadorias em geral, com predominância de produtos alimentícios - supermercados'),
('4712-1/00', 'Comércio varejista de mercadorias em geral, com predominância de produtos alimentícios - minimercados, mercearias e armazéns'),
('4713-0/01', 'Lojas de departamentos ou magazines'),
('4713-0/02', 'Lojas de variedades, exceto lojas de departamentos ou magazines'),
('4713-0/03', 'Lojas duty free de aeroportos internacionais'),
('4721-1/01', 'Padaria e confeitaria com predominância de produção própria'),
('4721-1/02', 'Padaria e confeitaria com predominância de revenda'),
('4721-1/03', 'Comércio varejista de laticínios e frios'),
('4721-1/04', 'Comércio varejista de doces, balas, bombons e semelhantes'),
('4722-9/01', 'Comércio varejista de carnes - açougues'),
('4722-9/02', 'Peixaria'),
('4723-7/00', 'Comércio varejista de bebidas'),
('4724-5/00', 'Comércio varejista de hortifrutigranjeiros'),
('4729-6/01', 'Tabacaria'),
('4729-6/99', 'Comércio varejista de produtos alimentícios em geral ou especializado em produtos alimentícios não especificados anteriormente'),
('4731-8/00', 'Comércio varejista de combustíveis para veículos automotores'),
('4732-6/00', 'Comércio varejista de lubrificantes'),
('4741-5/00', 'Comércio varejista de tintas e materiais para pintura'),
('4742-3/00', 'Comércio varejista de material elétrico'),
('4743-1/00', 'Comércio varejista de vidros'),
('4744-0/01', 'Comércio varejista de ferragens e ferramentas'),
('4744-0/02', 'Comércio varejista de madeira e artefatos'),
('4744-0/03', 'Comércio varejista de materiais hidráulicos'),
('4744-0/04', 'Comércio varejista de cal, areia, pedra britada, tijolos e telhas'),
('4744-0/05', 'Comércio varejista de materiais de construção não especificados anteriormente'),
('4744-0/99', 'Comércio varejista de materiais de construção em geral'),
('4751-2/00', 'Comércio varejista especializado de equipamentos e suprimentos de informática'),
('4752-1/00', 'Comércio varejista especializado de equipamentos de telefonia e comunicação'),
('4753-9/00', 'Comércio varejista especializado de eletrodomésticos e equipamentos de áudio e vídeo'),
('4754-7/01', 'Comércio varejista de móveis'),
('4754-7/02', 'Comércio varejista de artigos de colchoaria'),
('4754-7/03', 'Comércio varejista de artigos de iluminação'),
('4755-5/01', 'Comércio varejista de tecidos'),
('4755-5/02', 'Comercio varejista de artigos de armarinho'),
('4755-5/03', 'Comercio varejista de artigos de cama, mesa e banho'),
('4756-3/00', 'Comércio varejista especializado de instrumentos musicais e acessórios'),
('4757-1/00', 'Comércio varejista especializado de peças e acessórios para aparelhos eletroeletrônicos para uso doméstico, exceto informática e comunicação'),
('4759-8/01', 'Comércio varejista de artigos de tapeçaria, cortinas e persianas'),
('4759-8/99', 'Comércio varejista de outros artigos de uso doméstico não especificados anteriormente'),
('4761-0/01', 'Comércio varejista de livros'),
('4761-0/02', 'Comércio varejista de jornais e revistas'),
('4761-0/03', 'Comércio varejista de artigos de papelaria'),
('4762-8/00', 'Comércio varejista de discos, CDs, DVDs e fitas'),
('4763-6/01', 'Comércio varejista de brinquedos e artigos recreativos'),
('4763-6/02', 'Comércio varejista de artigos esportivos'),
('4763-6/03', 'Comércio varejista de bicicletas e triciclos; peças e acessórios'),
('4763-6/04', 'Comércio varejista de artigos de caça, pesca e camping'),
('4763-6/05', 'Comércio varejista de embarcações e outros veículos recreativos; peças e acessórios'),
('4771-7/01', 'Comércio varejista de produtos farmacêuticos, sem manipulação de fórmulas'),
('4771-7/02', 'Comércio varejista de produtos farmacêuticos, com manipulação de fórmulas'),
('4771-7/03', 'Comércio varejista de produtos farmacêuticos homeopáticos'),
('4771-7/04', 'Comércio varejista de medicamentos veterinários'),
('4772-5/00', 'Comércio varejista de cosméticos, produtos de perfumaria e de higiene pessoal'),
('4773-3/00', 'Comércio varejista de artigos médicos e ortopédicos'),
('4774-1/00', 'Comércio varejista de artigos de óptica'),
('4781-4/00', 'Comércio varejista de artigos do vestuário e acessórios'),
('4782-2/01', 'Comércio varejista de calçados'),
('4782-2/02', 'Comércio varejista de artigos de viagem'),
('4783-1/01', 'Comércio varejista de artigos de joalheria'),
('4783-1/02', 'Comércio varejista de artigos de relojoaria'),
('4784-9/00', 'Comércio varejista de gás liqüefeito de petróleo (GLP)'),
('4785-7/01', 'Comércio varejista de antigüidades'),
('4785-7/99', 'Comércio varejista de outros artigos usados'),
('4789-0/01', 'Comércio varejista de suvenires, bijuterias e artesanatos'),
('4789-0/02', 'Comércio varejista de plantas e flores naturais'),
('4789-0/03', 'Comércio varejista de objetos de arte'),
('4789-0/04', 'Comércio varejista de animais vivos e de artigos e alimentos para animais de estimação'),
('4789-0/05', 'Comércio varejista de produtos saneantes domissanitários'),
('4789-0/06', 'Comércio varejista de fogos de artifício e artigos pirotécnicos'),
('4789-0/07', 'Comércio varejista de equipamentos para escritório'),
('4789-0/08', 'Comércio varejista de artigos fotográficos e para filmagem'),
('4789-0/09', 'Comércio varejista de armas e munições'),
('4789-0/99', 'Comércio varejista de outros produtos não especificados anteriormente'),
('4911-6/00', 'Transporte ferroviário de carga'),
('4912-4/01', 'Transporte ferroviário de passageiros intermunicipal e interestadual'),
('4912-4/02', 'Transporte ferroviário de passageiros municipal e em região metropolitana'),
('4912-4/03', 'Transporte metroviário'),
('4921-3/01', 'Transporte rodoviário coletivo de passageiros, com itinerário fixo, municipal'),
('4921-3/02', 'Transporte rodoviário coletivo de passageiros, com itinerário fixo, intermunicipal em região metropolitana'),
('4922-1/01', 'Transporte rodoviário coletivo de passageiros, com itinerário fixo, intermunicipal, exceto em região metropolitana'),
('4922-1/02', 'Transporte rodoviário coletivo de passageiros, com itinerário fixo, interestadual'),
('4922-1/03', 'Transporte rodoviário coletivo de passageiros, com itinerário fixo, internacional'),
('4923-0/01', 'Serviço de táxi'),
('4923-0/02', 'Serviço de transporte de passageiros - locação de automóveis com motorista'),
('4924-8/00', 'Transporte escolar'),
('4929-9/01', 'Transporte rodoviário coletivo de passageiros, sob regime de fretamento, municipal'),
('4929-9/02', 'Transporte rodoviário coletivo de passageiros, sob regime de fretamento, intermunicipal, interestadual e internacional'),
('4929-9/03', 'Organização de excursões em veículos rodoviários próprios, municipal'),
('4929-9/04', 'Organização de excursões em veículos rodoviários próprios, intermunicipal, interestadual e internacional'),
('4929-9/99', 'Outros transportes rodoviários de passageiros não especificados anteriormente'),
('4930-2/01', 'Transporte rodoviário de carga, exceto produtos perigosos e mudanças, municipal'),
('4930-2/02', 'Transporte rodoviário de carga, exceto produtos perigosos e mudanças, intermunicipal, interestadual e internacional'),
('4930-2/03', 'Transporte rodoviário de produtos perigosos'),
('4930-2/04', 'Transporte rodoviário de mudanças'),
('4940-0/00', 'Transporte dutoviário'),
('4950-7/00', 'Trens turísticos, teleféricos e similares'),
('5011-4/01', 'Transporte marítimo de cabotagem - Carga'),
('5011-4/02', 'Transporte marítimo de cabotagem - passageiros'),
('5012-2/01', 'Transporte marítimo de longo curso - Carga'),
('5012-2/02', 'Transporte marítimo de longo curso - Passageiros'),
('5021-1/01', 'Transporte por navegação interior de carga, municipal, exceto travessia'),
('5021-1/02', 'Transporte por navegação interior de carga, intermunicipal, interestadual e internacional, exceto travessia'),
('5022-0/01', 'Transporte por navegação interior de passageiros em linhas regulares, municipal, exceto travessia'),
('5022-0/02', 'Transporte por navegação interior de passageiros em linhas regulares, intermunicipal, interestadual e internacional, exceto travessia'),
('5030-1/01', 'Navegação de apoio marítimo'),
('5030-1/02', 'Navegação de apoio portuário'),
('5091-2/01', 'Transporte por navegação de travessia, municipal'),
('5091-2/02', 'Transporte por navegação de travessia, intermunicipal'),
('5099-8/01', 'Transporte aquaviário para passeios turísticos'),
('5099-8/99', 'Outros transportes aquaviários não especificados anteriormente'),
('5111-1/00', 'Transporte aéreo de passageiros regular'),
('5112-9/01', 'Serviço de táxi aéreo e locação de aeronaves com tripulação'),
('5112-9/99', 'Outros serviços de transporte aéreo de passageiros não-regular'),
('5120-0/00', 'Transporte aéreo de carga'),
('5130-7/00', 'Transporte espacial'),
('5211-7/01', 'Armazéns gerais - emissão de warrant'),
('5211-7/02', 'Guarda-móveis'),
('5211-7/99', 'Depósitos de mercadorias para terceiros, exceto armazéns gerais e guarda-móveis'),
('5212-5/00', 'Carga e descarga'),
('5221-4/00', 'Concessionárias de rodovias, pontes, túneis e serviços relacionados'),
('5222-2/00', 'Terminais rodoviários e ferroviários'),
('5223-1/00', 'Estacionamento de veículos'),
('5229-0/01', 'Serviços de apoio ao transporte por táxi, inclusive centrais de chamada'),
('5229-0/02', 'Serviços de reboque de veículos'),
('5229-0/99', 'Outras atividades auxiliares dos transportes terrestres não especificadas anteriormente'),
('5231-1/01', 'Administração da infra-estrutura portuária'),
('5231-1/02', 'Operações de terminais'),
('5232-0/00', 'Atividades de agenciamento marítimo'),
('5239-7/00', 'Atividades auxiliares dos transportes aquaviários não especificadas anteriormente'),
('5240-1/01', 'Operação dos aeroportos e campos de aterrissagem'),
('5240-1/99', 'Atividades auxiliares dos transportes aéreos, exceto operação dos aeroportos e campos de aterrissagem'),
('5250-8/01', 'Comissaria de despachos'),
('5250-8/02', 'Atividades de despachantes aduaneiros'),
('5250-8/03', 'Agenciamento de cargas, exceto para o transporte marítimo'),
('5250-8/04', 'Organização logística do transporte de carga'),
('5250-8/05', 'Operador de transporte multimodal - OTM'),
('5310-5/01', 'Atividades do Correio Nacional'),
('5310-5/02', 'Atividades de  franqueadas e permissionárias do Correio Nacional'),
('5320-2/01', 'Serviços de malote não realizados pelo Correio Nacional'),
('5320-2/02', 'Serviços de entrega rápida'),
('5510-8/01', 'Hotéis'),
('5510-8/02', 'Apart-hotéis'),
('5510-8/03', 'Motéis'),
('5590-6/01', 'Albergues, exceto assistenciais'),
('5590-6/02', 'Campings'),
('5590-6/03', 'Pensões'),
('5590-6/99', 'Outros alojamentos não especificados anteriormente'),
('5611-2/01', 'Restaurantes e similares'),
('5611-2/02', 'Bares e outros estabelecimentos especializados em servir bebidas'),
('5611-2/03', 'Lanchonetes, casas de chá, de sucos e similares'),
('5612-1/00', 'Serviços ambulantes de alimentação'),
('5620-1/01', 'Fornecimento de alimentos preparados preponderantemente para empresas'),
('5620-1/02', 'Serviços de alimentação para eventos e recepções - bufê'),
('5620-1/03', 'Cantinas - serviços de alimentação privativos'),
('5620-1/04', 'Fornecimento de alimentos preparados preponderantemente para consumo domiciliar'),
('5811-5/00', 'Edição de livros'),
('5812-3/00', 'Edição de jornais'),
('5813-1/00', 'Edição de revistas'),
('5819-1/00', 'Edição de cadastros, listas e de outros produtos gráficos'),
('5821-2/00', 'Edição integrada à impressão de livros'),
('5822-1/00', 'Edição integrada à impressão de jornais'),
('5823-9/00', 'Edição integrada à impressão de revistas'),
('5829-8/00', 'Edição integrada à impressão de cadastros, listas e de outros produtos gráficos'),
('5911-1/01', 'Estúdios cinematográficos'),
('5911-1/02', 'Produção de filmes para publicidade'),
('5911-1/99', 'Atividades de produção cinematográfica, de vídeos e de programas de televisão não especificadas anteriormente'),
('5912-0/01', 'Serviços de dublagem'),
('5912-0/02', 'Serviços de mixagem sonora'),
('5912-0/99', 'Atividades de pós-produção cinematográfica, de vídeos e de programas de televisão não especificadas anteriormente'),
('5913-8/00', 'Distribuição cinematográfica, de vídeo e de programas de televisão'),
('5914-6/00', 'Atividades de exibição cinematográfica'),
('5920-1/00', 'Atividades de gravação de som e de edição de música'),
('6010-1/00', 'Atividades de rádio'),
('6021-7/00', 'Atividades de televisão aberta'),
('6022-5/01', 'Programadoras'),
('6022-5/02', 'Atividades relacionadas à televisão por assinatura, exceto programadoras'),
('6110-8/01', 'Serviços de telefonia fixa comutada - STFC'),
('6110-8/02', 'Serviços de redes de transportes de telecomunicações - SRTT'),
('6110-8/03', 'Serviços de comunicação multimídia - SMC'),
('6110-8/99', 'Serviços de telecomunicações por fio não especificados anteriormente'),
('6120-5/01', 'Telefonia móvel celular'),
('6120-5/02', 'Serviço móvel especializado - SME'),
('6120-5/99', 'Serviços de telecomunicações sem fio não especificados anteriormente'),
('6130-2/00', 'Telecomunicações por satélite'),
('6141-8/00', 'Operadoras de televisão por assinatura por cabo'),
('6142-6/00', 'Operadoras de televisão por assinatura por microondas'),
('6143-4/00', 'Operadoras de televisão por assinatura por satélite'),
('6190-6/01', 'Provedores de acesso às redes de comunicações'),
('6190-6/02', 'Provedores de voz sobre protocolo internet - VOIP'),
('6190-6/99', 'Outras atividades de telecomunicações não especificadas anteriormente'),
('6201-5/00', 'Desenvolvimento de programas de computador sob encomenda'),
('6202-3/00', 'Desenvolvimento e licenciamento de programas de computador customizáveis'),
('6203-1/00', 'Desenvolvimento e licenciamento de programas de computador não-customizáveis'),
('6204-0/00', 'Consultoria em tecnologia da informação'),
('6209-1/00', 'Suporte técnico, manutenção e outros serviços em tecnologia da informação'),
('6311-9/00', 'Tratamento de dados, provedores de serviços de aplicação e serviços de hospedagem na internet'),
('6319-4/00', 'Portais, provedores de conteúdo e outros serviços de informação na internet'),
('6391-7/00', 'Agências de notícias'),
('6399-2/00', 'Outras atividades de prestação de serviços de informação não especificadas anteriormente'),
('6410-7/00', 'Banco Central'),
('6421-2/00', 'Bancos comerciais'),
('6422-1/00', 'Bancos múltiplos, com carteira comercial'),
('6423-9/00', 'Caixas econômicas'),
('6424-7/01', 'Bancos cooperativos'),
('6424-7/02', 'Cooperativas centrais de crédito'),
('6424-7/03', 'Cooperativas de crédito mútuo'),
('6424-7/04', 'Cooperativas de crédito rural'),
('6431-0/00', 'Bancos múltiplos, sem carteira comercial'),
('6432-8/00', 'Bancos de investimento'),
('6433-6/00', 'Bancos de desenvolvimento'),
('6434-4/00', 'Agências de fomento'),
('6435-2/01', 'Sociedades de crédito imobiliário'),
('6435-2/02', 'Associações de poupança e empréstimo'),
('6435-2/03', 'Companhias hipotecárias'),
('6436-1/00', 'Sociedades de crédito, financiamento e investimento - financeiras'),
('6437-9/00', 'Sociedades de crédito ao microempreendedor'),
('6440-9/00', 'Arrendamento mercantil'),
('6450-6/00', 'Sociedades de capitalização'),
('6461-1/00', 'Holdings de instituições financeiras'),
('6462-0/00', 'Holdings de instituições não-financeiras'),
('6463-8/00', 'Outras sociedades de participação, exceto holdings'),
('6470-1/01', 'Fundos de investimento, exceto previdenciários e imobiliários'),
('6470-1/02', 'Fundos de investimento previdenciários'),
('6470-1/03', 'Fundos de investimento imobiliários'),
('6491-3/00', 'Sociedades de fomento mercantil - factoring'),
('6492-1/00', 'Securitização de créditos'),
('6493-0/00', 'Administração de consórcios para aquisição de bens e direitos'),
('6499-9/01', 'Clubes de investimento'),
('6499-9/02', 'Sociedades de investimento'),
('6499-9/03', 'Fundo garantidor de crédito'),
('6499-9/04', 'Caixas de financiamento de corporações'),
('6499-9/05', 'Concessão de crédito pelas OSCIP'),
('6499-9/99', 'Outras atividades de serviços financeiros não especificadas anteriormente'),
('6511-1/01', 'Seguros de vida'),
('6511-1/02', 'Planos de auxílio-funeral'),
('6512-0/00', 'Seguros não-vida'),
('6520-1/00', 'Seguros-saúde'),
('6530-8/00', 'Resseguros'),
('6541-3/00', 'Previdência complementar fechada'),
('6542-1/00', 'Previdência complementar aberta'),
('6550-2/00', 'Planos de saúde'),
('6611-8/01', 'Bolsa de valores'),
('6611-8/02', 'Bolsa de mercadorias'),
('6611-8/03', 'Bolsa de mercadorias e futuros'),
('6611-8/04', 'Administração de mercados de balcão organizados'),
('6612-6/01', 'Corretoras de títulos e valores mobiliários'),
('6612-6/02', 'Distribuidoras de títulos e valores mobiliários'),
('6612-6/03', 'Corretoras de câmbio'),
('6612-6/04', 'Corretoras de contratos de mercadorias'),
('6612-6/05', 'Agentes de investimentos em aplicações financeiras'),
('6613-4/00', 'Administração de cartões de crédito'),
('6619-3/01', 'Serviços de liquidação e custódia'),
('6619-3/02', 'Correspondentes de instituições financeiras'),
('6619-3/03', 'Representações de bancos estrangeiros'),
('6619-3/04', 'Caixas eletrônicos'),
('6619-3/05', 'Operadoras de cartões de débito'),
('6619-3/99', 'Outras atividades auxiliares dos serviços financeiros não especificadas anteriormente'),
('6621-5/01', 'Peritos e avaliadores de seguros'),
('6621-5/02', 'Auditoria e consultoria atuarial'),
('6622-3/00', 'Corretores e agentes de seguros, de planos de previdência complementar e de saúde'),
('6629-1/00', 'Atividades auxiliares dos seguros, da previdência complementar e dos planos de saúde não especificadas anteriormente'),
('6630-4/00', 'Atividades de administração de fundos por contrato ou comissão'),
('6810-2/01', 'Compra e venda de imóveis próprios'),
('6810-2/02', 'Aluguel de imóveis próprios'),
('6821-8/01', 'Corretagem na compra e venda e avaliação de imóveis'),
('6821-8/02', 'Corretagem no aluguel de imóveis'),
('6822-6/00', 'Gestão e administração da propriedade imobiliária*'),
('6911-7/01', 'Serviços advocatícios'),
('6911-7/02', 'Atividades auxiliares da justiça'),
('6911-7/03', 'Agente de propriedade industrial'),
('6912-5/00', 'Cartórios'),
('6920-6/01', 'Atividades de contabilidade'),
('6920-6/02', 'Atividades de consultoria e auditoria contábil e tributária'),
('7020-4/00', 'Atividades de consultoria em gestão empresarial, exceto consultoria técnica específica'),
('7111-1/00', 'Serviços de arquitetura'),
('7112-0/00', 'Serviços de engenharia'),
('7119-7/01', 'Serviços de cartografia, topografia e geodésia'),
('7119-7/02', 'Atividades de estudos geológicos'),
('7119-7/03', 'Serviços de desenho técnico relacionados à arquitetura e engenharia'),
('7119-7/04', 'Serviços de perícia técnica relacionados à segurança do trabalho'),
('7119-7/99', 'Atividades técnicas relacionadas à engenharia e arquitetura não especificadas anteriormente'),
('7120-1/00', 'Testes e análises técnicas'),
('7210-0/00', 'Pesquisa e desenvolvimento experimental em ciências físicas e naturais'),
('7220-7/00', 'Pesquisa e desenvolvimento experimental em ciências sociais e humanas'),
('7311-4/00', 'Agências de publicidade'),
('7312-2/00', 'Agenciamento de espaços para publicidade, exceto em veículos de comunicação'),
('7319-0/01', 'Criação e montagem de estandes para feiras e exposições'),
('7319-0/02', 'Promoção de vendas'),
('7319-0/03', 'Marketing direto'),
('7319-0/04', 'Consultoria em publicidade'),
('7319-0/99', 'Outras atividades de publicidade não especificadas anteriormente'),
('7320-3/00', 'Pesquisas de mercado e de opinião pública'),
('7410-2/01', 'Design'),
('7410-2/02', 'Decoração de interiores'),
('7420-0/01', 'Atividades de produção de fotografias, exceto aérea e submarina'),
('7420-0/02', 'Atividades de produção de fotografias aéreas e submarinas'),
('7420-0/03', 'Laboratórios fotográficos'),
('7420-0/04', 'Filmagem de festas e eventos'),
('7420-0/05', 'Serviços de microfilmagem'),
('7490-1/01', 'Serviços de tradução, interpretação e similares'),
('7490-1/02', 'Escafandria e mergulho'),
('7490-1/03', 'Serviços de agronomia e de consultoria às atividades agrícolas e pecuárias'),
('7490-1/04', 'Atividades de intermediação e agenciamento de serviços e negócios em geral, exceto imobiliários'),
('7490-1/05', 'Agenciamento de profissionais para atividades esportivas, culturais e artísticas'),
('7490-1/99', 'Outras atividades profissionais, científicas e técnicas não especificadas anteriormente'),
('7500-1/00', 'Atividades veterinárias'),
('7711-0/00', 'Locação de automóveis sem condutor'),
('7719-5/01', 'Locação de embarcações sem tripulação, exceto para fins recreativos'),
('7719-5/02', 'Locação de aeronaves sem tripulação'),
('7719-5/99', 'Locação de outros meios de transporte não especificados anteriormente, sem condutor'),
('7721-7/00', 'Aluguel de equipamentos recreativos e esportivos'),
('7722-5/00', 'Aluguel de fitas de vídeo, DVDs e similares'),
('7723-3/00', 'Aluguel de objetos do vestuário, jóias e acessórios'),
('7729-2/01', 'Aluguel de aparelhos de jogos eletrônicos'),
('7729-2/02', 'Aluguel de móveis, utensílios e aparelhos de uso doméstico e pessoal; instrumentos musicais'),
('7729-2/03', 'Aluguel de material médico*'),
('7729-2/99', 'Aluguel de outros objetos pessoais e domésticos não especificados anteriormente'),
('7731-4/00', 'Aluguel de máquinas e equipamentos agrícolas sem operador'),
('7732-2/01', 'Aluguel de máquinas e equipamentos para construção sem operador, exceto andaimes'),
('7732-2/02', 'Aluguel de andaimes'),
('7733-1/00', 'Aluguel de máquinas e equipamentos para escritórios'),
('7739-0/01', 'Aluguel de máquinas e equipamentos para extração de minérios e petróleo, sem operador'),
('7739-0/02', 'Aluguel de equipamentos científicos, médicos e hospitalares, sem operador'),
('7739-0/03', 'Aluguel de palcos, coberturas e outras estruturas de uso temporário, exceto andaimes'),
('7739-0/99', 'Aluguel de outras máquinas e equipamentos comerciais e industriais não especificados anteriormente, sem operador'),
('7740-3/00', 'Gestão de ativos intangíveis não-financeiros'),
('7810-8/00', 'Seleção e agenciamento de mão-de-obra'),
('7820-5/00', 'Locação de mão-de-obra temporária'),
('7830-2/00', 'Fornecimento e gestão de recursos humanos para terceiros'),
('7911-2/00', 'Agências de viagens'),
('7912-1/00', 'Operadores turísticos'),
('7990-2/00', 'Serviços de reservas e outros serviços de turismo não especificados anteriormente'),
('8011-1/01', 'Atividades de vigilância e segurança privada'),
('8011-1/02', 'Serviços de adestramento de cães de guarda'),
('8012-9/00', 'Atividades de transporte de valores'),
('8020-0/00', 'Atividades de monitoramento de sistemas de segurança'),
('8030-7/00', 'Atividades de investigação particular'),
('8111-7/00', 'Serviços combinados para apoio a edifícios, exceto condomínios prediais'),
('8112-5/00', 'Condomínios prediais'),
('8121-4/00', 'Limpeza em prédios e em domicílios'),
('8122-2/00', 'Imunização e controle de pragas urbanas'),
('8129-0/00', 'Atividades de limpeza não especificadas anteriormente'),
('8130-3/00', 'Atividades paisagísticas'),
('8211-3/00', 'Serviços combinados de escritório e apoio administrativo'),
('8219-9/01', 'Fotocópias'),
('8219-9/99', 'Preparação de documentos e serviços especializados de apoio administrativo não especificados anteriormente'),
('8220-2/00', 'Atividades de teleatendimento'),
('8230-0/01', 'Serviços de organização de feiras, congressos, exposições e festas'),
('8230-0/02', 'Casas de festas e eventos'),
('8291-1/00', 'Atividades de cobranças e informações cadastrais'),
('8292-0/00', 'Envasamento e empacotamento sob contrato'),
('8299-7/01', 'Medição de consumo de energia elétrica, gás e água'),
('8299-7/02', 'Emissão de vales-alimentação, vales-transporte e similares'),
('8299-7/03', 'Serviços de gravação de carimbos, exceto confecção'),
('8299-7/04', 'Leiloeiros independentes'),
('8299-7/05', 'Serviços de levantamento de fundos sob contrato'),
('8299-7/06', 'Casas lotéricas'),
('8299-7/07', 'Salas de acesso à internet'),
('8299-7/99', 'Outras atividades de serviços prestados principalmente às empresas não especificadas anteriormente'),
('8411-6/00', 'Administração pública em geral'),
('8412-4/00', 'Regulação das atividades de saúde, educação, serviços culturais e outros serviços sociais'),
('8413-2/00', 'Regulação das atividades econômicas'),
('8414-1/00', 'Atividades de suporte à administração pública'),
('8421-3/00', 'Relações exteriores'),
('8422-1/00', 'Defesa'),
('8423-0/00', 'Justiça'),
('8424-8/00', 'Segurança e ordem pública'),
('8425-6/00', 'Defesa Civil'),
('8430-2/00', 'Seguridade social obrigatória'),
('8511-2/00', 'Educação infantil - creche'),
('8512-1/00', 'Educação infantil - pré-escola'),
('8513-9/00', 'Ensino fundamental'),
('8520-1/00', 'Ensino médio'),
('8531-7/00', 'Educação superior - graduação'),
('8532-5/00', 'Educação superior - graduação e pós-graduação'),
('8533-3/00', 'Educação superior - pós-graduação e extensão'),
('8541-4/00', 'Educação profissional de nível técnico'),
('8542-2/00', 'Educação profissional de nível tecnológico'),
('8550-3/01', 'Administração de caixas escolares'),
('8550-3/02', 'Serviços auxiliares à educação'),
('8591-1/00', 'Ensino de esportes'),
('8592-9/01', 'Ensino de dança'),
('8592-9/02', 'Ensino de artes cênicas, exceto dança'),
('8592-9/03', 'Ensino de música'),
('8592-9/99', 'Ensino de arte e cultura não especificado anteriormente'),
('8593-7/00', 'Ensino de idiomas'),
('8599-6/01', 'Formação de condutores'),
('8599-6/02', 'Cursos de pilotagem'),
('8599-6/03', 'Treinamento em informática'),
('8599-6/04', 'Treinamento em desenvolvimento profissional e gerencial'),
('8599-6/05', 'Cursos preparatórios para concursos'),
('8599-6/99', 'Outras atividades de ensino não especificadas anteriormente'),
('8610-1/01', 'Atividades de atendimento hospitalar, exceto pronto-socorro e unidades para atendimento a urgências'),
('8610-1/02', 'Atividades de atendimento em pronto-socorro e unidades hospitalares para atendimento a urgências'),
('8621-6/01', 'UTI móvel'),
('8621-6/02', 'Serviços móveis de atendimento a urgências, exceto por UTI móvel'),
('8622-4/00', 'Serviços de remoção de pacientes, exceto os serviços móveis de atendimento a urgências'),
('8630-5/01', 'Atividade médica ambulatorial com recursos para realização de procedimentos cirúrgicos'),
('8630-5/02', 'Atividade médica ambulatorial com recursos para realização de exames complementares'),
('8630-5/03', 'Atividade médica ambulatorial restrita a consultas'),
('8630-5/04', 'Atividade odontológica com recursos para realização de procedimentos cirúrgicos'),
('8630-5/05', 'Atividade odontológica sem recursos para realização de procedimentos cirúrgicos'),
('8630-5/06', 'Serviços de vacinação e imunização humana'),
('8630-5/07', 'Atividades de reprodução humana assistida'),
('8630-5/99', 'Atividades de atenção ambulatorial não especificadas anteriormente'),
('8640-2/01', 'Laboratórios de anatomia patológica e citológica'),
('8640-2/02', 'Laboratórios clínicos'),
('8640-2/03', 'Serviços de diálise e nefrologia'),
('8640-2/04', 'Serviços de tomografia'),
('8640-2/05', 'Serviços de diagnóstico por imagem com uso de radiação ionizante, exceto tomografia'),
('8640-2/06', 'Serviços de ressonância magnética'),
('8640-2/07', 'Serviços de diagnóstico por imagem sem uso de radiação ionizante, exceto ressonância magnética'),
('8640-2/08', 'Serviços de diagnóstico por registro gráfico - ECG, EEG e outros exames análogos'),
('8640-2/09', 'Serviços de diagnóstico por métodos ópticos - endoscopia e outros exames análogos'),
('8640-2/10', 'Serviços de quimioterapia'),
('8640-2/11', 'Serviços de radioterapia'),
('8640-2/12', 'Serviços de hemoterapia'),
('8640-2/13', 'Serviços de litotripsia'),
('8640-2/14', 'Serviços de bancos de células e tecidos humanos'),
('8640-2/99', 'Atividades de serviços de complementação diagnóstica e terapêutica não especificadas anteriormente'),
('8650-0/01', 'Atividades de enfermagem'),
('8650-0/02', 'Atividades de profissionais da nutrição'),
('8650-0/03', 'Atividades de psicologia e psicanálise'),
('8650-0/04', 'Atividades de fisioterapia'),
('8650-0/05', 'Atividades de terapia ocupacional'),
('8650-0/06', 'Atividades de fonoaudiologia'),
('8650-0/07', 'Atividades de terapia de nutrição enteral e parenteral'),
('8650-0/99', 'Atividades de profissionais da área de saúde não especificadas anteriormente'),
('8660-7/00', 'Atividades de apoio à gestão de saúde'),
('8690-9/01', 'Atividades de práticas integrativas e complementares em saúde humana'),
('8690-9/02', 'Atividades de banco de leite humano'),
('8690-9/99', 'Outras atividades de atenção à saúde humana não especificadas anteriormente'),
('8711-5/01', 'Clínicas e residências geriátricas'),
('8711-5/02', 'Instituições de longa permanência para idosos'),
('8711-5/03', 'Atividades de assistência a deficientes físicos, imunodeprimidos e convalescentes'),
('8711-5/04', 'Centros de apoio a pacientes com câncer e com AIDS'),
('8711-5/05', 'Condomínios residenciais para idosos'),
('8712-3/00', 'Atividades de fornecimento de infra-estrutura de apoio e assistência a paciente no domicílio'),
('8720-4/01', 'Atividades de centros de assistência psicossocial'),
('8720-4/99', 'Atividades de assistência psicossocial e à saúde a portadores de distúrbios psíquicos, deficiência mental e dependência química não especificadas anteriormente'),
('8730-1/01', 'Orfanatos'),
('8730-1/02', 'Albergues assistenciais'),
('8730-1/99', 'Atividades de assistência social prestadas em residências coletivas e particulares não especificadas anteriormente'),
('8800-6/00', 'Serviços de assistência social sem alojamento'),
('9001-9/01', 'Produção teatral'),
('9001-9/02', 'Produção musical'),
('9001-9/03', 'Produção de espetáculos de dança'),
('9001-9/04', 'Produção de espetáculos circenses, de marionetes e similares'),
('9001-9/05', 'Produção de espetáculos de rodeios, vaquejadas e similares'),
('9001-9/06', 'Atividades de sonorização e de iluminação'),
('9001-9/99', 'Artes cênicas, espetáculos e atividades complementares não especificadas anteriormente'),
('9002-7/01', 'Atividades de artistas plásticos, jornalistas independentes e escritores'),
('9002-7/02', 'Restauração de obras-de-arte'),
('9003-5/00', 'Gestão de espaços para artes cênicas, espetáculos e outras atividades artísticas'),
('9101-5/00', 'Atividades de bibliotecas e arquivos'),
('9102-3/01', 'Atividades de museus e de exploração de lugares e prédios históricos e atrações similares'),
('9102-3/02', 'Restauração e conservação de lugares e prédios históricos'),
('9103-1/00', 'Atividades de jardins botânicos, zoológicos, parques nacionais, reservas ecológicas e áreas de proteção ambiental'),
('9200-3/01', 'Casas de bingo'),
('9200-3/02', 'Exploração de apostas em corridas de cavalos'),
('9200-3/99', 'Exploração de jogos de azar e apostas não especificados anteriormente'),
('9311-5/00', 'Gestão de instalações de esportes'),
('9312-3/00', 'Clubes sociais, esportivos e similares'),
('9313-1/00', 'Atividades de condicionamento físico'),
('9319-1/01', 'Produção e promoção de eventos esportivos'),
('9319-1/99', 'Outras atividades esportivas não especificadas anteriormente'),
('9321-2/00', 'Parques de diversão e parques temáticos'),
('9329-8/01', 'Discotecas, danceterias, salões de dança e similares'),
('9329-8/02', 'Exploração de boliches'),
('9329-8/03', 'Exploração de jogos de sinuca, bilhar e similares'),
('9329-8/04', 'Exploração de jogos eletrônicos recreativos'),
('9329-8/99', 'Outras atividades de recreação e lazer não especificadas anteriormente'),
('9411-1/00', 'Atividades de organizações associativas patronais e empresariais'),
('9412-0/00', 'Atividades de organizações associativas profissionais'),
('9420-1/00', 'Atividades de organizações sindicais'),
('9430-8/00', 'Atividades de associações de defesa de direitos sociais'),
('9491-0/00', 'Atividades de organizações religiosas'),
('9492-8/00', 'Atividades de organizações políticas'),
('9493-6/00', 'Atividades de organizações associativas ligadas à cultura e à arte'),
('9499-5/00', 'Atividades associativas não especificadas anteriormente'),
('9511-8/00', 'Reparação e manutenção de computadores e de equipamentos periféricos'),
('9512-6/00', 'Reparação e manutenção de equipamentos de comunicação'),
('9521-5/00', 'Reparação e manutenção de equipamentos eletroeletrônicos de uso pessoal e doméstico'),
('9529-1/01', 'Reparação de calçados, de bolsas e artigos de viagem*'),
('9529-1/02', 'Chaveiros'),
('9529-1/03', 'Reparação de relógios'),
('9529-1/04', 'Reparação de bicicletas, triciclos e outros veículos não-motorizados'),
('9529-1/05', 'Reparação de artigos do mobiliário'),
('9529-1/06', 'Reparação de jóias'),
('9529-1/99', 'Reparação e manutenção de outros objetos e equipamentos pessoais e domésticos não especificados anteriormente'),
('9601-7/01', 'Lavanderias'),
('9601-7/02', 'Tinturarias'),
('9601-7/03', 'Toalheiros'),
('9602-5/01', 'Cabeleireiros'),
('9602-5/02', 'Outras atividades de tratamento de beleza'),
('9603-3/01', 'Gestão e manutenção de cemitérios'),
('9603-3/02', 'Serviços de cremação'),
('9603-3/03', 'Serviços de sepultamento'),
('9603-3/04', 'Serviços de funerárias'),
('9603-3/05', 'Serviços de somatoconservação'),
('9603-3/99', 'Atividades funerárias e serviços relacionados não especificados anteriormente'),
('9609-2/01', 'Clínicas de estética e similares*'),
('9609-2/02', 'Agências matrimoniais'),
('9609-2/03', 'Alojamento, higiene e embelezamento de animais'),
('9609-2/04', 'Exploração de máquinas de serviços pessoais acionadas por moeda'),
('9609-2/99', 'Outras atividades de serviços pessoais não especificadas anteriormente'),
('9700-5/00', 'Serviços domésticos'),
('9900-8/00', 'Organismos internacionais e outras instituições extraterritoriais');

-- --------------------------------------------------------

--
-- Estrutura da tabela `comparativos`
--

CREATE TABLE `comparativos` (
  `COMP_ID` int(10) NOT NULL,
  `COMP_LI` decimal(14,2) DEFAULT NULL COMMENT 'QUANTO MAIOR, MELHOR\n',
  `COMP_LC` decimal(14,2) DEFAULT NULL COMMENT 'QUANTO MAIOR, MELHOR\n',
  `COMP_LS` decimal(14,2) DEFAULT NULL COMMENT 'QUANTO MAIOR, MELHOR\n',
  `COMP_LG` decimal(14,2) DEFAULT NULL COMMENT 'QUANTO MAIOR, MELHOR\n',
  `COMP_EG` decimal(14,2) DEFAULT NULL COMMENT 'QUANTO MENOR, MELHOR\n',
  `COMP_GE` decimal(14,2) DEFAULT NULL COMMENT 'QUANTO MENOR, MELHOR',
  `COMP_CE` decimal(14,2) DEFAULT NULL COMMENT 'QUANTO MENOR, MELHOR',
  `COMP_GI` decimal(14,2) DEFAULT NULL COMMENT 'QUANTO MENOR, MELHOR',
  `COMP_IRNC` decimal(14,2) DEFAULT NULL COMMENT 'QUANTO MENOR, MELHOR',
  `COMP_MAF` decimal(14,2) DEFAULT NULL,
  `COMP_MB` decimal(14,2) DEFAULT NULL COMMENT 'QUANTO MAIOR, MELHOR',
  `COMP_MO` decimal(14,2) DEFAULT NULL COMMENT 'QUANTO MAIOR, MELHOR',
  `COMP_ML` decimal(14,2) DEFAULT NULL COMMENT 'QUANTO MAIOR, MELHOR',
  `COMP_ANO_ID` int(10) NOT NULL,
  `COMP_EMP_ID` int(10) NOT NULL,
  `COMP_QUARTIL_ID` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `comparativos`
--

INSERT INTO `comparativos` (`COMP_ID`, `COMP_LI`, `COMP_LC`, `COMP_LS`, `COMP_LG`, `COMP_EG`, `COMP_GE`, `COMP_CE`, `COMP_GI`, `COMP_IRNC`, `COMP_MAF`, `COMP_MB`, `COMP_MO`, `COMP_ML`, `COMP_ANO_ID`, `COMP_EMP_ID`, `COMP_QUARTIL_ID`) VALUES
(1, '1.09', '3.35', '3.33', '0.38', '18.41', '22.57', '10.47', '132.20', '109.97', '1.22', '41.69', '15.92', '15.62', 2017, 15, NULL),
(2, '0.41', '1.96', '1.95', '0.38', '18.04', '22.02', '17.60', '132.51', '112.16', '1.22', '44.69', '30.60', '26.55', 2018, 15, NULL),
(3, '4.66', '5.79', '5.77', '2.00', '21.04', '26.65', '34.45', '73.38', '62.46', '1.26', '27.61', '23.49', '123.36', 2017, 18, NULL),
(4, '3.69', '4.60', '4.58', '2.15', '17.36', '21.01', '46.75', '75.68', '68.06', '1.21', '165.76', '146.89', '246.75', 2018, 18, NULL),
(5, '2.51', '3.05', '3.04', '0.69', '81.02', '427.12', '22.16', '290.79', '67.24', '5.27', '95.14', '21.60', '1.24', 2017, 19, NULL),
(6, '3.16', '3.69', '3.68', '0.56', '75.83', '313.84', '15.14', '195.38', '53.33', '4.13', '87.55', '18.92', '-1.38', 2018, 19, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `comparativos_ano_anterior`
--

CREATE TABLE `comparativos_ano_anterior` (
  `COMPANT_ID` int(10) NOT NULL,
  `COMPANT_PMC` decimal(14,2) DEFAULT NULL COMMENT 'QUANTO MENOR, MELHOR',
  `COMPANT_PME` decimal(14,2) DEFAULT NULL COMMENT 'QUANTO MENOR, MELHOR',
  `COMPANT_PMP` decimal(14,2) DEFAULT NULL COMMENT 'QUANTO MAIOR\n, MELHOR',
  `COMPANT_CO` decimal(14,2) DEFAULT NULL COMMENT 'QUANTO MENOR, MELHOR',
  `COMPANT_CF` decimal(14,2) DEFAULT NULL COMMENT 'QUANTO MENOR, MELHOR',
  `COMPANT_GA` decimal(14,2) DEFAULT NULL COMMENT 'QUANTO MAIOR, MELHOR\n',
  `COMPANT_RSA` decimal(14,2) DEFAULT NULL COMMENT 'QUANTO MAIOR, MELHOR',
  `COMPANT_RSPL` decimal(14,2) DEFAULT NULL COMMENT 'QUANTO MAIOR, MELHOR\n',
  `COMPANT_ANO_ID` int(10) NOT NULL,
  `COMPANT_EMP_ID` int(10) NOT NULL,
  `COMPANT_QUARTIL_ID` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='ESSA TABELA CONTÉM OS INDICES CALCULADOS SOMENTE PARA O "\nANO ANTERIOR"';

--
-- Extraindo dados da tabela `comparativos_ano_anterior`
--

INSERT INTO `comparativos_ano_anterior` (`COMPANT_ID`, `COMPANT_PMC`, `COMPANT_PME`, `COMPANT_PMP`, `COMPANT_CO`, `COMPANT_CF`, `COMPANT_GA`, `COMPANT_RSA`, `COMPANT_RSPL`, `COMPANT_ANO_ID`, `COMPANT_EMP_ID`, `COMPANT_QUARTIL_ID`) VALUES
(1, '19.21', '-0.37', '-9.08', '18.84', '27.92', '0.63', '16.72', '20.39', 2018, 15, NULL),
(2, '40.46', '1.33', '2.93', '41.79', '38.86', '0.65', '160.38', '194.05', 2018, 18, NULL),
(3, '16.41', '-1.52', '-14.86', '14.89', '29.75', '0.74', '-1.02', '-4.21', 2018, 19, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `demonstracao_resultado`
--

CREATE TABLE `demonstracao_resultado` (
  `DRES_ID` int(10) NOT NULL,
  `DRES_RECEITA_LIQUIDA_VENDAS` decimal(14,2) DEFAULT NULL,
  `DRES_CUSTO_VENDAS` decimal(14,2) DEFAULT NULL COMMENT '(-) VALOR NEGATIVO\n',
  `DRES_DESPESAS_OPERACIONAIS` decimal(14,2) DEFAULT NULL COMMENT '(-) VALOR NEGATIVO\nEXCETO FINANCEIRAS\n',
  `DRES_OUTRAS_RECEITAS_OP` decimal(14,2) DEFAULT NULL COMMENT 'EXCETO FINANCEIRAS\n',
  `DRES_DESPESAS_FINANCEIRAS` decimal(14,2) DEFAULT NULL COMMENT '(-) VALOR NEGATIVO\n',
  `DRES_RECEITAS_FINANCEIRAS` decimal(14,2) DEFAULT NULL,
  `DRES_OUTRAS_DESPESAS` decimal(14,2) DEFAULT NULL COMMENT '(-) VALOR NEGATIVO\n',
  `DRES_IRPJ_CSLL` decimal(14,2) DEFAULT NULL COMMENT '(-) VALOR NEGATIVO',
  `DRES_CONTRIBUICOES_PARTICIP` decimal(14,2) DEFAULT NULL COMMENT '(-) VALOR NEGATIVO\n',
  `DRES_LUCRO_BRUTO` decimal(14,2) DEFAULT NULL COMMENT 'RECEITA LIQUIDA + CUSTO DE VENDAS\n',
  `DRES_RESULT_OPERACIONAL` decimal(14,2) DEFAULT NULL COMMENT 'LUCRO BRUTO + DESPESAS OPERACIONAIS + OUTRAS RECEITAS OPERACIONAIS\n',
  `DRES_RESULT_ANTES_IRPJ_CSLL` decimal(14,2) DEFAULT NULL COMMENT 'RESULTADO OPERACIONAL + DESPESAS FINANCEIRAS + RECEITAS FINANCEIRAS + OUTRAS DESPESAS\n',
  `DRES_RESULT_ANTES_CONT_PART` decimal(14,2) DEFAULT NULL COMMENT 'RESULTADO ANTES DOS IRPJ E CSLL + IRPJ E CSLL\n',
  `DRES_RESULT_LIQUIDO_EXERCICIO` decimal(14,2) DEFAULT NULL COMMENT 'RESULTADO ANTES DAS CONTRIBUIÇÕES E PARTICIPAÇÕES + CONTRIBUIÇÕES E PARTICIPAÇÕES\n',
  `DRES_ANO_ID` int(10) NOT NULL,
  `DRES_EMP_ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `demonstracao_resultado`
--

INSERT INTO `demonstracao_resultado` (`DRES_ID`, `DRES_RECEITA_LIQUIDA_VENDAS`, `DRES_CUSTO_VENDAS`, `DRES_DESPESAS_OPERACIONAIS`, `DRES_OUTRAS_RECEITAS_OP`, `DRES_DESPESAS_FINANCEIRAS`, `DRES_RECEITAS_FINANCEIRAS`, `DRES_OUTRAS_DESPESAS`, `DRES_IRPJ_CSLL`, `DRES_CONTRIBUICOES_PARTICIP`, `DRES_LUCRO_BRUTO`, `DRES_RESULT_OPERACIONAL`, `DRES_RESULT_ANTES_IRPJ_CSLL`, `DRES_RESULT_ANTES_CONT_PART`, `DRES_RESULT_LIQUIDO_EXERCICIO`, `DRES_ANO_ID`, `DRES_EMP_ID`) VALUES
(25, '34993710.00', '-20402715.00', '-12139671.00', '3119755.00', '-1903576.00', '670739.00', '0.00', '-25534.00', '1156199.00', '14590995.00', '5571079.00', '4338242.00', '4312708.00', '5468907.00', 2017, 15),
(26, '35755422.00', '-19773932.00', '-12303372.00', '7263221.00', '-3765321.00', '365759.00', '0.00', '-6400.00', '1960521.00', '15981490.00', '10941339.00', '7541777.00', '7535377.00', '9495898.00', 2018, 15),
(27, '33490194.84', '-24241823.25', '-3870210.28', '2492000.00', '-11715474.15', '45205668.99', '0.00', '-46233.73', '0.00', '9248371.59', '7870161.31', '41360356.15', '41314122.42', '41314122.42', 2017, 18),
(28, '35367945.81', '23260451.83', '-6938644.04', '265000.00', '-11325337.39', '46693283.20', '0.00', '-49970.00', '0.00', '58628397.64', '51954753.60', '87322699.41', '87272729.41', '87272729.41', 2018, 18),
(29, '53125568.00', '-2577135.00', '-42083328.00', '3010585.00', '-5574277.00', '3835803.00', '-9041881.00', '-31536.00', '0.00', '50548433.00', '11475690.00', '695335.00', '663799.00', '663799.00', 2017, 19),
(30, '55886276.00', '-6954877.00', '-41674548.00', '3322419.00', '-4282630.00', '2694289.00', '-9758513.00', '-4372.00', '0.00', '48931399.00', '10579270.00', '-767584.00', '-771956.00', '-771956.00', 2018, 19);

-- --------------------------------------------------------

--
-- Estrutura da tabela `empresa`
--

CREATE TABLE `empresa` (
  `EMP_ID` int(10) NOT NULL,
  `EMP_NOME` varchar(255) DEFAULT NULL,
  `EMP_TELEFONE` varchar(255) DEFAULT NULL,
  `EMP_TELEFONE2` varchar(255) DEFAULT NULL,
  `EMP_CNAE` varchar(255) DEFAULT NULL,
  `EMP_QTD_EMP` int(10) DEFAULT NULL,
  `EMP_EMAIL` varchar(255) DEFAULT NULL,
  `EMP_CONT_ID` int(10) NOT NULL,
  `EMP_UF` varchar(45) DEFAULT NULL,
  `EMP_CNAE_SECUNDARIO` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `empresa`
--

INSERT INTO `empresa` (`EMP_ID`, `EMP_NOME`, `EMP_TELEFONE`, `EMP_TELEFONE2`, `EMP_CNAE`, `EMP_QTD_EMP`, `EMP_EMAIL`, `EMP_CONT_ID`, `EMP_UF`, `EMP_CNAE_SECUNDARIO`) VALUES
(13, 'BIA COSMÉTICOS', '(48)5269-8745', '(48)7452-36985', '4772-5', 12, 'biankaa.nt@unifebe.edu.br', 25, 'RJ', 'sex shop'),
(15, 'UNIESTUDOS', '(47)3211-7000', '', '85.32-5-00', 160, '', 25, 'SC', ''),
(16, 'WJ Feitiços', '', '', '88.22.99/00', 2, '', 25, 'SC', ''),
(17, 'FESTUDOS', '', '', '85.32-5-00', 190, '', 26, 'AC', ''),
(18, 'UNIDUSTOS', '', '', '85.32-5-00', 200, '', 26, 'SC', ''),
(19, 'UNIPL', '', '', '85.32-5-00', 180, '', 26, 'SC', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `logs`
--

CREATE TABLE `logs` (
  `ID` int(11) NOT NULL,
  `IP_CLIENTE` varchar(255) DEFAULT NULL,
  `OPERACAO` varchar(255) DEFAULT NULL,
  `DATA` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `USUARIO` varchar(255) DEFAULT NULL,
  `ID_AFETADO` varchar(255) DEFAULT NULL,
  `TABELA_AFETADA` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `logs`
--

INSERT INTO `logs` (`ID`, `IP_CLIENTE`, `OPERACAO`, `DATA`, `USUARIO`, `ID_AFETADO`, `TABELA_AFETADA`) VALUES
(16, '::1', 'insert', '2019-09-27 04:50:30', NULL, '10320501957', 'usuarios'),
(17, '::1', 'insert', '2019-09-27 04:50:55', NULL, '83128769000117', 'receitaws; usuarios'),
(18, '::1', 'insert', '2019-09-28 15:00:50', NULL, '27865757000102', 'receitaws; usuarios'),
(19, '::1', 'insert', '2019-09-28 15:02:12', NULL, '21505554845', 'usuarios'),
(20, '::1', 'insert', '2019-09-28 15:07:32', NULL, '02544917075', 'usuarios'),
(21, '::1', 'insert', '2019-10-12 23:12:59', 'lucascavica@gmail.com', NULL, 'empresa'),
(22, '::1', 'insert', '2019-10-12 23:13:29', 'lucascavica@gmail.com', NULL, 'empresa'),
(23, '::1', 'insert', '2019-10-13 16:21:36', 'lucascavica@gmail.com', NULL, 'empresa'),
(24, '::1', 'insert', '2019-10-13 16:22:07', 'lucascavica@gmail.com', NULL, 'empresa'),
(25, '::1', 'insert', '2019-10-13 16:25:00', 'lucascavica@gmail.com', NULL, 'empresa'),
(26, '::1', 'insert', '2019-10-13 16:25:34', 'lucascavica@gmail.com', NULL, 'empresa'),
(27, '::1', 'insert', '2019-10-13 16:26:10', 'lucascavica@gmail.com', 'Teste', 'empresa'),
(28, '::1', 'insert', '2019-10-13 16:30:40', 'lucascavica@gmail.com', 'Neide minha mae linda', 'empresa'),
(29, '::1', 'insert', '2019-10-13 16:31:03', 'lucascavica@gmail.com', 'Neide minha mae linda', 'empresa'),
(30, '::1', 'insert', '2019-10-13 16:35:24', 'lucascavica@gmail.com', 'asaswdadws', 'empresa'),
(31, '::1', 'insert', '2019-10-13 18:38:21', NULL, '10424507900', 'usuarios'),
(32, '::1', 'insert', '2019-10-13 18:43:29', 'biankaa.nt@hotmail.com', 'BIA LINDA', 'empresa'),
(33, '::1', 'insert', '2019-10-15 23:26:20', 'lucascavica@gmail.com', 'Teste Pedro', 'empresa'),
(34, '::1', 'insert', '2019-10-19 21:40:36', 'biankaa.nt@hotmail.com', 'UNIFEBE', 'empresa'),
(35, '::1', 'insert', '2019-10-30 01:13:03', 'biankaa.nt@hotmail.com', 'WJ Feitiços', 'empresa'),
(36, '::1', 'insert', '2019-10-30 01:31:33', NULL, '10320501957', 'usuarios'),
(37, '::1', 'insert', '2019-10-30 01:32:55', 'lucascavica@gmail.com', 'FESTUDOS', 'empresa'),
(38, '::1', 'insert', '2019-10-30 01:54:36', 'lucascavica@gmail.com', 'UNIDUSTOS', 'empresa'),
(39, '::1', 'insert', '2019-10-31 01:08:30', 'lucascavica@gmail.com', 'UNIPL', 'empresa'),
(40, '::1', 'insert', '2019-10-31 02:34:19', NULL, NULL, 'balanco_ativos; balanco_passivos, demonstracao_resultado'),
(41, '::1', 'insert', '2019-10-31 02:44:34', NULL, '17: 2018', 'balanco_ativos; balanco_passivos, demonstracao_resultado');

-- --------------------------------------------------------

--
-- Estrutura da tabela `quartis`
--

CREATE TABLE `quartis` (
  `Q_ID` int(10) NOT NULL,
  `Q_1` float DEFAULT NULL,
  `Q_2` float DEFAULT NULL,
  `Q_3` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `receitaws`
--

CREATE TABLE `receitaws` (
  `REC_CNPJ` varchar(255) NOT NULL,
  `REC_STATUS` varchar(255) DEFAULT NULL,
  `REC_MESSAGE` varchar(255) DEFAULT NULL,
  `REC_TIPO` varchar(255) DEFAULT NULL,
  `REC_ABERTURA` varchar(255) DEFAULT NULL,
  `REC_NOME` varchar(255) DEFAULT NULL,
  `REC_FANTASIA` varchar(255) DEFAULT NULL,
  `REC_ATV_PRIN_CODE` varchar(255) DEFAULT NULL COMMENT 'ARRAY',
  `REC_ATV_PRIN_TEXT` varchar(255) DEFAULT NULL,
  `REC_ATIVIDADES_SECUNDARIAS` varchar(255) DEFAULT NULL,
  `REC_NATUREZA_JURIDICA` varchar(255) DEFAULT NULL,
  `REC_LOGRADOURO` varchar(255) DEFAULT NULL,
  `REC_NUMERO` varchar(255) DEFAULT NULL,
  `REC_COMPLEMENTO` varchar(255) DEFAULT NULL,
  `REC_CEP` varchar(255) DEFAULT NULL,
  `REC_BAIRRO` varchar(255) DEFAULT NULL,
  `REC_MUNICIPIO` varchar(255) DEFAULT NULL,
  `REC_UF` varchar(255) DEFAULT NULL,
  `REC_EMAIL` varchar(255) DEFAULT NULL,
  `REC_TELEFONE` varchar(255) DEFAULT NULL,
  `REC_EFR` varchar(255) DEFAULT NULL,
  `REC_SITUACAO` varchar(255) DEFAULT NULL,
  `REC_DATA_SITUACAO` varchar(255) DEFAULT NULL,
  `REC_MOTIVO_SITUACAO` varchar(255) DEFAULT NULL,
  `REC_SITUACAO_ESPECIAL` varchar(255) DEFAULT NULL,
  `REC_DATA_SITUACAO_ESPECIAL` varchar(255) DEFAULT NULL,
  `REC_CAPITAL_SOCIAL` varchar(255) DEFAULT NULL,
  `REC_QSA` varchar(255) DEFAULT NULL,
  `REC_EXTRA` varchar(255) DEFAULT NULL COMMENT 'OBJETO',
  `REC_ULTIMA_ATUALIZACAO` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `receitaws`
--

INSERT INTO `receitaws` (`REC_CNPJ`, `REC_STATUS`, `REC_MESSAGE`, `REC_TIPO`, `REC_ABERTURA`, `REC_NOME`, `REC_FANTASIA`, `REC_ATV_PRIN_CODE`, `REC_ATV_PRIN_TEXT`, `REC_ATIVIDADES_SECUNDARIAS`, `REC_NATUREZA_JURIDICA`, `REC_LOGRADOURO`, `REC_NUMERO`, `REC_COMPLEMENTO`, `REC_CEP`, `REC_BAIRRO`, `REC_MUNICIPIO`, `REC_UF`, `REC_EMAIL`, `REC_TELEFONE`, `REC_EFR`, `REC_SITUACAO`, `REC_DATA_SITUACAO`, `REC_MOTIVO_SITUACAO`, `REC_SITUACAO_ESPECIAL`, `REC_DATA_SITUACAO_ESPECIAL`, `REC_CAPITAL_SOCIAL`, `REC_QSA`, `REC_EXTRA`, `REC_ULTIMA_ATUALIZACAO`) VALUES
('27865757000102', 'OK', NULL, 'MATRIZ', '31/01/1986', 'GLOBO COMUNICACAO E PARTICIPACOES S/A', 'GCP,TV GLOBO, REDE GLOBO, GLOBO.COM, SOM LIVRE', '60.21-7-00', 'Atividades de televisão aberta', '18.30-0-02;Reprodução de vídeo em qualquer suporte;63.19-4-00;Portais, provedores de conteúdo e outros serviços de informação na internet;73.12-2-00;Agenciamento de espaços para publicidade, exceto em veículos de comunicação;60.22-5-01;Programadoras', '205-4 - Sociedade Anônima Fechada', 'R LOPES QUINTAS', '303', '', '22.460-901', 'JARDIM BOTANICO', 'RIO DE JANEIRO', 'RJ', '', '(21) 2155-4551 / (21) 2155-4552', NULL, 'ATIVA', '03/11/2005', '', '', '', '6453568523.86', 'CARLOS HENRIQUE SCHRODER;10-Diretor;JORGE LUIZ DE BARROS NOBREGA;10-Diretor;ROSSANA FONTENELE BERTO;10-Diretor;ALI AHAMAD KAMEL ALI HARFOUCHE;10-Diretor;SERGIO LOURENCO MARQUES;10-Diretor;MARCELO LUIS MENDES SOARES DA SILVA;10-Diretor;ANTONIO CLAUDIO FERR', NULL, '2019-09-26T14:56:27.104Z'),
('83128769000117', 'OK', NULL, 'MATRIZ', '17/10/1975', 'FUNDACAO EDUCACIONAL DE BRUSQUE FEBE', '', '85.32-5-00', 'Educação superior - graduação e pós-graduação', '00.00-0-00;Não informada', '306-9 - Fundação Privada', 'R DORVAL LUZ', '123', '', '88.352-400', 'SANTA TEREZINHA', 'BRUSQUE', 'SC', 'contabilidade@unifebe.edu.br', '(47) 3211-7000 / (47) 3211-7219', NULL, 'ATIVA', '24/09/2005', '', '', '', '0.00', 'ROSEMARI GLATZ;16-Presidente', NULL, '2019-09-24T16:54:15.042Z');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `CONT_ID` int(10) NOT NULL,
  `CONT_NOME` varchar(255) DEFAULT NULL,
  `CONT_TELEFONE` varchar(255) DEFAULT NULL,
  `CONT_TELEFONE2` varchar(255) DEFAULT NULL,
  `CONT_CRC` varchar(255) DEFAULT NULL,
  `CONT_EMAIL` varchar(255) NOT NULL,
  `CONT_SENHA` varchar(255) DEFAULT NULL,
  `CONT_REC_CNPJ` varchar(255) DEFAULT NULL,
  `CONT_RESPONSAVEL` varchar(255) DEFAULT NULL,
  `CONT_CPF` varchar(255) DEFAULT NULL,
  `CONT_UF` varchar(10) DEFAULT NULL,
  `CONT_LOGRADOURO` varchar(255) DEFAULT NULL,
  `CONT_LOCALIDADE` varchar(255) DEFAULT NULL,
  `CONT_CEP` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`CONT_ID`, `CONT_NOME`, `CONT_TELEFONE`, `CONT_TELEFONE2`, `CONT_CRC`, `CONT_EMAIL`, `CONT_SENHA`, `CONT_REC_CNPJ`, `CONT_RESPONSAVEL`, `CONT_CPF`, `CONT_UF`, `CONT_LOGRADOURO`, `CONT_LOCALIDADE`, `CONT_CEP`) VALUES
(25, 'Bianca Linda', '(48)9982-72216', NULL, '12345901922', 'biankaa.nt@hotmail.com', '$2y$12$N/8XyayHdNeKeQiVIqFt6O9KkgfswpluK5tbRjF8c7Unm3VErdAh2', NULL, NULL, '10424507900', 'SC', 'Valentim Motta', 'Nova Trento', '88270000'),
(26, 'Lucas Cavichioli', '(47)9971-59323', NULL, '865923', 'lucascavica@gmail.com', '$2y$12$yYeC5wppjNKQgA1KpYikLepv/EqsEs3NP3jcuvG4vhtuXG1fDzhRm', NULL, NULL, '10320501957', 'SC', 'Rua Arthur Bruns', 'Brusque', '88356432');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `anos`
--
ALTER TABLE `anos`
  ADD PRIMARY KEY (`ANO_ID`);

--
-- Índices para tabela `balanco_ativos`
--
ALTER TABLE `balanco_ativos`
  ADD PRIMARY KEY (`BATIV_ID`,`BATIV_EMP_ID`,`BATIV_ANO_ID`),
  ADD KEY `fk_BALANCO_PATRIMONIAL_ENTIDADE1_idx` (`BATIV_EMP_ID`),
  ADD KEY `fk_BALANCO_PATRIMONIAL_ANOS1_idx` (`BATIV_ANO_ID`);

--
-- Índices para tabela `balanco_passivos`
--
ALTER TABLE `balanco_passivos`
  ADD PRIMARY KEY (`BPAS_ID`,`BPAS_ANO_ID`,`BPAS_EMP_ID`),
  ADD KEY `fk_BALANCO_PASSIVOS_ANOS1_idx` (`BPAS_ANO_ID`),
  ADD KEY `fk_BALANCO_PASSIVOS_ENTIDADE1_idx` (`BPAS_EMP_ID`);

--
-- Índices para tabela `cnae`
--
ALTER TABLE `cnae`
  ADD PRIMARY KEY (`codigo_cnae`);

--
-- Índices para tabela `comparativos`
--
ALTER TABLE `comparativos`
  ADD PRIMARY KEY (`COMP_ID`,`COMP_ANO_ID`,`COMP_EMP_ID`),
  ADD KEY `fk_COMPARATIVOS_ANOS1_idx` (`COMP_ANO_ID`),
  ADD KEY `fk_COMPARATIVOS_ENTIDADE1_idx` (`COMP_EMP_ID`),
  ADD KEY `fk_COMPARATIVOS_QUARTIS1_idx` (`COMP_QUARTIL_ID`);

--
-- Índices para tabela `comparativos_ano_anterior`
--
ALTER TABLE `comparativos_ano_anterior`
  ADD PRIMARY KEY (`COMPANT_ID`,`COMPANT_ANO_ID`,`COMPANT_EMP_ID`),
  ADD KEY `fk_COMPARATIVOS_ANO_INFERIOR_ANOS1_idx` (`COMPANT_ANO_ID`),
  ADD KEY `fk_COMPARATIVOS_ANO_INFERIOR_ENTIDADE1_idx` (`COMPANT_EMP_ID`),
  ADD KEY `fk_COMPARATIVOS_ANO_ANTERIOR_QUARTIS1_idx` (`COMPANT_QUARTIL_ID`);

--
-- Índices para tabela `demonstracao_resultado`
--
ALTER TABLE `demonstracao_resultado`
  ADD PRIMARY KEY (`DRES_ID`,`DRES_ANO_ID`,`DRES_EMP_ID`),
  ADD KEY `fk_DEMONSTRACAO_RESULTADO_ANOS1_idx` (`DRES_ANO_ID`),
  ADD KEY `fk_DEMONSTRACAO_RESULTADO_ENTIDADE1_idx` (`DRES_EMP_ID`);

--
-- Índices para tabela `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`EMP_ID`,`EMP_CONT_ID`),
  ADD KEY `fk_EMPRESA_CONTABILIDADE1_idx` (`EMP_CONT_ID`);

--
-- Índices para tabela `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`ID`);

--
-- Índices para tabela `quartis`
--
ALTER TABLE `quartis`
  ADD PRIMARY KEY (`Q_ID`);

--
-- Índices para tabela `receitaws`
--
ALTER TABLE `receitaws`
  ADD PRIMARY KEY (`REC_CNPJ`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`CONT_ID`,`CONT_EMAIL`),
  ADD KEY `fk_CONTABILIDADE_RECEITAWS1_idx` (`CONT_REC_CNPJ`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `anos`
--
ALTER TABLE `anos`
  MODIFY `ANO_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2020;

--
-- AUTO_INCREMENT de tabela `balanco_ativos`
--
ALTER TABLE `balanco_ativos`
  MODIFY `BATIV_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de tabela `balanco_passivos`
--
ALTER TABLE `balanco_passivos`
  MODIFY `BPAS_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de tabela `comparativos`
--
ALTER TABLE `comparativos`
  MODIFY `COMP_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `comparativos_ano_anterior`
--
ALTER TABLE `comparativos_ano_anterior`
  MODIFY `COMPANT_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `demonstracao_resultado`
--
ALTER TABLE `demonstracao_resultado`
  MODIFY `DRES_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de tabela `empresa`
--
ALTER TABLE `empresa`
  MODIFY `EMP_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `logs`
--
ALTER TABLE `logs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de tabela `quartis`
--
ALTER TABLE `quartis`
  MODIFY `Q_ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `CONT_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `balanco_passivos`
--
ALTER TABLE `balanco_passivos`
  ADD CONSTRAINT `fk_BALANCO_PASSIVOS_ANOS1` FOREIGN KEY (`BPAS_ANO_ID`) REFERENCES `anos` (`ANO_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_BALANCO_PASSIVOS_ENTIDADE1` FOREIGN KEY (`BPAS_EMP_ID`) REFERENCES `empresa` (`EMP_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `comparativos`
--
ALTER TABLE `comparativos`
  ADD CONSTRAINT `fk_COMPARATIVOS_ANOS1` FOREIGN KEY (`COMP_ANO_ID`) REFERENCES `anos` (`ANO_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_COMPARATIVOS_ENTIDADE1` FOREIGN KEY (`COMP_EMP_ID`) REFERENCES `empresa` (`EMP_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_COMPARATIVOS_QUARTIS1` FOREIGN KEY (`COMP_QUARTIL_ID`) REFERENCES `quartis` (`Q_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `comparativos_ano_anterior`
--
ALTER TABLE `comparativos_ano_anterior`
  ADD CONSTRAINT `fk_COMPARATIVOS_ANO_ANTERIOR_QUARTIS1` FOREIGN KEY (`COMPANT_QUARTIL_ID`) REFERENCES `quartis` (`Q_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_COMPARATIVOS_ANO_INFERIOR_ANOS1` FOREIGN KEY (`COMPANT_ANO_ID`) REFERENCES `anos` (`ANO_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_COMPARATIVOS_ANO_INFERIOR_ENTIDADE1` FOREIGN KEY (`COMPANT_EMP_ID`) REFERENCES `empresa` (`EMP_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `demonstracao_resultado`
--
ALTER TABLE `demonstracao_resultado`
  ADD CONSTRAINT `fk_DEMONSTRACAO_RESULTADO_ANOS1` FOREIGN KEY (`DRES_ANO_ID`) REFERENCES `anos` (`ANO_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_DEMONSTRACAO_RESULTADO_ENTIDADE1` FOREIGN KEY (`DRES_EMP_ID`) REFERENCES `empresa` (`EMP_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `empresa`
--
ALTER TABLE `empresa`
  ADD CONSTRAINT `fk_EMPRESA_CONTABILIDADE1` FOREIGN KEY (`EMP_CONT_ID`) REFERENCES `usuarios` (`CONT_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `fk_CONTABILIDADE_RECEITAWS1` FOREIGN KEY (`CONT_REC_CNPJ`) REFERENCES `receitaws` (`REC_CNPJ`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
