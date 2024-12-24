-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 24-Dez-2024 às 14:17
-- Versão do servidor: 8.0.30
-- versão do PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


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

INSERT INTO `produto` (`id`, `designation`, `platform`, `price`, `status`, `description`, `bdescription`, `image`, `image_url`) VALUES
(21, 'Dark Souls III', 'PC', 39.99, 'Disponível', 'Desafie sua habilidade em um mundo sombrio.', NULL, 21, 'https://developer.android.com/static/images/logos/agdk.svg'),
(10001, 'Grand Theft Auto V', 'Steam', 29.99, 'Available', 'Explore Los Santos em um mundo aberto repleto de ação.', 'Grand Theft Auto V é um jogo eletrônico de ação-aventura desenvolvido pela Rockstar North e publicado pela Rockstar Games. É o sétimo título principal da série Grand Theft Auto e foi lançado originalmente em 17 de setembro de 2013 para PlayStation 3 e Xbox 360, com remasterizações lançadas em 2014 para PlayStation 4 e Xbox One, em 2015 para Microsoft Windows e em 2022 para PlayStation 5 e Xbox Series X/S. O jogo se passa no estado ficcional de San Andreas, com a história da campanha um jogador seguindo três criminosos e seus esforços para realizarem assaltos sob a pressão de uma agência governamental. O mundo aberto permite que os jogadores naveguem livremente pelas áreas rurais e urbanas de San Andreas.', NULL, 'https://upload.wikimedia.org/wikipedia/en/a/a5/Grand_Theft_Auto_V.png'),
(10002, 'FIFA 2023', 'PlayStation', 59.99, 'Available', 'Jogue o maior campeonato de futebol com gráficos incríveis.', NULL, NULL, 'https://upload.wikimedia.org/wikipedia/en/4/4c/FIFA_23_Cover.png'),
(10003, 'Minecraft', 'PC', 26.95, 'Available', 'Crie e explore mundos infinitos com blocos.', NULL, NULL, 'https://upload.wikimedia.org/wikipedia/en/5/51/Minecraft_cover.png'),
(10004, 'The Witcher 3: Wild Hunt', 'Xbox', 39.99, 'Unavailable', 'Assuma o papel de Geralt em uma história épica e sombria.', NULL, NULL, 'https://upload.wikimedia.org/wikipedia/en/0/0c/Witcher_3_cover_art.jpg'),
(10005, 'Cyberpunk 2077', 'PC', 49.99, 'Available', 'Explore Night City em uma aventura futurista cheia de escolhas.', NULL, NULL, 'https://upload.wikimedia.org/wikipedia/en/9/9f/Cyberpunk_2077_box_art.jpg'),
(10006, 'Red Dead Redemption 2', 'Steam', 59.99, 'Available', 'Viva a vida de um fora-da-lei no velho oeste.', NULL, NULL, 'https://upload.wikimedia.org/wikipedia/en/4/44/Red_Dead_Redemption_II.jpg'),
(10007, 'Call of Duty: Modern Warfare II', 'PlayStation', 69.99, 'Available', 'Participe de batalhas intensas no novo capítulo da franquia.', NULL, NULL, 'https://upload.wikimedia.org/wikipedia/en/a/a5/Call_of_Duty_Modern_Warfare_II_Cover.jpg'),
(10008, 'Fortnite', 'PC', 0, 'Available', 'Lute para ser o último sobrevivente neste jogo de batalha real.', NULL, NULL, 'https://upload.wikimedia.org/wikipedia/en/b/be/Fortnite_save_the_world.jpg'),
(10009, 'Elden Ring', 'Xbox', 59.99, 'Available', 'Descubra segredos e enfrente desafios em um mundo fantástico.', NULL, NULL, 'https://upload.wikimedia.org/wikipedia/en/9/9d/Elden_Ring_Box_art.jpg'),
(10010, 'God of War: Ragnarok', 'PlayStation', 69.99, 'Available', 'Kratos retorna com seu filho em uma jornada épica.', NULL, NULL, 'https://upload.wikimedia.org/wikipedia/en/1/1e/God_of_War_Ragnarok_cover.jpg'),
(10011, 'Assassins Creed Valhalla', 'PlayStation', 49.99, 'Available', 'Explore a era dos vikings em um mundo aberto épico.', NULL, NULL, 'https://upload.wikimedia.org/wikipedia/en/5/54/Assassin%27s_Creed_Valhalla_cover.jpg'),
(10012, 'Horizon Forbidden West', 'PlayStation', 69.99, 'Available', 'Aloy retorna para explorar um Oeste proibido cheio de mistérios.', NULL, NULL, 'https://upload.wikimedia.org/wikipedia/en/a/a7/Horizon_Forbidden_West_cover_art.jpg'),
(10013, 'Overwatch 2', 'PC', 0, 'Available', 'Jogo de tiro em equipe com heróis icônicos.', NULL, NULL, 'https://upload.wikimedia.org/wikipedia/en/d/d2/Overwatch_2_cover_art.jpg'),
(10014, 'Diablo IV', 'Xbox', 69.99, 'Available', 'Enfrente hordas de inimigos em um mundo sombrio e infernal.', NULL, NULL, 'https://upload.wikimedia.org/wikipedia/en/c/cf/Diablo_IV_cover_art.jpg'),
(10015, 'The Legend of Zelda: Breath of the Wild', 'Nintendo Switch', 59.99, 'Available', 'Aventura em um vasto mundo aberto de Hyrule.', NULL, NULL, 'https://upload.wikimedia.org/wikipedia/en/f/f5/The_Legend_of_Zelda_Breath_of_the_Wild.jpg'),
(10016, 'Mario Kart 8 Deluxe', 'Nintendo Switch', 49.99, 'Available', 'Corridas emocionantes com Mario e seus amigos.', NULL, NULL, 'https://upload.wikimedia.org/wikipedia/en/8/8d/Mario_Kart_8_Deluxe.jpg'),
(10017, 'Animal Crossing: New Horizons', 'Nintendo Switch', 59.99, 'Available', 'Crie e personalize sua própria ilha paradisíaca.', NULL, NULL, 'https://upload.wikimedia.org/wikipedia/en/5/5d/Animal_Crossing_New_Horizons.jpg'),
(10018, 'Super Smash Bros. Ultimate', 'Nintendo Switch', 59.99, 'Available', 'Lute com personagens icônicos em batalhas épicas.', NULL, NULL, 'https://upload.wikimedia.org/wikipedia/en/5/50/Super_Smash_Bros._Ultimate.jpg'),
(10019, 'League of Legends', 'PC', 0, 'Available', 'Moba estratégico com milhões de jogadores pelo mundo.', NULL, NULL, 'https://upload.wikimedia.org/wikipedia/en/7/77/League_of_Legends_logo.png'),
(10020, 'Valorant', 'PC', 0, 'Available', 'Jogo tático de tiro com agentes únicos e habilidades.', NULL, NULL, 'https://upload.wikimedia.org/wikipedia/en/0/03/Valorant_key_art.jpg'),
(10021, 'Apex Legends', 'PC', 0, 'Available', 'Jogo de batalha real em ritmo acelerado.', NULL, NULL, 'https://upload.wikimedia.org/wikipedia/en/0/0e/Apex_legends_cover.jpg'),
(10022, 'Doom Eternal', 'Steam', 39.99, 'Available', 'Enfrente demônios em combates intensos e cheios de ação.', NULL, NULL, 'https://image.api.playstation.com/vulcan/ap/rnd/202010/0114/b4Q1XWYaTdJLUvRuALuqr0wP.png'),
(10023, 'Star Wars Jedi: Fallen Order', 'Steam', 49.99, 'Available', 'Viva como um Jedi sobrevivente em um mundo após a Ordem 66.', NULL, NULL, 'https://image.api.playstation.com/vulcan/img/rnd/202105/1714/GGoHFijC6gbQxd1CXvPIbTT5.png'),
(10024, 'Far Cry 6', 'PlayStation', 59.99, 'Available', 'Lute contra um regime opressor na ilha de Yara.', NULL, NULL, 'https://upload.wikimedia.org/wikipedia/en/5/56/Far_Cry_6_cover_art.jpg'),
(10025, 'Ghost of Tsushima', 'PlayStation', 59.99, 'Available', 'Lute como um samurai em uma história épica do Japão feudal.', NULL, NULL, 'https://upload.wikimedia.org/wikipedia/en/a/a4/Ghost_of_Tsushima.jpg'),
(10026, 'Resident Evil Village', 'Steam', 59.99, 'Available', 'Sobreviva a horrores em uma vila remota cheia de mistérios.', NULL, NULL, 'https://image.api.playstation.com/vulcan/ap/rnd/202101/0812/FkzwjnJknkrFlozkTdeQBMub.png'),
(10027, 'Sekiro: Shadows Die Twice', 'Steam', 49.99, 'Available', 'Explore o Japão feudal em um jogo desafiador de ação e aventura.', NULL, NULL, 'https://upload.wikimedia.org/wikipedia/pt/7/7b/Sekiro_Shadows_Die_Twice_capa.png'),
(10028, 'Control', 'PC', 29.99, 'Available', 'Resolva mistérios sobrenaturais no Federal Bureau of Control.', NULL, NULL, 'https://upload.wikimedia.org/wikipedia/en/7/74/Control_Cover_Art.jpg'),
(10029, 'CyberConnect 2077 Expansion: Phantom Liberty', 'PC', 29.99, 'Available', 'Explore uma expansão em Night City cheia de intrigas.', NULL, NULL, 'https://upload.wikimedia.org/wikipedia/en/3/36/Cyberpunk_2077_Phantom_Liberty_cover_art.jpg'),
(10030, 'Hades', 'PC', 24.99, 'Available', 'Escape do submundo em uma história mitológica repleta de ação.', NULL, NULL, 'https://upload.wikimedia.org/wikipedia/en/e/e2/Hades_cover_art.jpg'),
(20001, 'The Legend of Zelda: Breath of the Wild', 'Switch', 59.99, 'Disponível', 'Explore um vasto mundo aberto em Hyrule.', NULL, 1, 'https://upload.wikimedia.org/wikipedia/en/c/c6/The_Legend_of_Zelda_Breath_of_the_Wild.jpg'),
(20002, 'The Last of Us Part II', 'PS4', 39.99, 'Disponível', 'A emocionante sequência de The Last of Us.', NULL, 2, 'https://developer.android.com/static/images/logos/agdk.svg'),
(20003, 'Halo Infinite', 'Xbox', 69.99, 'Disponível', 'O Master Chief retorna para salvar a galáxia.', NULL, 3, 'https://developer.android.com/static/images/logos/agdk.svg'),
(20004, 'God of War Ragnarok', 'PS5', 69.99, 'Disponível', 'Kratos e Atreus enfrentam deuses nórdicos.', NULL, 4, 'https://developer.android.com/static/images/logos/agdk.svg'),
(20005, 'Minecraft', 'PC', 19.99, 'Disponível', 'Construa e explore mundos infinitos.', NULL, 5, 'https://developer.android.com/static/images/logos/agdk.svg'),
(20006, 'Elden Ring', 'PC', 59.99, 'Disponível', 'Um vasto RPG de ação com elementos de fantasia.', NULL, 6, 'https://developer.android.com/static/images/logos/agdk.svg'),
(20007, 'FIFA 23', 'PS5', 49.99, 'Disponível', 'Experimente o futebol como nunca antes.', NULL, 7, 'https://developer.android.com/static/images/logos/agdk.svg'),
(20008, 'Call of Duty: Modern Warfare II', 'Xbox', 69.99, 'Disponível', 'Intensa ação em combate moderno.', NULL, 8, 'https://developer.android.com/static/images/logos/agdk.svg'),
(20009, 'Super Mario Odyssey', 'Switch', 49.99, 'Disponível', 'Mario explora mundos incríveis com seu chapéu mágico.', NULL, 9, 'https://developer.android.com/static/images/logos/agdk.svg'),
(20010, 'Cyberpunk 2077', 'PC', 59.99, 'Disponível', 'Mergulhe no mundo futurista de Night City.', NULL, 10, 'https://developer.android.com/static/images/logos/agdk.svg'),
(20011, 'Animal Crossing: New Horizons', 'Switch', 49.99, 'Disponível', 'Crie e personalize sua própria ilha.', NULL, 11, 'https://developer.android.com/static/images/logos/agdk.svg'),
(20012, 'Red Dead Redemption 2', 'PS4', 39.99, 'Disponível', 'Viva como um fora da lei no velho oeste.', NULL, 12, 'https://developer.android.com/static/images/logos/agdk.svg'),
(20013, 'Fortnite', 'PC', 0, 'Disponível', 'Jogo de batalha real gratuito e viciante.', NULL, 13, 'https://developer.android.com/static/images/logos/agdk.svg'),
(20014, 'Overwatch 2', 'PC', 39.99, 'Disponível', 'Jogo de tiro baseado em equipes.', NULL, 14, 'https://developer.android.com/static/images/logos/agdk.svg'),
(20015, 'Splatoon 3', 'Switch', 59.99, 'Disponível', 'Divertidas batalhas de tinta em arenas coloridas.', NULL, 15, 'https://developer.android.com/static/images/logos/agdk.svg'),
(20016, 'Assassin’s Creed Valhalla', 'PC', 49.99, 'Disponível', 'Jogue como um viking na era medieval.', NULL, 16, 'https://developer.android.com/static/images/logos/agdk.svg'),
(20017, 'Gran Turismo 7', 'PS5', 69.99, 'Disponível', 'O melhor simulador de corridas.', NULL, 17, 'https://developer.android.com/static/images/logos/agdk.svg'),
(20018, 'Horizon Forbidden West', 'PS5', 59.99, 'Disponível', 'Explore terras misteriosas e perigosas.', NULL, 18, 'https://developer.android.com/static/images/logos/agdk.svg'),
(20019, 'Among Us', 'PC', 4.99, 'Disponível', 'Um divertido jogo de dedução social.', NULL, 19, 'https://developer.android.com/static/images/logos/agdk.svg'),
(20020, 'The Sims 4', 'PC', 19.99, 'Disponível', 'Construa e controle a vida dos seus Sims.', NULL, NULL, 'https://developer.android.com/static/images/logos/agdk.svg'),
(20022, 'NBA 2K23', 'PS5', 49.99, 'Disponível', 'Jogue basquete com gráficos realistas.', NULL, 20022, 'https://developer.android.com/static/images/logos/agdk.svg'),
(20023, 'Battlefield 2042', 'PC', 59.99, 'Disponível', 'Combate militar em larga escala.', NULL, 23, 'https://developer.android.com/static/images/logos/agdk.svg'),
(20024, 'Genshin Impact', 'PC', 0, 'Disponível', 'Jogo de RPG de ação gratuito.', NULL, 24, 'https://developer.android.com/static/images/logos/agdk.svg'),
(20025, 'Pokémon Scarlet & Violet', 'Switch', 59.99, 'Disponível', 'Descubra novos Pokémon e regiões.', NULL, 25, 'https://developer.android.com/static/images/logos/agdk.svg'),
(20026, 'Mario Kart 8 Deluxe', 'Switch', 49.99, 'Disponível', 'Corridas emocionantes com personagens da Nintendo.', NULL, 26, 'https://developer.android.com/static/images/logos/agdk.svg'),
(20027, 'Resident Evil Village', 'PC', 39.99, 'Disponível', 'Enfrente horrores em um vilarejo remoto.', NULL, 27, 'https://developer.android.com/static/images/logos/agdk.svg'),
(20028, 'Doom Eternal', 'PC', 59.99, 'Disponível', 'Ação rápida contra hordas demoníacas.', NULL, 28, 'https://developer.android.com/static/images/logos/agdk.svg'),
(20029, 'League of Legends', 'PC', 0, 'Disponível', 'Jogo de estratégia multiplayer competitivo.', NULL, 29, 'https://developer.android.com/static/images/logos/agdk.svg'),
(20030, 'Valorant', 'PC', 0, 'Disponível', 'Jogo de tiro tático gratuito.', NULL, 30, 'https://developer.android.com/static/images/logos/agdk.svg');



CREATE TABLE `utilizadores` (
  `idc` int NOT NULL,
  `primeiro_nome` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `ultimo_nome` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `numero_telemovel` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `senha` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO `utilizadores` (`idc`, `primeiro_nome`, `ultimo_nome`, `email`, `numero_telemovel`, `senha`) VALUES
(1, 'José', 'Saraiva', 'zesaraiva7@gmail.com', '914650261', '$2y$10$cHxeUpy.20WIw2pv8M/p6e6esILqOuZNB/fbH5iFpz3bcMpzjpdHa'),
(5, 'admin', 'admin', 'admin@admin.com', '999999999', '$2y$10$VeBGcGCP1yCjJMkapnFUiON1Xm/7FKIE3jSSMKL0Vu4SgCU4j9pxC'),
(6, 'Bernardo', 'Henriques', 'BernsQPHgunsnrosesronaldo@sapo.pt', '914650261', '$2y$10$ZlXvjOA9ZmntdjMw6IkVheqNqG.1rsYEwR8CG2n.a7fc0pdm10jPW');


ALTER TABLE `produto`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `utilizadores`
  ADD PRIMARY KEY (`idc`),
  ADD UNIQUE KEY `email` (`email`);


ALTER TABLE `utilizadores`
  MODIFY `idc` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;
