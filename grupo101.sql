-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 24-Dez-2024 às 17:51
-- Versão do servidor: 8.0.30
-- versão do PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `grupo101`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `contactos`
--

CREATE TABLE `contactos` (
  `id` int NOT NULL,
  `nome` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `mensagem` text COLLATE utf8mb4_general_ci NOT NULL,
  `data_envio` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `contactos`
--

INSERT INTO `contactos` (`id`, `nome`, `email`, `mensagem`, `data_envio`) VALUES
(1, 'José', 'zesaraiva7@gmail.com', 'Não recebi a minha chave no email.', '2024-12-24 15:52:18'),
(2, 'Bernardo', 'bernasqph@gmail.com', 'A minha chave não está válida.', '2024-12-24 15:55:20');

-- --------------------------------------------------------

--
-- Estrutura da tabela `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `data_submissao` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `newsletter`
--

INSERT INTO `newsletter` (`id`, `email`, `data_submissao`) VALUES
(1, 'zesaraiva7@gmail.com', '2024-12-24 16:31:51'),
(4, 'test@gmail.com', '2024-12-24 16:34:01'),
(5, 'test@1.com', '2024-12-24 16:34:37'),
(6, 'test@1.co2', '2024-12-24 16:35:07');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `id` int NOT NULL COMMENT 'ID do produto',
  `designation` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'Designação',
  `platform` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'Plantaforma',
  `price` float NOT NULL COMMENT 'Preço',
  `status` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'Disponibilidade',
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'Discrição',
  `bdescription` varchar(10000) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `image` int DEFAULT NULL COMMENT 'Imagem',
  `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'URL da imagem'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`id`, `designation`, `platform`, `price`, `status`, `description`, `bdescription`, `image`, `image_url`) VALUES
(21, 'Dark Souls III', 'PC', 39.99, 'Disponível', 'Desafie sua habilidade em um mundo sombrio.', 'Comprar uma chave online é uma solução prática, rápida e acessível para adquirir os seus jogos favoritos. Com apenas alguns cliques, pode garantir o acesso imediato a conteúdos digitais sem necessidade de esperar por entregas físicas, poupando tempo e custos adicionais. Além disso, as chaves online oferecem segurança e comodidade, sendo enviadas diretamente para o seu endereço de email, permitindo que resgate o conteúdo no conforto da sua casa. Para ativar a sua chave, basta aceder à plataforma indicada, como Steam, PlayStation, Xbox ou outra correspondente ao produto adquirido, iniciar sessão na sua conta, localizar a opção de resgatar ou ativar código e inserir a chave fornecida. Após a ativação, o conteúdo será imediatamente associado à sua conta e estará disponível para download ou utilização. Este método garante que tenha acesso rápido e seguro aos seus produtos digitais, proporcionando uma experiência moderna e sem complicações.', 21, 'https://image.api.playstation.com/cdn/UP0700/CUSA03388_00/v8JlD8KcQUtTqaLBmpFnj1ESRR5zMkLk.png'),
(10001, 'Grand Theft Auto V', 'PC', 29.99, 'Disponível', 'Explore Los Santos em um mundo aberto repleto de ação.', 'Grand Theft Auto V é um jogo eletrônico de ação-aventura desenvolvido pela Rockstar North e publicado pela Rockstar Games. É o sétimo título principal da série Grand Theft Auto e foi lançado originalmente em 17 de setembro de 2013 para PlayStation 3 e Xbox 360, com remasterizações lançadas em 2014 para PlayStation 4 e Xbox One, em 2015 para Microsoft Windows e em 2022 para PlayStation 5 e Xbox Series X/S. O jogo se passa no estado ficcional de San Andreas, com a história da campanha um jogador seguindo três criminosos e seus esforços para realizarem assaltos sob a pressão de uma agência governamental. O mundo aberto permite que os jogadores naveguem livremente pelas áreas rurais e urbanas de San Andreas.', NULL, 'https://upload.wikimedia.org/wikipedia/en/a/a5/Grand_Theft_Auto_V.png'),
(10002, 'FIFA 2023', 'PlayStation', 59.99, 'Disponível', 'Jogue o maior campeonato de futebol com gráficos incríveis.', 'Comprar uma chave online é uma solução prática, rápida e acessível para adquirir os seus jogos favoritos. Com apenas alguns cliques, pode garantir o acesso imediato a conteúdos digitais sem necessidade de esperar por entregas físicas, poupando tempo e custos adicionais. Além disso, as chaves online oferecem segurança e comodidade, sendo enviadas diretamente para o seu endereço de email, permitindo que resgate o conteúdo no conforto da sua casa. Para ativar a sua chave, basta aceder à plataforma indicada, como Steam, PlayStation, Xbox ou outra correspondente ao produto adquirido, iniciar sessão na sua conta, localizar a opção de resgatar ou ativar código e inserir a chave fornecida. Após a ativação, o conteúdo será imediatamente associado à sua conta e estará disponível para download ou utilização. Este método garante que tenha acesso rápido e seguro aos seus produtos digitais, proporcionando uma experiência moderna e sem complicações.', NULL, 'https://image.api.playstation.com/vulcan/ap/rnd/202301/0312/GU1vXFJpbzGYNV6UN3U0Cnnb.png'),
(10003, 'Minecraft', 'PC', 26.95, 'Disponível', 'Crie e explore mundos infinitos com blocos.', 'Comprar uma chave online é uma solução prática, rápida e acessível para adquirir os seus jogos favoritos. Com apenas alguns cliques, pode garantir o acesso imediato a conteúdos digitais sem necessidade de esperar por entregas físicas, poupando tempo e custos adicionais. Além disso, as chaves online oferecem segurança e comodidade, sendo enviadas diretamente para o seu endereço de email, permitindo que resgate o conteúdo no conforto da sua casa. Para ativar a sua chave, basta aceder à plataforma indicada, como Steam, PlayStation, Xbox ou outra correspondente ao produto adquirido, iniciar sessão na sua conta, localizar a opção de resgatar ou ativar código e inserir a chave fornecida. Após a ativação, o conteúdo será imediatamente associado à sua conta e estará disponível para download ou utilização. Este método garante que tenha acesso rápido e seguro aos seus produtos digitais, proporcionando uma experiência moderna e sem complicações.', NULL, 'https://image.api.playstation.com/vulcan/ap/rnd/202407/0401/670c294ded3baf4fa11068db2ec6758c63f7daeb266a35a1.png'),
(10004, 'The Witcher 3: Wild Hunt', 'Xbox', 39.99, 'Indisponível', 'Assuma o papel de Geralt em uma história épica e sombria.', 'Comprar uma chave online é uma solução prática, rápida e acessível para adquirir os seus jogos favoritos. Com apenas alguns cliques, pode garantir o acesso imediato a conteúdos digitais sem necessidade de esperar por entregas físicas, poupando tempo e custos adicionais. Além disso, as chaves online oferecem segurança e comodidade, sendo enviadas diretamente para o seu endereço de email, permitindo que resgate o conteúdo no conforto da sua casa. Para ativar a sua chave, basta aceder à plataforma indicada, como Steam, PlayStation, Xbox ou outra correspondente ao produto adquirido, iniciar sessão na sua conta, localizar a opção de resgatar ou ativar código e inserir a chave fornecida. Após a ativação, o conteúdo será imediatamente associado à sua conta e estará disponível para download ou utilização. Este método garante que tenha acesso rápido e seguro aos seus produtos digitais, proporcionando uma experiência moderna e sem complicações.', NULL, 'https://upload.wikimedia.org/wikipedia/en/0/0c/Witcher_3_cover_art.jpg'),
(10005, 'Cyberpunk 2077', 'PC', 49.99, 'Disponível', 'Explore Night City em uma aventura futurista cheia de escolhas.', 'Comprar uma chave online é uma solução prática, rápida e acessível para adquirir os seus jogos favoritos. Com apenas alguns cliques, pode garantir o acesso imediato a conteúdos digitais sem necessidade de esperar por entregas físicas, poupando tempo e custos adicionais. Além disso, as chaves online oferecem segurança e comodidade, sendo enviadas diretamente para o seu endereço de email, permitindo que resgate o conteúdo no conforto da sua casa. Para ativar a sua chave, basta aceder à plataforma indicada, como Steam, PlayStation, Xbox ou outra correspondente ao produto adquirido, iniciar sessão na sua conta, localizar a opção de resgatar ou ativar código e inserir a chave fornecida. Após a ativação, o conteúdo será imediatamente associado à sua conta e estará disponível para download ou utilização. Este método garante que tenha acesso rápido e seguro aos seus produtos digitais, proporcionando uma experiência moderna e sem complicações.', NULL, 'https://upload.wikimedia.org/wikipedia/en/9/9f/Cyberpunk_2077_box_art.jpg'),
(10006, 'Red Dead Redemption 2', 'PC', 59.99, 'Disponível', 'Viva a vida de um fora-da-lei no velho oeste.', 'Comprar uma chave online é uma solução prática, rápida e acessível para adquirir os seus jogos favoritos. Com apenas alguns cliques, pode garantir o acesso imediato a conteúdos digitais sem necessidade de esperar por entregas físicas, poupando tempo e custos adicionais. Além disso, as chaves online oferecem segurança e comodidade, sendo enviadas diretamente para o seu endereço de email, permitindo que resgate o conteúdo no conforto da sua casa. Para ativar a sua chave, basta aceder à plataforma indicada, como Steam, PlayStation, Xbox ou outra correspondente ao produto adquirido, iniciar sessão na sua conta, localizar a opção de resgatar ou ativar código e inserir a chave fornecida. Após a ativação, o conteúdo será imediatamente associado à sua conta e estará disponível para download ou utilização. Este método garante que tenha acesso rápido e seguro aos seus produtos digitais, proporcionando uma experiência moderna e sem complicações.', NULL, 'https://upload.wikimedia.org/wikipedia/en/4/44/Red_Dead_Redemption_II.jpg'),
(10007, 'Call of Duty: Modern Warfare II', 'PlayStation', 69.99, 'Disponível', 'Participe de batalhas intensas no novo capítulo da franquia.', 'Comprar uma chave online é uma solução prática, rápida e acessível para adquirir os seus jogos favoritos. Com apenas alguns cliques, pode garantir o acesso imediato a conteúdos digitais sem necessidade de esperar por entregas físicas, poupando tempo e custos adicionais. Além disso, as chaves online oferecem segurança e comodidade, sendo enviadas diretamente para o seu endereço de email, permitindo que resgate o conteúdo no conforto da sua casa. Para ativar a sua chave, basta aceder à plataforma indicada, como Steam, PlayStation, Xbox ou outra correspondente ao produto adquirido, iniciar sessão na sua conta, localizar a opção de resgatar ou ativar código e inserir a chave fornecida. Após a ativação, o conteúdo será imediatamente associado à sua conta e estará disponível para download ou utilização. Este método garante que tenha acesso rápido e seguro aos seus produtos digitais, proporcionando uma experiência moderna e sem complicações.', NULL, 'https://image.api.playstation.com/vulcan/ap/rnd/202205/2800/E1Hw52cQH3HA6swkk1mcvbjc.png'),
(10008, 'Fortnite', 'PC', 0, 'Disponível', 'Lute para ser o último sobrevivente neste jogo de batalha real.', 'Comprar uma chave online é uma solução prática, rápida e acessível para adquirir os seus jogos favoritos. Com apenas alguns cliques, pode garantir o acesso imediato a conteúdos digitais sem necessidade de esperar por entregas físicas, poupando tempo e custos adicionais. Além disso, as chaves online oferecem segurança e comodidade, sendo enviadas diretamente para o seu endereço de email, permitindo que resgate o conteúdo no conforto da sua casa. Para ativar a sua chave, basta aceder à plataforma indicada, como Steam, PlayStation, Xbox ou outra correspondente ao produto adquirido, iniciar sessão na sua conta, localizar a opção de resgatar ou ativar código e inserir a chave fornecida. Após a ativação, o conteúdo será imediatamente associado à sua conta e estará disponível para download ou utilização. Este método garante que tenha acesso rápido e seguro aos seus produtos digitais, proporcionando uma experiência moderna e sem complicações.', NULL, 'https://cdn2.unrealengine.com/social-image-chapter4-s3-3840x2160-d35912cc25ad.jpg'),
(10009, 'Elden Ring', 'Xbox', 59.99, 'Disponível', 'Descubra segredos e enfrente desafios em um mundo fantástico.', 'Comprar uma chave online é uma solução prática, rápida e acessível para adquirir os seus jogos favoritos. Com apenas alguns cliques, pode garantir o acesso imediato a conteúdos digitais sem necessidade de esperar por entregas físicas, poupando tempo e custos adicionais. Além disso, as chaves online oferecem segurança e comodidade, sendo enviadas diretamente para o seu endereço de email, permitindo que resgate o conteúdo no conforto da sua casa. Para ativar a sua chave, basta aceder à plataforma indicada, como Steam, PlayStation, Xbox ou outra correspondente ao produto adquirido, iniciar sessão na sua conta, localizar a opção de resgatar ou ativar código e inserir a chave fornecida. Após a ativação, o conteúdo será imediatamente associado à sua conta e estará disponível para download ou utilização. Este método garante que tenha acesso rápido e seguro aos seus produtos digitais, proporcionando uma experiência moderna e sem complicações.', NULL, 'https://image.api.playstation.com/vulcan/ap/rnd/202107/1612/esnQejHW2fLjVn3QsqMORML0.png'),
(10010, 'God of War: Ragnarok', 'PlayStation', 69.99, 'Indisponível', 'Kratos retorna com seu filho em uma jornada épica.', 'Comprar uma chave online é uma solução prática, rápida e acessível para adquirir os seus jogos favoritos. Com apenas alguns cliques, pode garantir o acesso imediato a conteúdos digitais sem necessidade de esperar por entregas físicas, poupando tempo e custos adicionais. Além disso, as chaves online oferecem segurança e comodidade, sendo enviadas diretamente para o seu endereço de email, permitindo que resgate o conteúdo no conforto da sua casa. Para ativar a sua chave, basta aceder à plataforma indicada, como Steam, PlayStation, Xbox ou outra correspondente ao produto adquirido, iniciar sessão na sua conta, localizar a opção de resgatar ou ativar código e inserir a chave fornecida. Após a ativação, o conteúdo será imediatamente associado à sua conta e estará disponível para download ou utilização. Este método garante que tenha acesso rápido e seguro aos seus produtos digitais, proporcionando uma experiência moderna e sem complicações.', NULL, 'https://image.api.playstation.com/vulcan/ap/rnd/202207/1210/aqZdSwWyy9JcQ66BxHDKrky6.jpg'),
(10011, 'Assassins Creed Valhalla', 'PlayStation', 49.99, 'Disponível', 'Explore a era dos vikings em um mundo aberto épico.', 'Comprar uma chave online é uma solução prática, rápida e acessível para adquirir os seus jogos favoritos. Com apenas alguns cliques, pode garantir o acesso imediato a conteúdos digitais sem necessidade de esperar por entregas físicas, poupando tempo e custos adicionais. Além disso, as chaves online oferecem segurança e comodidade, sendo enviadas diretamente para o seu endereço de email, permitindo que resgate o conteúdo no conforto da sua casa. Para ativar a sua chave, basta aceder à plataforma indicada, como Steam, PlayStation, Xbox ou outra correspondente ao produto adquirido, iniciar sessão na sua conta, localizar a opção de resgatar ou ativar código e inserir a chave fornecida. Após a ativação, o conteúdo será imediatamente associado à sua conta e estará disponível para download ou utilização. Este método garante que tenha acesso rápido e seguro aos seus produtos digitais, proporcionando uma experiência moderna e sem complicações.', NULL, 'https://image.api.playstation.com/vulcan/ap/rnd/202006/1520/EDtkdijFRwbmGKk1G9lrDoEF.png'),
(10012, 'Horizon Forbidden West', 'PlayStation', 69.99, 'Disponível', 'Aloy retorna para explorar um Oeste proibido cheio de mistérios.', 'Comprar uma chave online é uma solução prática, rápida e acessível para adquirir os seus jogos favoritos. Com apenas alguns cliques, pode garantir o acesso imediato a conteúdos digitais sem necessidade de esperar por entregas físicas, poupando tempo e custos adicionais. Além disso, as chaves online oferecem segurança e comodidade, sendo enviadas diretamente para o seu endereço de email, permitindo que resgate o conteúdo no conforto da sua casa. Para ativar a sua chave, basta aceder à plataforma indicada, como Steam, PlayStation, Xbox ou outra correspondente ao produto adquirido, iniciar sessão na sua conta, localizar a opção de resgatar ou ativar código e inserir a chave fornecida. Após a ativação, o conteúdo será imediatamente associado à sua conta e estará disponível para download ou utilização. Este método garante que tenha acesso rápido e seguro aos seus produtos digitais, proporcionando uma experiência moderna e sem complicações.', NULL, 'https://image.api.playstation.com/vulcan/ap/rnd/202107/3100/hAQPlnoDVvDbDc5H3zOTuY5f.png'),
(10014, 'Diablo IV', 'Xbox', 69.99, 'Disponível', 'Enfrente hordas de inimigos em um mundo sombrio e infernal.', 'Comprar uma chave online é uma solução prática, rápida e acessível para adquirir os seus jogos favoritos. Com apenas alguns cliques, pode garantir o acesso imediato a conteúdos digitais sem necessidade de esperar por entregas físicas, poupando tempo e custos adicionais. Além disso, as chaves online oferecem segurança e comodidade, sendo enviadas diretamente para o seu endereço de email, permitindo que resgate o conteúdo no conforto da sua casa. Para ativar a sua chave, basta aceder à plataforma indicada, como Steam, PlayStation, Xbox ou outra correspondente ao produto adquirido, iniciar sessão na sua conta, localizar a opção de resgatar ou ativar código e inserir a chave fornecida. Após a ativação, o conteúdo será imediatamente associado à sua conta e estará disponível para download ou utilização. Este método garante que tenha acesso rápido e seguro aos seus produtos digitais, proporcionando uma experiência moderna e sem complicações.', NULL, 'https://shared.cloudflare.steamstatic.com/store_item_assets/steam/apps/2344520/extras/D4-Steam_Game-Capsule_Main-616x353.png?t=1728494275'),
(10018, 'Super Smash Bros. Ultimate', 'Nintendo Switch', 59.99, 'Disponível', 'Lute com personagens icônicos em batalhas épicas.', 'Comprar uma chave online é uma solução prática, rápida e acessível para adquirir os seus jogos favoritos. Com apenas alguns cliques, pode garantir o acesso imediato a conteúdos digitais sem necessidade de esperar por entregas físicas, poupando tempo e custos adicionais. Além disso, as chaves online oferecem segurança e comodidade, sendo enviadas diretamente para o seu endereço de email, permitindo que resgate o conteúdo no conforto da sua casa. Para ativar a sua chave, basta aceder à plataforma indicada, como Steam, PlayStation, Xbox ou outra correspondente ao produto adquirido, iniciar sessão na sua conta, localizar a opção de resgatar ou ativar código e inserir a chave fornecida. Após a ativação, o conteúdo será imediatamente associado à sua conta e estará disponível para download ou utilização. Este método garante que tenha acesso rápido e seguro aos seus produtos digitais, proporcionando uma experiência moderna e sem complicações.', NULL, 'https://upload.wikimedia.org/wikipedia/en/5/50/Super_Smash_Bros._Ultimate.jpg'),
(10022, 'Doom Eternal', 'PC', 39.99, 'Disponível', 'Enfrente demônios em combates intensos e cheios de ação.', 'Comprar uma chave online é uma solução prática, rápida e acessível para adquirir os seus jogos favoritos. Com apenas alguns cliques, pode garantir o acesso imediato a conteúdos digitais sem necessidade de esperar por entregas físicas, poupando tempo e custos adicionais. Além disso, as chaves online oferecem segurança e comodidade, sendo enviadas diretamente para o seu endereço de email, permitindo que resgate o conteúdo no conforto da sua casa. Para ativar a sua chave, basta aceder à plataforma indicada, como Steam, PlayStation, Xbox ou outra correspondente ao produto adquirido, iniciar sessão na sua conta, localizar a opção de resgatar ou ativar código e inserir a chave fornecida. Após a ativação, o conteúdo será imediatamente associado à sua conta e estará disponível para download ou utilização. Este método garante que tenha acesso rápido e seguro aos seus produtos digitais, proporcionando uma experiência moderna e sem complicações.', NULL, 'https://image.api.playstation.com/vulcan/ap/rnd/202010/0114/b4Q1XWYaTdJLUvRuALuqr0wP.png'),
(10023, 'Star Wars Jedi: Fallen Order', 'PC', 49.99, 'Disponível', 'Viva como um Jedi sobrevivente em um mundo após a Ordem 66.', 'Comprar uma chave online é uma solução prática, rápida e acessível para adquirir os seus jogos favoritos. Com apenas alguns cliques, pode garantir o acesso imediato a conteúdos digitais sem necessidade de esperar por entregas físicas, poupando tempo e custos adicionais. Além disso, as chaves online oferecem segurança e comodidade, sendo enviadas diretamente para o seu endereço de email, permitindo que resgate o conteúdo no conforto da sua casa. Para ativar a sua chave, basta aceder à plataforma indicada, como Steam, PlayStation, Xbox ou outra correspondente ao produto adquirido, iniciar sessão na sua conta, localizar a opção de resgatar ou ativar código e inserir a chave fornecida. Após a ativação, o conteúdo será imediatamente associado à sua conta e estará disponível para download ou utilização. Este método garante que tenha acesso rápido e seguro aos seus produtos digitais, proporcionando uma experiência moderna e sem complicações.', NULL, 'https://image.api.playstation.com/vulcan/img/rnd/202105/1714/GGoHFijC6gbQxd1CXvPIbTT5.png'),
(10024, 'Far Cry 6', 'PlayStation', 59.99, 'Disponível', 'Lute contra um regime opressor na ilha de Yara.', 'Comprar uma chave online é uma solução prática, rápida e acessível para adquirir os seus jogos favoritos. Com apenas alguns cliques, pode garantir o acesso imediato a conteúdos digitais sem necessidade de esperar por entregas físicas, poupando tempo e custos adicionais. Além disso, as chaves online oferecem segurança e comodidade, sendo enviadas diretamente para o seu endereço de email, permitindo que resgate o conteúdo no conforto da sua casa. Para ativar a sua chave, basta aceder à plataforma indicada, como Steam, PlayStation, Xbox ou outra correspondente ao produto adquirido, iniciar sessão na sua conta, localizar a opção de resgatar ou ativar código e inserir a chave fornecida. Após a ativação, o conteúdo será imediatamente associado à sua conta e estará disponível para download ou utilização. Este método garante que tenha acesso rápido e seguro aos seus produtos digitais, proporcionando uma experiência moderna e sem complicações.', NULL, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR53_G0V92hXTW52nRmUS06p3mAjGu2Nw1OfA&s'),
(10025, 'Ghost of Tsushima', 'PlayStation', 59.99, 'Disponível', 'Lute como um samurai em uma história épica do Japão feudal.', 'Comprar uma chave online é uma solução prática, rápida e acessível para adquirir os seus jogos favoritos. Com apenas alguns cliques, pode garantir o acesso imediato a conteúdos digitais sem necessidade de esperar por entregas físicas, poupando tempo e custos adicionais. Além disso, as chaves online oferecem segurança e comodidade, sendo enviadas diretamente para o seu endereço de email, permitindo que resgate o conteúdo no conforto da sua casa. Para ativar a sua chave, basta aceder à plataforma indicada, como Steam, PlayStation, Xbox ou outra correspondente ao produto adquirido, iniciar sessão na sua conta, localizar a opção de resgatar ou ativar código e inserir a chave fornecida. Após a ativação, o conteúdo será imediatamente associado à sua conta e estará disponível para download ou utilização. Este método garante que tenha acesso rápido e seguro aos seus produtos digitais, proporcionando uma experiência moderna e sem complicações.', NULL, 'https://image.api.playstation.com/vulcan/ap/rnd/202010/0222/b3iB2zf2xHj9shC0XDTULxND.png'),
(10026, 'Resident Evil Village', 'PC', 59.99, 'Disponível', 'Sobreviva a horrores em uma vila remota cheia de mistérios.', 'Comprar uma chave online é uma solução prática, rápida e acessível para adquirir os seus jogos favoritos. Com apenas alguns cliques, pode garantir o acesso imediato a conteúdos digitais sem necessidade de esperar por entregas físicas, poupando tempo e custos adicionais. Além disso, as chaves online oferecem segurança e comodidade, sendo enviadas diretamente para o seu endereço de email, permitindo que resgate o conteúdo no conforto da sua casa. Para ativar a sua chave, basta aceder à plataforma indicada, como Steam, PlayStation, Xbox ou outra correspondente ao produto adquirido, iniciar sessão na sua conta, localizar a opção de resgatar ou ativar código e inserir a chave fornecida. Após a ativação, o conteúdo será imediatamente associado à sua conta e estará disponível para download ou utilização. Este método garante que tenha acesso rápido e seguro aos seus produtos digitais, proporcionando uma experiência moderna e sem complicações.', NULL, 'https://image.api.playstation.com/vulcan/ap/rnd/202101/0812/FkzwjnJknkrFlozkTdeQBMub.png'),
(10027, 'Sekiro: Shadows Die Twice', 'PC', 49.99, 'Disponível', 'Explore o Japão feudal em um jogo desafiador de ação e aventura.', 'Comprar uma chave online é uma solução prática, rápida e acessível para adquirir os seus jogos favoritos. Com apenas alguns cliques, pode garantir o acesso imediato a conteúdos digitais sem necessidade de esperar por entregas físicas, poupando tempo e custos adicionais. Além disso, as chaves online oferecem segurança e comodidade, sendo enviadas diretamente para o seu endereço de email, permitindo que resgate o conteúdo no conforto da sua casa. Para ativar a sua chave, basta aceder à plataforma indicada, como Steam, PlayStation, Xbox ou outra correspondente ao produto adquirido, iniciar sessão na sua conta, localizar a opção de resgatar ou ativar código e inserir a chave fornecida. Após a ativação, o conteúdo será imediatamente associado à sua conta e estará disponível para download ou utilização. Este método garante que tenha acesso rápido e seguro aos seus produtos digitais, proporcionando uma experiência moderna e sem complicações.', NULL, 'https://upload.wikimedia.org/wikipedia/pt/7/7b/Sekiro_Shadows_Die_Twice_capa.png'),
(20001, 'The Legend of Zelda: Breath of the Wild', 'Switch', 59.99, 'Disponível', 'Explore um vasto mundo aberto em Hyrule.', 'Comprar uma chave online é uma solução prática, rápida e acessível para adquirir os seus jogos favoritos. Com apenas alguns cliques, pode garantir o acesso imediato a conteúdos digitais sem necessidade de esperar por entregas físicas, poupando tempo e custos adicionais. Além disso, as chaves online oferecem segurança e comodidade, sendo enviadas diretamente para o seu endereço de email, permitindo que resgate o conteúdo no conforto da sua casa. Para ativar a sua chave, basta aceder à plataforma indicada, como Steam, PlayStation, Xbox ou outra correspondente ao produto adquirido, iniciar sessão na sua conta, localizar a opção de resgatar ou ativar código e inserir a chave fornecida. Após a ativação, o conteúdo será imediatamente associado à sua conta e estará disponível para download ou utilização. Este método garante que tenha acesso rápido e seguro aos seus produtos digitais, proporcionando uma experiência moderna e sem complicações.', 1, 'https://upload.wikimedia.org/wikipedia/en/c/c6/The_Legend_of_Zelda_Breath_of_the_Wild.jpg'),
(20002, 'The Last of Us Part II', 'Playstation', 39.99, 'Disponível', 'A emocionante sequência de The Last of Us.', 'Comprar uma chave online é uma solução prática, rápida e acessível para adquirir os seus jogos favoritos. Com apenas alguns cliques, pode garantir o acesso imediato a conteúdos digitais sem necessidade de esperar por entregas físicas, poupando tempo e custos adicionais. Além disso, as chaves online oferecem segurança e comodidade, sendo enviadas diretamente para o seu endereço de email, permitindo que resgate o conteúdo no conforto da sua casa. Para ativar a sua chave, basta aceder à plataforma indicada, como Steam, PlayStation, Xbox ou outra correspondente ao produto adquirido, iniciar sessão na sua conta, localizar a opção de resgatar ou ativar código e inserir a chave fornecida. Após a ativação, o conteúdo será imediatamente associado à sua conta e estará disponível para download ou utilização. Este método garante que tenha acesso rápido e seguro aos seus produtos digitais, proporcionando uma experiência moderna e sem complicações.', 2, 'https://upload.wikimedia.org/wikipedia/en/thumb/4/4f/TLOU_P2_Box_Art_2.png/220px-TLOU_P2_Box_Art_2.png'),
(20003, 'Halo Infinite', 'Xbox', 69.99, 'Disponível', 'O Master Chief retorna para salvar a galáxia.', 'Comprar uma chave online é uma solução prática, rápida e acessível para adquirir os seus jogos favoritos. Com apenas alguns cliques, pode garantir o acesso imediato a conteúdos digitais sem necessidade de esperar por entregas físicas, poupando tempo e custos adicionais. Além disso, as chaves online oferecem segurança e comodidade, sendo enviadas diretamente para o seu endereço de email, permitindo que resgate o conteúdo no conforto da sua casa. Para ativar a sua chave, basta aceder à plataforma indicada, como Steam, PlayStation, Xbox ou outra correspondente ao produto adquirido, iniciar sessão na sua conta, localizar a opção de resgatar ou ativar código e inserir a chave fornecida. Após a ativação, o conteúdo será imediatamente associado à sua conta e estará disponível para download ou utilização. Este método garante que tenha acesso rápido e seguro aos seus produtos digitais, proporcionando uma experiência moderna e sem complicações.', 3, 'https://upload.wikimedia.org/wikipedia/pt/d/d1/Halo_Infinite_capa.png'),
(20008, 'Call of Duty: Modern Warfare II', 'Xbox', 69.99, 'Disponível', 'Intensa ação em combate moderno.', 'Comprar uma chave online é uma solução prática, rápida e acessível para adquirir os seus jogos favoritos. Com apenas alguns cliques, pode garantir o acesso imediato a conteúdos digitais sem necessidade de esperar por entregas físicas, poupando tempo e custos adicionais. Além disso, as chaves online oferecem segurança e comodidade, sendo enviadas diretamente para o seu endereço de email, permitindo que resgate o conteúdo no conforto da sua casa. Para ativar a sua chave, basta aceder à plataforma indicada, como Steam, PlayStation, Xbox ou outra correspondente ao produto adquirido, iniciar sessão na sua conta, localizar a opção de resgatar ou ativar código e inserir a chave fornecida. Após a ativação, o conteúdo será imediatamente associado à sua conta e estará disponível para download ou utilização. Este método garante que tenha acesso rápido e seguro aos seus produtos digitais, proporcionando uma experiência moderna e sem complicações.', 8, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLeuoGd2ewXnCjIzjSsN_uXmHlGEQ-pjc6dw&s'),
(20009, 'Super Mario Odyssey', 'Switch', 49.99, 'Disponível', 'Mario explora mundos incríveis com seu chapéu mágico.', 'Comprar uma chave online é uma solução prática, rápida e acessível para adquirir os seus jogos favoritos. Com apenas alguns cliques, pode garantir o acesso imediato a conteúdos digitais sem necessidade de esperar por entregas físicas, poupando tempo e custos adicionais. Além disso, as chaves online oferecem segurança e comodidade, sendo enviadas diretamente para o seu endereço de email, permitindo que resgate o conteúdo no conforto da sua casa. Para ativar a sua chave, basta aceder à plataforma indicada, como Steam, PlayStation, Xbox ou outra correspondente ao produto adquirido, iniciar sessão na sua conta, localizar a opção de resgatar ou ativar código e inserir a chave fornecida. Após a ativação, o conteúdo será imediatamente associado à sua conta e estará disponível para download ou utilização. Este método garante que tenha acesso rápido e seguro aos seus produtos digitais, proporcionando uma experiência moderna e sem complicações.', 9, 'https://www.nintendo.com/eu/media/images/10_share_images/games_15/nintendo_switch_4/H2x1_NSwitch_SuperMarioOdyssey_image1600w.jpg'),
(20015, 'Splatoon 3', 'Switch', 59.99, 'Disponível', 'Divertidas batalhas de tinta em arenas coloridas.', 'Comprar uma chave online é uma solução prática, rápida e acessível para adquirir os seus jogos favoritos. Com apenas alguns cliques, pode garantir o acesso imediato a conteúdos digitais sem necessidade de esperar por entregas físicas, poupando tempo e custos adicionais. Além disso, as chaves online oferecem segurança e comodidade, sendo enviadas diretamente para o seu endereço de email, permitindo que resgate o conteúdo no conforto da sua casa. Para ativar a sua chave, basta aceder à plataforma indicada, como Steam, PlayStation, Xbox ou outra correspondente ao produto adquirido, iniciar sessão na sua conta, localizar a opção de resgatar ou ativar código e inserir a chave fornecida. Após a ativação, o conteúdo será imediatamente associado à sua conta e estará disponível para download ou utilização. Este método garante que tenha acesso rápido e seguro aos seus produtos digitais, proporcionando uma experiência moderna e sem complicações.', 15, 'https://www.nintendo.com/eu/media/images/10_share_images/games_15/nintendo_switch_4/H2x1_NSwitch_Splatoon2_image1600w.jpg'),
(20025, 'Pokémon Scarlet & Violet', 'Switch', 59.99, 'Disponível', 'Descubra novos Pokémon e regiões.', 'Comprar uma chave online é uma solução prática, rápida e acessível para adquirir os seus jogos favoritos. Com apenas alguns cliques, pode garantir o acesso imediato a conteúdos digitais sem necessidade de esperar por entregas físicas, poupando tempo e custos adicionais. Além disso, as chaves online oferecem segurança e comodidade, sendo enviadas diretamente para o seu endereço de email, permitindo que resgate o conteúdo no conforto da sua casa. Para ativar a sua chave, basta aceder à plataforma indicada, como Steam, PlayStation, Xbox ou outra correspondente ao produto adquirido, iniciar sessão na sua conta, localizar a opção de resgatar ou ativar código e inserir a chave fornecida. Após a ativação, o conteúdo será imediatamente associado à sua conta e estará disponível para download ou utilização. Este método garante que tenha acesso rápido e seguro aos seus produtos digitais, proporcionando uma experiência moderna e sem complicações.', 25, 'https://assets.nintendo.com/image/upload/q_auto/f_auto/ncom/software/switch/70010000053966/849c234de8df7265201d26d9d72f88eed3f32438d3dca12fc135beb4c3befc85'),
(20026, 'Mario Kart 8 Deluxe', 'Switch', 49.99, 'Disponível', 'Corridas emocionantes com personagens da Nintendo.', 'Comprar uma chave online é uma solução prática, rápida e acessível para adquirir os seus jogos favoritos. Com apenas alguns cliques, pode garantir o acesso imediato a conteúdos digitais sem necessidade de esperar por entregas físicas, poupando tempo e custos adicionais. Além disso, as chaves online oferecem segurança e comodidade, sendo enviadas diretamente para o seu endereço de email, permitindo que resgate o conteúdo no conforto da sua casa. Para ativar a sua chave, basta aceder à plataforma indicada, como Steam, PlayStation, Xbox ou outra correspondente ao produto adquirido, iniciar sessão na sua conta, localizar a opção de resgatar ou ativar código e inserir a chave fornecida. Após a ativação, o conteúdo será imediatamente associado à sua conta e estará disponível para download ou utilização. Este método garante que tenha acesso rápido e seguro aos seus produtos digitais, proporcionando uma experiência moderna e sem complicações.', 26, 'https://www.nintendo.com/eu/media/images/10_share_images/games_15/nintendo_switch_4/H2x1_NSwitch_Splatoon2_image1600w.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `utilizadores`
--

CREATE TABLE `utilizadores` (
  `idc` int NOT NULL,
  `primeiro_nome` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `ultimo_nome` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `numero_telemovel` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `senha` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `utilizadores`
--

INSERT INTO `utilizadores` (`idc`, `primeiro_nome`, `ultimo_nome`, `email`, `numero_telemovel`, `senha`) VALUES
(1, 'José', 'Saraiva', 'zesaraiva7@gmail.com', '914650261', '$2y$10$cHxeUpy.20WIw2pv8M/p6e6esILqOuZNB/fbH5iFpz3bcMpzjpdHa'),
(5, 'admin', 'admin', 'admin@admin.com', '999999999', '$2y$10$VeBGcGCP1yCjJMkapnFUiON1Xm/7FKIE3jSSMKL0Vu4SgCU4j9pxC'),
(6, 'Bernardo', 'Henriques', 'BernsQPHgunsnrosesronaldo@sapo.pt', '914650261', '$2y$10$ZlXvjOA9ZmntdjMw6IkVheqNqG.1rsYEwR8CG2n.a7fc0pdm10jPW');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `contactos`
--
ALTER TABLE `contactos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Índices para tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `utilizadores`
--
ALTER TABLE `utilizadores`
  ADD PRIMARY KEY (`idc`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `contactos`
--
ALTER TABLE `contactos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `utilizadores`
--
ALTER TABLE `utilizadores`
  MODIFY `idc` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;