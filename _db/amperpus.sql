-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Jun 2024 pada 20.23
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `amperpus`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sampul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penulis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penerbit_id` bigint(20) UNSIGNED NOT NULL,
  `kategori_id` bigint(20) UNSIGNED NOT NULL,
  `rak_id` bigint(20) UNSIGNED NOT NULL,
  `stok` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id`, `judul`, `slug`, `sampul`, `penulis`, `penerbit_id`, `kategori_id`, `rak_id`, `stok`, `created_at`, `updated_at`) VALUES
(1, 'Bintang', 'bintang', 'buku/qGb4qlVuJOujqYsiyP2XLSqLi2Pti1BXSO7Kp9Do.jpg', 'Tere liye', 2, 2, 2, 10, '2024-06-07 09:00:35', '2024-06-07 10:36:29'),
(2, 'Matahari', 'matahari', 'buku/hswZ6pcrp0OX6YbjR43jsHzRUIMgC12TWt7j1i08.jpg', 'Tere liye', 3, 2, 3, 10, '2024-06-07 09:00:36', '2024-06-07 10:34:56'),
(3, 'Tentang kamu', 'tentang-kamu', 'buku/Ps4n6lZzr6TxCF4m4dJEXOs0sEClYqOdV8Qxtqiq.jpg', 'Tere liye', 2, 2, 4, 10, '2024-06-07 09:00:36', '2024-06-07 10:35:19'),
(4, 'Gusdur', 'gusdur', 'buku/5vuqY8X6UKnSapPEjiMQXYOmnQ9wZbQmxOs1keTy.jpg', 'Greg borton', 2, 3, 7, 10, '2024-06-07 09:00:36', '2024-06-07 10:35:26'),
(5, 'Habibie', 'habibie', 'buku/Si6Wb5bo0BX2oHsvwz7GnUkNDPZpJQ0OKF8x8CQE.jpg', 'Raden toto sugiharto', 2, 3, 8, 10, '2024-06-07 09:00:36', '2024-06-07 10:35:35'),
(6, 'Naruto volume 58', 'naruto-volume-58', 'buku/oNv0BmBt9DJw006zm9pTg90DKvwkbHhnwA9skdiN.jpg', 'Masashi kishimoto', 3, 6, 12, 10, '2024-06-07 09:00:36', '2024-06-07 10:35:50'),
(7, 'Naruto volume 71', 'naruto-volume-71', 'buku/OOVyRxluopg385lE85SF8ISzn4K7RFpFperuFS5a.jpg', 'Masashi kishimoto', 3, 6, 13, 10, '2024-06-07 09:00:36', '2024-06-07 10:36:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_peminjaman`
--

CREATE TABLE `detail_peminjaman` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `peminjaman_id` bigint(20) UNSIGNED NOT NULL,
  `buku_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id`, `nama`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'None', 'none', '2024-06-07 09:00:28', '2024-06-07 09:00:28'),
(2, 'Novel', 'novel', '2024-06-07 09:00:28', '2024-06-07 09:00:28'),
(3, 'Sejarah', 'sejarah', '2024-06-07 09:00:29', '2024-06-07 09:00:29'),
(4, 'Religi', 'religi', '2024-06-07 09:00:29', '2024-06-07 09:00:29'),
(5, 'Biografi', 'biografi', '2024-06-07 09:00:30', '2024-06-07 09:00:30'),
(6, 'Komik', 'komik', '2024-06-07 09:00:30', '2024-06-07 09:00:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_06_10_074424_create_permission_tables', 1),
(5, '2021_06_10_092718_create_kategori_table', 1),
(6, '2021_06_10_092904_create_rak_table', 1),
(7, '2021_06_10_092922_create_penerbit_table', 1),
(8, '2021_06_10_092940_create_buku_table', 1),
(9, '2021_06_25_084641_create_peminjaman_table', 1),
(10, '2021_06_25_085011_create_detail_peminjaman_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 3),
(3, 'App\\Models\\User', 4),
(3, 'App\\Models\\User', 5),
(3, 'App\\Models\\User', 6),
(3, 'App\\Models\\User', 7),
(3, 'App\\Models\\User', 8),
(3, 'App\\Models\\User', 9),
(3, 'App\\Models\\User', 10),
(3, 'App\\Models\\User', 11),
(3, 'App\\Models\\User', 12),
(3, 'App\\Models\\User', 13),
(3, 'App\\Models\\User', 14),
(3, 'App\\Models\\User', 15),
(3, 'App\\Models\\User', 16),
(3, 'App\\Models\\User', 17),
(3, 'App\\Models\\User', 18),
(3, 'App\\Models\\User', 19),
(3, 'App\\Models\\User', 20),
(3, 'App\\Models\\User', 21),
(3, 'App\\Models\\User', 22),
(3, 'App\\Models\\User', 23),
(3, 'App\\Models\\User', 24),
(3, 'App\\Models\\User', 25),
(3, 'App\\Models\\User', 26),
(3, 'App\\Models\\User', 27),
(3, 'App\\Models\\User', 28),
(3, 'App\\Models\\User', 29),
(3, 'App\\Models\\User', 30),
(3, 'App\\Models\\User', 31),
(3, 'App\\Models\\User', 32),
(3, 'App\\Models\\User', 33),
(3, 'App\\Models\\User', 34),
(3, 'App\\Models\\User', 35),
(3, 'App\\Models\\User', 36),
(3, 'App\\Models\\User', 37),
(3, 'App\\Models\\User', 38),
(3, 'App\\Models\\User', 39),
(3, 'App\\Models\\User', 40),
(3, 'App\\Models\\User', 41),
(3, 'App\\Models\\User', 42),
(3, 'App\\Models\\User', 43),
(3, 'App\\Models\\User', 44),
(3, 'App\\Models\\User', 45),
(3, 'App\\Models\\User', 46),
(3, 'App\\Models\\User', 47),
(3, 'App\\Models\\User', 48),
(3, 'App\\Models\\User', 49),
(3, 'App\\Models\\User', 50),
(3, 'App\\Models\\User', 51),
(3, 'App\\Models\\User', 52),
(3, 'App\\Models\\User', 53),
(3, 'App\\Models\\User', 54),
(3, 'App\\Models\\User', 55),
(3, 'App\\Models\\User', 56),
(3, 'App\\Models\\User', 57),
(3, 'App\\Models\\User', 58),
(3, 'App\\Models\\User', 59),
(3, 'App\\Models\\User', 60),
(3, 'App\\Models\\User', 61),
(3, 'App\\Models\\User', 62),
(3, 'App\\Models\\User', 63),
(3, 'App\\Models\\User', 64),
(3, 'App\\Models\\User', 65),
(3, 'App\\Models\\User', 66),
(3, 'App\\Models\\User', 67),
(3, 'App\\Models\\User', 68),
(3, 'App\\Models\\User', 69),
(3, 'App\\Models\\User', 70),
(3, 'App\\Models\\User', 71),
(3, 'App\\Models\\User', 72),
(3, 'App\\Models\\User', 73),
(3, 'App\\Models\\User', 74),
(3, 'App\\Models\\User', 75),
(3, 'App\\Models\\User', 76),
(3, 'App\\Models\\User', 77),
(3, 'App\\Models\\User', 78),
(3, 'App\\Models\\User', 79),
(3, 'App\\Models\\User', 80),
(3, 'App\\Models\\User', 81),
(3, 'App\\Models\\User', 82),
(3, 'App\\Models\\User', 83),
(3, 'App\\Models\\User', 84),
(3, 'App\\Models\\User', 85),
(3, 'App\\Models\\User', 86),
(3, 'App\\Models\\User', 87),
(3, 'App\\Models\\User', 88),
(3, 'App\\Models\\User', 89),
(3, 'App\\Models\\User', 90),
(3, 'App\\Models\\User', 91),
(3, 'App\\Models\\User', 92),
(3, 'App\\Models\\User', 93),
(3, 'App\\Models\\User', 94),
(3, 'App\\Models\\User', 95),
(3, 'App\\Models\\User', 96),
(3, 'App\\Models\\User', 97),
(3, 'App\\Models\\User', 98),
(3, 'App\\Models\\User', 99),
(3, 'App\\Models\\User', 100),
(3, 'App\\Models\\User', 101),
(3, 'App\\Models\\User', 102),
(3, 'App\\Models\\User', 103),
(3, 'App\\Models\\User', 104),
(3, 'App\\Models\\User', 105),
(3, 'App\\Models\\User', 106),
(3, 'App\\Models\\User', 107),
(3, 'App\\Models\\User', 108),
(3, 'App\\Models\\User', 109),
(3, 'App\\Models\\User', 110),
(3, 'App\\Models\\User', 111),
(3, 'App\\Models\\User', 112),
(3, 'App\\Models\\User', 113),
(3, 'App\\Models\\User', 114),
(3, 'App\\Models\\User', 115),
(3, 'App\\Models\\User', 116),
(3, 'App\\Models\\User', 117),
(3, 'App\\Models\\User', 118),
(3, 'App\\Models\\User', 119),
(3, 'App\\Models\\User', 120),
(3, 'App\\Models\\User', 121),
(3, 'App\\Models\\User', 122),
(3, 'App\\Models\\User', 123),
(3, 'App\\Models\\User', 124),
(3, 'App\\Models\\User', 125),
(3, 'App\\Models\\User', 126),
(3, 'App\\Models\\User', 127),
(3, 'App\\Models\\User', 128),
(3, 'App\\Models\\User', 129),
(3, 'App\\Models\\User', 130),
(3, 'App\\Models\\User', 131),
(3, 'App\\Models\\User', 132),
(3, 'App\\Models\\User', 133),
(3, 'App\\Models\\User', 134),
(3, 'App\\Models\\User', 135),
(3, 'App\\Models\\User', 136),
(3, 'App\\Models\\User', 137),
(3, 'App\\Models\\User', 138),
(3, 'App\\Models\\User', 139),
(3, 'App\\Models\\User', 140),
(3, 'App\\Models\\User', 141),
(3, 'App\\Models\\User', 142),
(3, 'App\\Models\\User', 143),
(3, 'App\\Models\\User', 144),
(3, 'App\\Models\\User', 145),
(3, 'App\\Models\\User', 146),
(3, 'App\\Models\\User', 147),
(3, 'App\\Models\\User', 148),
(3, 'App\\Models\\User', 149),
(3, 'App\\Models\\User', 150),
(3, 'App\\Models\\User', 151),
(3, 'App\\Models\\User', 152),
(3, 'App\\Models\\User', 153),
(3, 'App\\Models\\User', 154),
(3, 'App\\Models\\User', 155),
(3, 'App\\Models\\User', 156),
(3, 'App\\Models\\User', 157),
(3, 'App\\Models\\User', 158),
(3, 'App\\Models\\User', 159),
(3, 'App\\Models\\User', 160),
(3, 'App\\Models\\User', 161),
(3, 'App\\Models\\User', 162),
(3, 'App\\Models\\User', 163),
(3, 'App\\Models\\User', 164),
(3, 'App\\Models\\User', 165),
(3, 'App\\Models\\User', 166),
(3, 'App\\Models\\User', 167),
(3, 'App\\Models\\User', 168),
(3, 'App\\Models\\User', 169),
(3, 'App\\Models\\User', 170),
(3, 'App\\Models\\User', 171),
(3, 'App\\Models\\User', 172),
(3, 'App\\Models\\User', 173),
(3, 'App\\Models\\User', 174),
(3, 'App\\Models\\User', 175),
(3, 'App\\Models\\User', 176),
(3, 'App\\Models\\User', 177),
(3, 'App\\Models\\User', 178),
(3, 'App\\Models\\User', 179),
(3, 'App\\Models\\User', 180),
(3, 'App\\Models\\User', 181),
(3, 'App\\Models\\User', 182),
(3, 'App\\Models\\User', 183),
(3, 'App\\Models\\User', 184),
(3, 'App\\Models\\User', 185),
(3, 'App\\Models\\User', 186),
(3, 'App\\Models\\User', 187),
(3, 'App\\Models\\User', 188),
(3, 'App\\Models\\User', 189),
(3, 'App\\Models\\User', 190),
(3, 'App\\Models\\User', 191),
(3, 'App\\Models\\User', 192),
(3, 'App\\Models\\User', 193),
(3, 'App\\Models\\User', 194),
(3, 'App\\Models\\User', 195),
(3, 'App\\Models\\User', 196),
(3, 'App\\Models\\User', 197),
(3, 'App\\Models\\User', 198),
(3, 'App\\Models\\User', 199),
(3, 'App\\Models\\User', 200),
(3, 'App\\Models\\User', 201),
(3, 'App\\Models\\User', 202),
(3, 'App\\Models\\User', 203),
(3, 'App\\Models\\User', 204),
(3, 'App\\Models\\User', 205),
(3, 'App\\Models\\User', 206),
(3, 'App\\Models\\User', 207),
(3, 'App\\Models\\User', 208),
(3, 'App\\Models\\User', 209),
(3, 'App\\Models\\User', 210),
(3, 'App\\Models\\User', 211),
(3, 'App\\Models\\User', 212),
(3, 'App\\Models\\User', 213),
(3, 'App\\Models\\User', 214),
(3, 'App\\Models\\User', 215),
(3, 'App\\Models\\User', 216),
(3, 'App\\Models\\User', 217),
(3, 'App\\Models\\User', 218),
(3, 'App\\Models\\User', 219),
(3, 'App\\Models\\User', 220),
(3, 'App\\Models\\User', 221),
(3, 'App\\Models\\User', 222),
(3, 'App\\Models\\User', 223),
(3, 'App\\Models\\User', 224),
(3, 'App\\Models\\User', 225),
(3, 'App\\Models\\User', 226),
(3, 'App\\Models\\User', 227),
(3, 'App\\Models\\User', 228),
(3, 'App\\Models\\User', 229),
(3, 'App\\Models\\User', 230),
(3, 'App\\Models\\User', 231),
(3, 'App\\Models\\User', 232),
(3, 'App\\Models\\User', 233),
(3, 'App\\Models\\User', 234),
(3, 'App\\Models\\User', 235),
(3, 'App\\Models\\User', 236),
(3, 'App\\Models\\User', 237),
(3, 'App\\Models\\User', 238),
(3, 'App\\Models\\User', 239),
(3, 'App\\Models\\User', 240),
(3, 'App\\Models\\User', 241),
(3, 'App\\Models\\User', 242),
(3, 'App\\Models\\User', 243),
(3, 'App\\Models\\User', 244),
(3, 'App\\Models\\User', 245),
(3, 'App\\Models\\User', 246),
(3, 'App\\Models\\User', 247),
(3, 'App\\Models\\User', 248),
(3, 'App\\Models\\User', 249),
(3, 'App\\Models\\User', 250),
(3, 'App\\Models\\User', 251),
(3, 'App\\Models\\User', 252),
(3, 'App\\Models\\User', 253),
(3, 'App\\Models\\User', 254),
(3, 'App\\Models\\User', 255),
(3, 'App\\Models\\User', 256),
(3, 'App\\Models\\User', 257),
(3, 'App\\Models\\User', 258),
(3, 'App\\Models\\User', 259),
(3, 'App\\Models\\User', 260),
(3, 'App\\Models\\User', 261),
(3, 'App\\Models\\User', 262),
(3, 'App\\Models\\User', 263),
(3, 'App\\Models\\User', 264),
(3, 'App\\Models\\User', 265),
(3, 'App\\Models\\User', 266),
(3, 'App\\Models\\User', 267),
(3, 'App\\Models\\User', 268),
(3, 'App\\Models\\User', 269),
(3, 'App\\Models\\User', 270),
(3, 'App\\Models\\User', 271),
(3, 'App\\Models\\User', 272),
(3, 'App\\Models\\User', 273),
(3, 'App\\Models\\User', 274),
(3, 'App\\Models\\User', 275),
(3, 'App\\Models\\User', 276),
(3, 'App\\Models\\User', 277),
(3, 'App\\Models\\User', 278),
(3, 'App\\Models\\User', 279),
(3, 'App\\Models\\User', 280),
(3, 'App\\Models\\User', 281),
(3, 'App\\Models\\User', 282),
(3, 'App\\Models\\User', 283),
(3, 'App\\Models\\User', 284),
(3, 'App\\Models\\User', 285),
(3, 'App\\Models\\User', 286),
(3, 'App\\Models\\User', 287),
(3, 'App\\Models\\User', 288),
(3, 'App\\Models\\User', 289),
(3, 'App\\Models\\User', 290),
(3, 'App\\Models\\User', 291),
(3, 'App\\Models\\User', 292),
(3, 'App\\Models\\User', 293),
(3, 'App\\Models\\User', 294),
(3, 'App\\Models\\User', 295),
(3, 'App\\Models\\User', 296),
(3, 'App\\Models\\User', 297),
(3, 'App\\Models\\User', 298),
(3, 'App\\Models\\User', 299),
(3, 'App\\Models\\User', 300),
(3, 'App\\Models\\User', 301),
(3, 'App\\Models\\User', 302),
(3, 'App\\Models\\User', 303),
(3, 'App\\Models\\User', 304),
(3, 'App\\Models\\User', 305),
(3, 'App\\Models\\User', 306),
(3, 'App\\Models\\User', 307),
(3, 'App\\Models\\User', 308),
(3, 'App\\Models\\User', 309),
(3, 'App\\Models\\User', 310),
(3, 'App\\Models\\User', 311),
(3, 'App\\Models\\User', 312),
(3, 'App\\Models\\User', 313),
(3, 'App\\Models\\User', 314),
(3, 'App\\Models\\User', 315),
(3, 'App\\Models\\User', 316),
(3, 'App\\Models\\User', 317),
(3, 'App\\Models\\User', 318),
(3, 'App\\Models\\User', 319),
(3, 'App\\Models\\User', 320),
(3, 'App\\Models\\User', 321),
(3, 'App\\Models\\User', 322),
(3, 'App\\Models\\User', 323),
(3, 'App\\Models\\User', 324),
(3, 'App\\Models\\User', 325),
(3, 'App\\Models\\User', 326),
(3, 'App\\Models\\User', 327),
(3, 'App\\Models\\User', 328),
(3, 'App\\Models\\User', 329),
(3, 'App\\Models\\User', 330),
(3, 'App\\Models\\User', 331),
(3, 'App\\Models\\User', 332),
(3, 'App\\Models\\User', 333),
(3, 'App\\Models\\User', 334),
(3, 'App\\Models\\User', 335),
(3, 'App\\Models\\User', 336),
(3, 'App\\Models\\User', 337),
(3, 'App\\Models\\User', 338),
(3, 'App\\Models\\User', 339),
(3, 'App\\Models\\User', 340),
(3, 'App\\Models\\User', 341),
(3, 'App\\Models\\User', 342),
(3, 'App\\Models\\User', 343),
(3, 'App\\Models\\User', 344),
(3, 'App\\Models\\User', 345),
(3, 'App\\Models\\User', 346),
(3, 'App\\Models\\User', 347),
(3, 'App\\Models\\User', 348),
(3, 'App\\Models\\User', 349),
(3, 'App\\Models\\User', 350),
(3, 'App\\Models\\User', 351),
(3, 'App\\Models\\User', 352),
(3, 'App\\Models\\User', 353),
(3, 'App\\Models\\User', 354),
(3, 'App\\Models\\User', 355),
(3, 'App\\Models\\User', 356),
(3, 'App\\Models\\User', 357),
(3, 'App\\Models\\User', 358),
(3, 'App\\Models\\User', 359),
(3, 'App\\Models\\User', 360),
(3, 'App\\Models\\User', 361),
(3, 'App\\Models\\User', 362),
(3, 'App\\Models\\User', 363),
(3, 'App\\Models\\User', 364),
(3, 'App\\Models\\User', 365),
(3, 'App\\Models\\User', 366),
(3, 'App\\Models\\User', 367),
(3, 'App\\Models\\User', 368),
(3, 'App\\Models\\User', 369),
(3, 'App\\Models\\User', 370),
(3, 'App\\Models\\User', 371),
(3, 'App\\Models\\User', 372),
(3, 'App\\Models\\User', 373),
(3, 'App\\Models\\User', 374),
(3, 'App\\Models\\User', 375),
(3, 'App\\Models\\User', 376),
(3, 'App\\Models\\User', 377),
(3, 'App\\Models\\User', 378),
(3, 'App\\Models\\User', 379),
(3, 'App\\Models\\User', 380),
(3, 'App\\Models\\User', 381),
(3, 'App\\Models\\User', 382),
(3, 'App\\Models\\User', 383),
(3, 'App\\Models\\User', 384),
(3, 'App\\Models\\User', 385),
(3, 'App\\Models\\User', 386),
(3, 'App\\Models\\User', 387),
(3, 'App\\Models\\User', 388),
(3, 'App\\Models\\User', 389),
(3, 'App\\Models\\User', 390),
(3, 'App\\Models\\User', 391),
(3, 'App\\Models\\User', 392),
(3, 'App\\Models\\User', 393),
(3, 'App\\Models\\User', 394),
(3, 'App\\Models\\User', 395),
(3, 'App\\Models\\User', 396),
(3, 'App\\Models\\User', 397),
(3, 'App\\Models\\User', 398),
(3, 'App\\Models\\User', 399),
(3, 'App\\Models\\User', 400),
(3, 'App\\Models\\User', 401),
(3, 'App\\Models\\User', 402),
(3, 'App\\Models\\User', 403),
(3, 'App\\Models\\User', 404),
(3, 'App\\Models\\User', 405),
(3, 'App\\Models\\User', 406),
(3, 'App\\Models\\User', 407),
(3, 'App\\Models\\User', 408),
(3, 'App\\Models\\User', 409),
(3, 'App\\Models\\User', 410),
(3, 'App\\Models\\User', 411),
(3, 'App\\Models\\User', 412),
(3, 'App\\Models\\User', 413),
(3, 'App\\Models\\User', 414),
(3, 'App\\Models\\User', 415),
(3, 'App\\Models\\User', 416),
(3, 'App\\Models\\User', 417),
(3, 'App\\Models\\User', 418),
(3, 'App\\Models\\User', 419),
(3, 'App\\Models\\User', 420),
(3, 'App\\Models\\User', 421),
(3, 'App\\Models\\User', 422),
(3, 'App\\Models\\User', 423),
(3, 'App\\Models\\User', 424),
(3, 'App\\Models\\User', 425),
(3, 'App\\Models\\User', 426),
(3, 'App\\Models\\User', 427),
(3, 'App\\Models\\User', 428),
(3, 'App\\Models\\User', 429),
(3, 'App\\Models\\User', 430),
(3, 'App\\Models\\User', 431),
(3, 'App\\Models\\User', 432),
(3, 'App\\Models\\User', 433),
(3, 'App\\Models\\User', 434),
(3, 'App\\Models\\User', 435),
(3, 'App\\Models\\User', 436),
(3, 'App\\Models\\User', 437),
(3, 'App\\Models\\User', 438),
(3, 'App\\Models\\User', 439),
(3, 'App\\Models\\User', 440),
(3, 'App\\Models\\User', 441),
(3, 'App\\Models\\User', 442),
(3, 'App\\Models\\User', 443),
(3, 'App\\Models\\User', 444),
(3, 'App\\Models\\User', 445),
(3, 'App\\Models\\User', 446),
(3, 'App\\Models\\User', 447),
(3, 'App\\Models\\User', 448),
(3, 'App\\Models\\User', 449),
(3, 'App\\Models\\User', 450),
(3, 'App\\Models\\User', 451),
(3, 'App\\Models\\User', 452),
(3, 'App\\Models\\User', 453),
(3, 'App\\Models\\User', 454),
(3, 'App\\Models\\User', 455),
(3, 'App\\Models\\User', 456),
(3, 'App\\Models\\User', 457),
(3, 'App\\Models\\User', 458),
(3, 'App\\Models\\User', 459),
(3, 'App\\Models\\User', 460),
(3, 'App\\Models\\User', 461),
(3, 'App\\Models\\User', 462),
(3, 'App\\Models\\User', 463),
(3, 'App\\Models\\User', 464),
(3, 'App\\Models\\User', 465),
(3, 'App\\Models\\User', 466),
(3, 'App\\Models\\User', 467),
(3, 'App\\Models\\User', 468),
(3, 'App\\Models\\User', 469),
(3, 'App\\Models\\User', 470),
(3, 'App\\Models\\User', 471),
(3, 'App\\Models\\User', 472),
(3, 'App\\Models\\User', 473),
(3, 'App\\Models\\User', 474),
(3, 'App\\Models\\User', 475),
(3, 'App\\Models\\User', 476),
(3, 'App\\Models\\User', 477),
(3, 'App\\Models\\User', 478),
(3, 'App\\Models\\User', 479),
(3, 'App\\Models\\User', 480),
(3, 'App\\Models\\User', 481),
(3, 'App\\Models\\User', 482),
(3, 'App\\Models\\User', 483),
(3, 'App\\Models\\User', 484),
(3, 'App\\Models\\User', 485),
(3, 'App\\Models\\User', 486),
(3, 'App\\Models\\User', 487),
(3, 'App\\Models\\User', 488),
(3, 'App\\Models\\User', 489),
(3, 'App\\Models\\User', 490),
(3, 'App\\Models\\User', 491),
(3, 'App\\Models\\User', 492),
(3, 'App\\Models\\User', 493),
(3, 'App\\Models\\User', 494),
(3, 'App\\Models\\User', 495),
(3, 'App\\Models\\User', 496),
(3, 'App\\Models\\User', 497),
(3, 'App\\Models\\User', 498),
(3, 'App\\Models\\User', 499),
(3, 'App\\Models\\User', 500),
(3, 'App\\Models\\User', 501),
(3, 'App\\Models\\User', 502),
(3, 'App\\Models\\User', 503),
(3, 'App\\Models\\User', 504),
(3, 'App\\Models\\User', 505);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_pinjam` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `peminjam_id` bigint(20) UNSIGNED NOT NULL,
  `petugas_pinjam` bigint(20) UNSIGNED DEFAULT NULL,
  `petugas_kembali` bigint(20) UNSIGNED DEFAULT NULL,
  `status` int(11) NOT NULL,
  `denda` int(11) DEFAULT NULL,
  `tanggal_pinjam` date DEFAULT NULL,
  `tanggal_kembali` date DEFAULT NULL,
  `tanggal_pengembalian` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penerbit`
--

CREATE TABLE `penerbit` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `penerbit`
--

INSERT INTO `penerbit` (`id`, `nama`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'None', 'none', '2024-06-07 09:00:34', '2024-06-07 09:00:34'),
(2, 'Gramedia', 'gramedia', '2024-06-07 09:00:35', '2024-06-07 09:00:35'),
(3, 'Erlangga', 'erlangga', '2024-06-07 09:00:35', '2024-06-07 09:00:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rak`
--

CREATE TABLE `rak` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rak` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `baris` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `rak`
--

INSERT INTO `rak` (`id`, `rak`, `baris`, `slug`, `kategori_id`, `created_at`, `updated_at`) VALUES
(1, '0', '0', '0', 1, '2024-06-07 09:00:30', '2024-06-07 09:00:30'),
(2, '1', '1', '1-1', 2, '2024-06-07 09:00:31', '2024-06-07 09:00:31'),
(3, '1', '2', '1-2', 2, '2024-06-07 09:00:31', '2024-06-07 09:00:31'),
(4, '1', '3', '1-3', 2, '2024-06-07 09:00:32', '2024-06-07 09:00:32'),
(5, '1', '4', '1-4', 2, '2024-06-07 09:00:32', '2024-06-07 09:00:32'),
(6, '1', '5', '1-5', 2, '2024-06-07 09:00:32', '2024-06-07 09:00:32'),
(7, '2', '1', '2-1', 3, '2024-06-07 09:00:32', '2024-06-07 09:00:32'),
(8, '2', '2', '2-2', 3, '2024-06-07 09:00:32', '2024-06-07 09:00:32'),
(9, '2', '3', '2-3', 3, '2024-06-07 09:00:33', '2024-06-07 09:00:33'),
(10, '2', '4', '2-4', 3, '2024-06-07 09:00:33', '2024-06-07 09:00:33'),
(11, '2', '5', '2-5', 3, '2024-06-07 09:00:33', '2024-06-07 09:00:33'),
(12, '3', '1', '3-1', 6, '2024-06-07 09:00:33', '2024-06-07 09:00:33'),
(13, '3', '2', '3-2', 6, '2024-06-07 09:00:33', '2024-06-07 09:00:33'),
(14, '3', '3', '3-3', 6, '2024-06-07 09:00:34', '2024-06-07 09:00:34'),
(15, '3', '4', '3-4', 6, '2024-06-07 09:00:34', '2024-06-07 09:00:34'),
(16, '3', '5', '3-5', 6, '2024-06-07 09:00:34', '2024-06-07 09:00:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2024-06-07 09:00:22', '2024-06-07 09:00:22'),
(2, 'petugas', 'web', '2024-06-07 09:00:22', '2024-06-07 09:00:22'),
(3, 'peminjam', 'web', '2024-06-07 09:00:22', '2024-06-07 09:00:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', '2024-06-07 09:00:23', '$2y$10$sXNXZXsMsuYmbHK4xJEDBuNL.WIB7G973R9epG6RDIims5eRT17gq', NULL, '2024-06-07 09:00:23', '2024-06-07 09:00:23'),
(2, 'Petugas', 'petugas@gmail.com', '2024-06-07 09:00:25', '$2y$10$r/d.vgI7R6CJOa97NW8bp.IiYWFnUxGIXUtamh.4hEO834v/Cl976', NULL, '2024-06-07 09:00:25', '2024-06-07 09:00:25');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `detail_peminjaman`
--
ALTER TABLE `detail_peminjaman`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `penerbit`
--
ALTER TABLE `penerbit`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `rak`
--
ALTER TABLE `rak`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `detail_peminjaman`
--
ALTER TABLE `detail_peminjaman`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `penerbit`
--
ALTER TABLE `penerbit`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `rak`
--
ALTER TABLE `rak`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=506;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
