-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2017 at 12:01 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Clive Barker', 'Clive Barker (born 5 October 1952) is an English writer, film director, and visual artist best known for his work in both fantasy and horror fiction. Barker came to prominence in the mid-1980s with a series of short stories, the Books of Blood, which established him as a leading horror writer. He has since written many novels and other works, and his fiction has been adapted into films, notably the Hellraiser and Candyman series. He was the Executive Producer of the film Gods and Monsters.', '2017-05-02 21:00:00', '2017-05-03 09:20:09'),
(2, 'Jane Austen', 'Jane Austen (/ˈdʒeɪn ˈɒstɪn/; 16 December 1775 – 18 July 1817) was an English novelist known primarily for her six major novels, which interpret, critique and comment upon the British landed gentry at the end of the 18th century. Austen''s plots often explore the dependence of women on marriage in the pursuit of favourable social standing and economic security. Her works critique the novels of sensibility of the second half of the 18th century and are part of the transition to 19th-century literary realism', '2017-05-02 21:00:00', '2017-05-02 21:00:00'),
(5, 'Fyodor Mikhailovich Dostoyevsky[a]', 'Fyodor Mikhailovich Dostoyevsky[a] (/ˌdɒstəˈjɛfski, ˌdʌs-/;[1] Russian: Фёдор Миха́йлович Достое́вский; IPA: [ˈfʲɵdər mʲɪˈxajləvʲɪtɕ dəstɐˈjɛfskʲɪj] ( listen); 11 November 1821 – 9 February 1881),[b] sometimes transliterated Dostoevsky, was a Russian novelist, short story writer, essayist, journalist and philosopher. Dostoyevsky''s literary works explore human psychology in the troubled political, social, and spiritual atmosphere of 19th-century Russia, and engage with a variety of philosophical and religious themes.', '2017-05-03 17:59:26', '2017-05-03 17:59:26');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` int(11) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `name`, `description`, `author_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Cabal', 'Cabal is a 1988 horror novel by the British author Clive Barker. It was originally published in the United States as part of a collection comprising a novel and several short stories from Barker''s sixth and final volume of the Books of Blood.\r\n\r\nThe book was adapted into the film Nightbreed in 1990, written and directed by Barker himself, starring Craig Sheffer and David Cronenberg.', 1, 'C:\\xampp\\tmp\\php63B4.tmp', '2017-05-03 09:53:48', '2017-05-03 09:53:48'),
(11, 'The Brothers Karamazov', 'The Brothers Karamazov (Russian: Бра́тья Карама́зовы, Brat''ya Karamazovy, pronounced [ˈbratʲjə kərɐˈmazəvɨ]), also translated as The Karamazov Brothers, is the final novel by the Russian author Fyodor Dostoyevsky. Dostoyevsky spent nearly two years writing The Brothers Karamazov, which was published as a serial in The Russian Messenger from January 1879 to November 1880. The author died less than four months after its publication.', 5, 'C:\\xampp\\tmp\\phpFE9D.tmp', '2017-05-03 18:01:39', '2017-05-03 18:01:39'),
(12, 'Pride and Prejudice', 'Pride and Prejudice is a novel by Jane Austen, first published in 1813. The story charts the emotional development of the protagonist, Elizabeth Bennet, who learns the error of making hasty judgements and comes to appreciate the difference between the superficial and the essential. The comedy of the writing lies in the depiction of manners, education, and marriage and money in the British Regency.', 1, 'C:\\xampp\\tmp\\php2B89.tmp', '2017-05-03 18:05:15', '2017-05-03 18:09:29');

-- --------------------------------------------------------

--
-- Table structure for table `book_tags`
--

CREATE TABLE `book_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `book_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_tags`
--

INSERT INTO `book_tags` (`id`, `book_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_05_03_081602_create_authors_table', 1),
(4, '2017_05_03_081628_create_books_table', 2),
(5, '2017_05_03_081708_create_tags_table', 2),
(6, '2017_05_03_083118_create_book_tags_table', 2),
(7, '2017_05_03_140006_add_last_login_to_users_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'horror', 'Lorem Ipsum is simply dummy text of the printing and typesetting\r\nindustry.\r\n', NULL, NULL),
(2, 'novel', 'Lorem Ipsum is simply dummy text of the printing and typesetting\r\nindustry.\r\n', NULL, NULL),
(5, 'science fiction', 'Lorem Ipsum is simply dummy text of the printing and typesetting\r\nindustry.', '2017-05-03 18:00:33', '2017-05-03 18:00:33');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_login` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `last_login`) VALUES
(3, 'Mariana', 'mariana@gmail.com', '$2y$10$Q2sojMlqbEvMR1RRFGXbieCxWjXqzVjNGQzgtUkvE4QilbG6QlReu', 'ttcMTJqFD8d26kK7rX2TpY6pF1Q572DyGzwP2AFIennCONsjrFmZiGGo1EaQ', '2017-05-03 11:33:18', '2017-05-03 14:55:31', '2017-05-03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_tags`
--
ALTER TABLE `book_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `book_tags`
--
ALTER TABLE `book_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
