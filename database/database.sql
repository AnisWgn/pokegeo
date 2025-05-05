-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 04 mai 2025 à 23:39
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `trading_card_game`
--

-- --------------------------------------------------------

--
-- Structure de la table `cards`
--

CREATE TABLE `cards` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `available_quantity` int(11) DEFAULT 0,
  `price` int(11) DEFAULT 100,
  `available_for_purchase` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `cards`
--

INSERT INTO `cards` (`id`, `name`, `description`, `image_url`, `available_quantity`, `price`, `available_for_purchase`, `created_at`) VALUES
(6, 'Autriche-Hongrie', 'L\'Autriche-Hongrie (en allemand : Österreich-Ungarn, en hongrois : Ausztria-Magyarország), en forme longue habituelle la Monarchie austro-hongroise (en allemand : Österreichisch-Ungarische Monarchie, en hongrois : Osztrák-Magyar Monarchia), parfois appelée l\'Empire austro-hongrois ou encore la monarchie danubienne, est un ancien empire d\'Europe centrale réunissant deux pays distincts : l\'empire d\'Autriche ou, plus simplement, l\'Autriche, et les royaumes de Hongrie-Croatie ou, plus simplement, la Hongrie.', 'images/Autriche-Hongrie.png', 100, 100, 1, '2025-05-04 20:35:33'),
(7, 'France', 'La France Écouterⓘ, en forme longue la République française[7] Écouterⓘ, est un État souverain transcontinental dont le territoire métropolitain s\'étend en Europe de l\'Ouest et dont le territoire ultramarin s\'étend dans les océans Indien, Atlantique et Pacifique, ainsi qu\'en Antarctique[N 6] et en Amérique du Sud. Le pays a des frontières terrestres avec la Belgique, le Luxembourg, l\'Allemagne, la Suisse, l\'Italie, l\'Espagne, Monaco et l\'Andorre en Europe, auxquelles s\'ajoutent les frontières terrestres avec le Brésil, le Suriname et les Pays-Bas aux Amériques. La France dispose d\'importantes façades maritimes sur l\'Atlantique, la Méditerranée, le Pacifique et l\'océan Indien, lui permettant de bénéficier de la deuxième zone économique exclusive la plus vaste au monde.', 'images/france.png', 100, 100, 1, '2025-05-04 21:02:56'),
(8, 'Belgique', 'La Belgique (/bɛlʒik/[b] Écouterⓘ ; en néerlandais : België /ˈbɛlɣiǝ/[c] Écouterⓘ ; en allemand : Belgien /ˈbɛlgiən/[d] Écouterⓘ), en forme longue le royaume de Belgique[e], est un pays d’Europe de l\'Ouest, bordé par la France, les Pays-Bas, l’Allemagne, le Luxembourg et la mer du Nord. La Belgique couvre une superficie de 30 688 km2[5] avec une population de 11 812 354 habitants au 1er janvier 2025[1], soit une densité de 383 habitants/km2. Politiquement, il s\'agit d’une monarchie constitutionnelle fédérale à régime parlementaire. Sa capitale est Bruxelles ; les autres grandes villes sont Anvers, Gand, Charleroi, Liège, Bruges, Namur et Louvain.', 'images/Belgique.png', 100, 100, 1, '2025-05-04 21:03:34'),
(9, 'Espagne', 'L\'Espagne Écouterⓘ, en forme longue le royaume d\'Espagne[10] (respectivement en espagnol : España Écouterⓘ et Reino de España), est un État souverain transcontinental d\'Europe du Sud-Ouest, qui occupe la plus grande partie de la péninsule Ibérique. Le pays a une superficie de 504 030 km2 et une population de 48 millions d\'habitants.', 'images/Espagne.png', 100, 100, 1, '2025-05-04 21:05:43'),
(10, 'Bulgarie', 'La Bulgarie, en forme longue la république de Bulgarie (en bulgare : България et Република България, translittération : Bălgarija et Republika Bălgarija), est un pays d\'Europe du Sud-Est situé dans les Balkans. Elle est bordée par la mer Noire à l\'est, au sud par la Grèce et la Turquie, au nord par le Danube et la Roumanie, à l\'ouest par la Serbie et la Macédoine du Nord. Sa capitale est Sofia.', 'images/Bulgarie.png', 100, 100, 1, '2025-05-04 21:06:26'),
(11, 'Autriche', 'L\'AutricheÉcouterⓘ (en allemand : Österreich Écouterⓘ), en forme longue la république d\'Autriche[6] (en allemand : Republik Österreich), est un État fédéral d\'Europe centrale, sans accès à la mer. Pays montagneux, il est entouré, dans le sens des aiguilles d\'une montre, par l\'Allemagne et la Tchéquie au nord, la Slovaquie et la Hongrie à l\'est, la Slovénie et l\'Italie au sud, et par la Suisse et le Liechtenstein à l\'ouest. Sa capitale est Vienne, la plus grande ville du pays.', 'images/Autriche.png', 100, 100, 1, '2025-05-04 21:07:10'),
(12, 'Allemagne', 'L\'Allemagne Écouterⓘ (en allemand : Deutschland Écouterⓘ), en forme longue la République fédérale d\'Allemagne[7] (Bundesrepublik Deutschland), est un État d\'Europe centrale, et selon certaines définitions d\'Europe de l\'Ouest, entouré par la mer du Nord, le Danemark et la mer Baltique au nord, par la Pologne à l\'est-nord-est, la Tchéquie à l\'est-sud-est, l\'Autriche au sud-sud-est, la Suisse au sud-sud-ouest, la France au sud-ouest, la Belgique et le Luxembourg à l\'ouest, enfin par les Pays-Bas à l\'ouest-nord-ouest. Décentralisée et fédérale, l\'Allemagne compte quatre villes de plus d\'un million d\'habitants, par ordre décroissant la capitale Berlin, Hambourg, Munich et Cologne, mais les quatre plus grandes agglomérations sont Rhin-Ruhr (Cologne et Düsseldorf, environ 11 millions d’habitants), Francfort-sur-le-Main (environ 5,5 millions), Berlin (4,5 millions) et Stuttgart (2,7 millions). Le siège du Gouvernement est situé dans la ville de Berlin et dans la ville fédérale de Bonn, ancienne capitale de la République fédérale d\'Allemagne. Francfort-sur-le-Main est considérée comme la capitale financière de l\'Allemagne[b] et abrite le siège de la Banque centrale européenne. La langue officielle du pays est principalement l\'allemand, à côté d\'autres langues régionales ou minoritaires.', 'images/Allemagne.png', 100, 100, 1, '2025-05-04 21:07:37'),
(13, 'Russie', 'La Russie (en russe : Россия, Rossiïa prononciationⓘ), en forme longue la fédération de Russie[14],[b] (en russe : Российская Федерация, Rossiïskaïa Federatsiïa prononciationⓘ), est un État fédéral transcontinental, le plus vaste État de la planète, à cheval sur l\'Asie du Nord (80 % de sa superficie) et sur l\'Europe (20 %).', 'images/Russie.png', 100, 100, 1, '2025-05-04 21:35:24'),
(14, 'Portugal', 'Le Portugal, en forme longue la République portugaise, en portugais : República Portuguesa, est un pays d\'Europe du Sud, membre de l\'Union européenne, situé dans l\'Ouest de la péninsule Ibérique. Délimité au nord et à l\'est par l\'Espagne puis au sud et à l\'ouest par l\'océan Atlantique, ce pays est le plus occidental de l\'Europe continentale. Fondé en 1143, c\'est le plus vieil état-nation d\'Europe et ses frontières terrestres internationales, établies au milieu du XIIIe siècle, sont parmi les plus anciennes encore en vigueur en Europe et dans le monde[7].', 'images/Portugal.png', 100, 100, 1, '2025-05-04 21:36:24'),
(15, 'Suède', 'La Suède (en suédois : Sverige /ˈsvæ̌rjɛ/[6]) — en forme longue le royaume de Suède[7] (Konungariket Sverige /ˈkôːnɵŋaˌriːkɛt ˈsvæ̌rjɛ/[6] Écouterⓘ) — est un pays d\'Europe du Nord et de Scandinavie. Sa capitale est Stockholm, ses citoyens sont les Suédois et Suédoises et sa langue officielle et majoritaire est le suédois. Le finnois et le sami sont aussi parlés, principalement dans le nord du pays. Les variations régionales sont fréquentes.', 'images/Suède.png', 100, 100, 1, '2025-05-04 21:36:56'),
(16, 'Pologne', 'La Pologne, en forme longue république de Pologne[b] (en polonais : Polska ; [forme longue] Rzeczpospolita Polska[c]), est un État d\'Europe centrale, frontalier avec l\'Allemagne à l\'ouest, la Tchéquie au sud-ouest, la Slovaquie au sud, l\'Ukraine à l\'est-sud-est et la Biélorussie à l\'est-nord-est, et enfin l\'enclave russe de Kaliningrad et la Lituanie au nord-est.', 'images/Pologne.png', 100, 100, 1, '2025-05-04 21:37:22'),
(17, 'Roumanie', 'La Roumanie (en roumain : România) est un pays de l\'est de l\'Europe, partagé entre Europe centrale, orientale et du Sud-Est[7]. C’est le sixième pays le plus peuplé de l\'Union européenne et le douzième pays le plus grand pour sa superficie totale. La géographie du pays est structurée par les Carpates, le Danube et le littoral de la mer Noire. La Roumanie a comme pays frontaliers la Hongrie, l\'Ukraine, la Moldavie, la Bulgarie et la Serbie.', 'images/Roumanie.png', 100, 100, 1, '2025-05-04 21:37:54'),
(18, 'Pays-Bas', 'Les Pays-Bas (en néerlandais : Nederland), en forme longue le royaume des Pays-Bas (Koninkrijk der Nederlanden), parfois appelé Hollande par métonymie, sont un pays transcontinental dont le territoire continental est situé en Europe de l\'Ouest (ou, d\'après certaines interprétations, en Europe du Nord).', 'images/Pays_Bas.png', 100, 100, 1, '2025-05-04 21:38:22'),
(19, 'Hongrie', 'La Hongrie (en hongrois : Magyarország, /ˈmɒɟɒɾoɾsaːg/Écouterⓘ) est une république constitutionnelle unitaire située dans le sud-est de l\'Europe centrale, aux confins de l\'Europe de l\'Est et de l\'Europe du Sud-Est[8],[9],[10]. Elle a pour capitale Budapest, pour langue officielle le hongrois et pour monnaie le forint. Son drapeau est constitué de trois bandes horizontales, rouge, blanche et verte, et son hymne national est le Himnusz. D\'une superficie de 93 030 km2, elle s\'étend sur 250 km du nord au sud et 524 km d\'est en ouest. Elle a 2 009 km de frontières, avec l\'Autriche à l\'ouest, la Slovénie et la Croatie au sud-ouest, la Serbie au sud, la Roumanie au sud-est, l\'Ukraine au nord-est et la Slovaquie au nord.', 'images/Hongrie.png', 100, 100, 1, '2025-05-04 21:38:52');

-- --------------------------------------------------------

--
-- Structure de la table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `card_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `transaction_type` enum('purchase','sale','gift') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_admin` tinyint(1) DEFAULT 0,
  `last_card_draw` timestamp NULL DEFAULT NULL,
  `coins` int(11) DEFAULT 1000,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `is_admin`, `last_card_draw`, `coins`, `created_at`) VALUES
(1, 'admin', '$2y$10$EZ1PDXmBxjvOP6Ff0YxjxulrNkeSG695qX3clUKK.W7S2UhckxS5S', 1, NULL, 1000, '2025-05-04 00:25:26'),
(2, 'Uncle', '$2y$10$p1BnW//GEw32wogyC48QV.JTbjFbSda7gaVqHnyyl0Hs8KkbzNDhC', 1, '2025-05-04 21:22:10', 800, '2025-05-04 00:28:22'),
(3, 'test', '$2y$10$.M/NUYkcpRz29TPNM8pKAOiN5Q2z1rzAcAX/XURZ23OrgkpTo07e6', 0, NULL, 1000, '2025-05-04 00:40:19');

-- --------------------------------------------------------

--
-- Structure de la table `user_cards`
--

CREATE TABLE `user_cards` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `card_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `user_cards`
--

INSERT INTO `user_cards` (`id`, `user_id`, `card_id`, `quantity`, `created_at`) VALUES
(6, 2, 7, 1, '2025-05-04 21:22:10'),
(7, 2, 10, 1, '2025-05-04 21:22:10');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `card_id` (`card_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Index pour la table `user_cards`
--
ALTER TABLE `user_cards`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_card_unique` (`user_id`,`card_id`),
  ADD KEY `card_id` (`card_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `cards`
--
ALTER TABLE `cards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `user_cards`
--
ALTER TABLE `user_cards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`card_id`) REFERENCES `cards` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `user_cards`
--
ALTER TABLE `user_cards`
  ADD CONSTRAINT `user_cards_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_cards_ibfk_2` FOREIGN KEY (`card_id`) REFERENCES `cards` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
