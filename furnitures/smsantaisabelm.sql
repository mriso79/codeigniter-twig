-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb2.1
-- http://www.phpmyadmin.net
--
-- Host: mysql01.smsantaisabelmais.hospedagemdesites.ws
-- Generation Time: Nov 04, 2013 at 04:21 PM
-- Server version: 5.1.68
-- PHP Version: 5.3.3-7+squeeze17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `smsantaisabelm`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE IF NOT EXISTS `admins` (
  `id_admin` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` longtext COLLATE utf8_unicode_ci,
  `ativo` smallint(6) DEFAULT NULL,
  `nivel` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `anuncios`
--

CREATE TABLE IF NOT EXISTS `anuncios` (
  `id_anuncio` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descricao` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_inicio` datetime DEFAULT NULL,
  `data_fim` datetime DEFAULT NULL,
  `id_secao` int(11) DEFAULT NULL,
  `is_home` smallint(6) DEFAULT '1',
  `ativo` smallint(6) DEFAULT NULL,
  `preco_original` double DEFAULT NULL,
  `preco_desconto` double DEFAULT NULL,
  `hotsite` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_imagem` int(11) NOT NULL,
  PRIMARY KEY (`id_anuncio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `email_newsletter`
--

CREATE TABLE IF NOT EXISTS `email_newsletter` (
  `id_email_newsletter` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `secoes_interesse` char(20) CHARACTER SET utf8 DEFAULT NULL,
  `data_cadastro` datetime DEFAULT NULL,
  `ip` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_email_newsletter`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Dumping data for table `email_newsletter`
--

INSERT INTO `email_newsletter` (`id_email_newsletter`, `email`, `secoes_interesse`, `data_cadastro`, `ip`) VALUES
(1, 'mriso@intelitica.com', '1,2,3,4,5,6,7', '2013-06-14 23:29:38', '187.10.209.121'),
(3, 'felipe.guedes@londresdistribuidora.com', '1,2,3,4,5,6,7', '2013-06-30 01:59:23', '179.208.54.167'),
(5, 'gabrielcruz-ab@hotmail.com', '3,4,7', '2013-07-01 19:31:49', '179.99.84.162'),
(6, 'gabrielcruz-ab@hotmail.com', '3,4,7', '2013-07-01 19:32:31', '179.99.84.162'),
(7, 'gabrielcruz-ab@hotmail.com', '1,2,3,4,5,6,7', '2013-07-01 19:34:23', '179.99.84.162'),
(8, 'gabrielcruz-ab@hotmail.com', '1,3,4,6,7', '2013-07-16 13:55:34', '201.95.94.180'),
(9, 'dre.beatmaker@gmail.com', '1,2,3,4,5,6,7', '2013-07-27 20:03:21', '201.68.103.242'),
(10, 'gabrielcruz-ab@hotmail.com', '2,4,6,7', '2013-07-31 14:27:56', '200.171.150.36'),
(11, 'thaymjesus@gmail.com', '1,2,3,4,5,6,7', '2013-09-24 19:38:31', '187.95.164.219');

-- --------------------------------------------------------

--
-- Table structure for table `imagens`
--

CREATE TABLE IF NOT EXISTS `imagens` (
  `id_imagem` int(11) NOT NULL AUTO_INCREMENT,
  `alt` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nome_arquivo` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  `ativo` smallint(6) DEFAULT NULL,
  `id_secoes` int(11) DEFAULT NULL,
  `id_noticia` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_imagem`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=27 ;

--
-- Dumping data for table `imagens`
--

INSERT INTO `imagens` (`id_imagem`, `alt`, `nome_arquivo`, `data`, `ativo`, `id_secoes`, `id_noticia`) VALUES
(1, 'Imagem do Açougue', 'acougue_1.jpg', '2013-05-21 00:00:00', 1, 1, NULL),
(2, 'Imagem do Hortifrutti', 'hortifrutti_1.jpg', '2013-05-21 00:00:00', 1, 3, NULL),
(3, 'A maior variedades de Vinhos, Whiskies e Destilados Nacionais e Importados!', 'adega_1.jpg', '2013-05-21 00:00:00', 1, 2, NULL),
(4, 'Gôndolas: Seção de Limpeza e perfumaria', '_MG_2281.jpg', '2013-05-21 00:00:00', 1, 5, NULL),
(6, 'Imagem da Padaria', 'padaria_1.jpg', '2013-05-21 00:00:00', 1, 6, NULL),
(7, 'Nossa Mercearia', '_MG_2311.jpg', '2013-05-21 00:00:00', 1, 4, NULL),
(8, 'Seção de Importados', 'importados_1.jpg', '2013-05-26 00:00:00', 1, 7, NULL),
(9, 'Gôndolas do Mercado', 'prateleira_2.jpg', '2013-05-26 00:00:00', 1, 7, 1),
(10, 'Carnes frescas de qualidade!', 'costela_gaucha.jpg', '2013-06-02 00:00:00', 1, 1, NULL),
(11, 'Peito de Frango sem Osso', 'peito_frango_sem_osso.jpg', '2013-06-02 00:00:00', 0, 1, NULL),
(12, 'Pernil Suíno sem Osso', 'pernil_suino_sem_osso.jpg', '2013-06-02 00:00:00', 0, 1, NULL),
(13, 'Picanha Fatiada', 'picanha_fatiada.jpg', '2013-06-02 00:00:00', 0, 1, NULL),
(14, 'Bisteca Suína', 'bisteca_suina.jpg', '2013-06-02 00:00:00', 0, 1, NULL),
(15, 'Linguiça Toscana Sadia', 'linguica_toscana_sadia', '2013-06-02 00:00:00', 0, 4, NULL),
(16, 'Óleo de Soja Leve PET 900 ml', 'oleo_soja_leve.jpg', '2013-06-02 00:00:00', 0, 4, NULL),
(17, 'Açucar Refinado União', 'acucar_uniao.jpg', '2013-06-02 00:00:00', 0, 4, NULL),
(18, 'Cerveja Antartica Original', 'cerveja_antartica_original.jpg', '2013-06-02 00:00:00', 0, 2, NULL),
(19, 'Café Brasileiro', 'cafe_brasileiro.jpg', '2013-06-02 00:00:00', 0, 4, NULL),
(20, 'Arroz Camil Tipo 1 5kg', 'arroz_camil.jpg', '2013-06-02 00:00:00', 0, 4, NULL),
(21, 'Feijão Máximo 1 Kg', 'feijao_maximo.jpg', '2013-06-02 00:00:00', 0, 4, NULL),
(22, 'Cerveja Stella Artois Long Neck 275ml', 'cerveja_stella.jpg', '2013-06-02 00:00:00', 0, 2, NULL),
(23, 'Abóbora Brasileira', 'abobora_brasileira.jpg', '2013-06-02 00:00:00', 0, 3, NULL),
(24, 'Pêra Importada', 'pera_importada.jpg', '2013-06-02 00:00:00', 0, 3, NULL),
(25, 'Mamão Papaya', 'mamao_papaya.jpg', '2013-06-02 00:00:00', 0, 3, NULL),
(26, 'Verduras e legumes frescos da região!', 'tomate_carmem.jpg', '2013-06-02 00:00:00', 1, 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `noticias`
--

CREATE TABLE IF NOT EXISTS `noticias` (
  `id_noticia` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `texto` longtext COLLATE utf8_unicode_ci,
  `resumo` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_inicio` datetime DEFAULT NULL,
  `data_fim` datetime DEFAULT NULL,
  `id_secoes` int(11) DEFAULT NULL,
  `ativo` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id_noticia`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `noticias`
--

INSERT INTO `noticias` (`id_noticia`, `titulo`, `texto`, `resumo`, `data_inicio`, `data_fim`, `id_secoes`, `ativo`) VALUES
(1, 'Noticia Teste', 'Texto ...................', 'texto texto', '2013-05-26 00:00:00', '2013-05-27 00:00:00', NULL, 0),
(2, 'Mais uma promoção', 'promoção ... teste teste', 'resumo', '2013-05-26 00:00:00', '2013-05-30 00:00:00', NULL, 0),
(3, 'Informativo', 'Informação especial 1...', 'resumo da informacao', '2013-05-22 00:00:00', '2013-05-31 00:00:00', NULL, 0),
(4, 'Informação especial 2', 'Informação especial teste teste teste ', 'teste ...', '2013-05-25 00:00:00', '2013-05-28 00:00:00', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `secoes`
--

CREATE TABLE IF NOT EXISTS `secoes` (
  `id_secoes` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descricao` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ativo` smallint(6) DEFAULT NULL,
  `color` char(10) CHARACTER SET utf8 DEFAULT NULL,
  `texto` longtext COLLATE utf8_unicode_ci,
  `url_amigavel` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_secoes`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `secoes`
--

INSERT INTO `secoes` (`id_secoes`, `titulo`, `descricao`, `ativo`, `color`, `texto`, `url_amigavel`) VALUES
(1, 'Açougue', 'Temos carnes macias, pré temperadas e nos mais variados cortes', 1, 'red', 'Temos carnes macias, pré temperadas e nos mais variados cortes, além de ser a única da loja da região a oferecer carnes frescas todos os dias, carnes de qualidade e sempre muito saborosas. Temos profissionais qualificados para prestar um serviço de qualidade e confiança.', 'acougue'),
(2, 'Adega', 'Aqui você encontra vinhos e destilados nacionais e importados', 1, 'darkblue', 'Aqui, você encontra vinhos e destilados nacionais e importados, atendendo qualquer ocasião, pois temos a maior e mais completa adega da região.', 'adega'),
(3, 'Hortifrutti', 'Nossos produtos são rigorosamente selecionados, direto da roça para a mesa', 1, 'green', 'Nossos produtos são rigorosamente selecionados, direto da roça para a mesa de nossos clientes. São produtos de alta qualidade e preço baixo para que você faça a melhor feira da região.', 'hortifrutti'),
(4, 'Mercearia', 'Contamos com uma grande variedade de produtos e marcas para que nossos clientes encontrem tudo que buscam', 1, 'purple', 'Contamos com uma grande variedade de produtos e marcas, para que nossos clientes encontrem tudo o que procuram em um só lugar, sempre com qualidade e o menor preço.', 'mercearia'),
(5, 'Limpeza e Perfumaria', 'Produtos de qualidade para manter sua casa e roupas sempre limpas e perfumadas', 1, 'blue', 'No setor de limpeza e perfumaria do Supermercado Santa Isabel Mais, você encontra um espaço nobre, com produtos de qualidade para manter sua casa e roupas sempre limpas e perfumadas, além de produtos para o cuidado da pele e higiene diária, mas principalmente para realçar ainda mais a beleza de nossos clientes.', 'limpeza-e-perfumaria'),
(6, 'Padaria', 'Em nossa padaria você encontra uma grande variedade de pães', 1, 'yellow', 'Em nossa padaria você encontra uma grande variedade de pães, lanches rápidos, bolos, tortas, doces finos, além de contar com nosso setor de encomendas. Tudo sempre fresquinho e feito com muito carinho, como se fossem feitos em casa.', 'padaria'),
(7, 'Importados', 'Temos desde chocolates finos, biscoitos recheados, até coolers e aperitivos', 1, 'light-blue', 'Temos desde chocolates finos, biscoitos recheados, até coolers e aperitivos para aproveitar o fim de semana entre amigos. Venha conferir!', 'importados');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
