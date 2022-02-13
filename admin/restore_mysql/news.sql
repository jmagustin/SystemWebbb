-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2021 at 08:56 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `contact` bigint(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `appointmenttype` enum('cog','cor','consultation','records','goodmoral','clearance') NOT NULL,
  `date` date NOT NULL,
  `timeslot` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `name`, `contact`, `email`, `appointmenttype`, `date`, `timeslot`) VALUES
(20, 'danzel dela cruz', 9231114565, 'delacruzdanzel23@gmail.com', 'cog', '2021-11-05', '09:00AM - 10:00AM'),
(21, 'jm agustin', 9123455678, 'jm@gmail.com', 'cor', '2021-11-05', '10:00AM - 11:00AM'),
(22, 'frix austria', 9324445566, 'frix@gmail.com', 'consultation', '2021-11-05', '11:00AM - 12:00PM'),
(23, 'qwewqeasd', 9553084634, '12321312321x@gmail.com', 'clearance', '2021-11-19', '12:00PM - 13:00PM'),
(24, 'erika manahan', 9353333452, 'erikamanahan@gmail.com', 'consultation', '2021-11-26', '14:00PM - 15:00PM'),
(25, 'qwewqeasd', 9353333452, '12321312321x@gmail.com', 'consultation', '2021-11-18', '09:00AM - 10:00AM'),
(26, 'bbbbbbbbbb', 9123213212, 'asdsadasd@gmail.com', 'consultation', '2021-11-18', '11:00AM - 12:00PM'),
(27, 'danzel dela cruz', 9553084634, 'austriafrix@gmail.com', 'records', '2021-11-18', '10:00AM - 11:00AM');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `topic_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `published` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `topic_id`, `title`, `image`, `body`, `published`, `created_at`) VALUES
(22, 29, 7, 'meneses', '1637389520_Announcement.jpg', '&lt;p&gt;meneses&lt;/p&gt;', 1, '2021-07-12 14:13:44'),
(24, 29, 9, 'BUNSO ng BulSU MC', '1637389358_BUNSO ng BULSU MC.jpg', 'Inaanyayahan namin kayo na daluhan ang inyong oryentasyon bukas, Oktubre 22, 2021 sa ganap na 2:00 ng hapon.\r\n\r\nKita-kits! ?', 1, '2021-11-06 16:29:13'),
(25, 29, 9, 'Announcement', '1637389528_announcements.jpg', 'ANNOUNCEMENT \r\nTo all Freshmen Students of BulSU Meneses Campus \r\nPlease be informed that the submission of all original documents listed below is on October 28, 2021. \r\nYou will not be considered enrolled if you failed to submit the said documents on the scheduled date. \r\nRequirements for Officially Enrolled Students \r\n1. Original Form 138 (Grade 12 Card)\r\n2. Original Form 137 \r\n3. Original Certification of Good Moral Character\r\n4. Photocopy of PSA Birth Certificate \r\n5. 2X2 picture \r\nPlease be guided accordingly.', 1, '2021-11-06 16:34:24'),
(28, 29, 8, 'Handog ni BulSU kay Bunso - BulSU\'s Pride: Life, Guide, and Direction', '1637389577_Bulsu Pride.jpg', 'Good day, freshmen students!\r\nTo make your college journey more meaningful,  the Bulacan State University is providing different services to help you achieve your full potential not only in academics but also your talents in sports and cultural performance. The University is also providing guidance counseling and scholarship programs. As part of the student affairs and services family, we are inviting you on October 8, 2021 (Friday), 8:00 am via zoom and Facebook live.\r\nCareer Development and Student Internship Services Office is inviting you to a scheduled Zoom meeting.\r\nTopic: Handog ni BulSU kay Bunso - BulSU\'s Pride: Life, Guide, and Direction\r\nTime: Oct 8, 2021 08:30 AM Taipei\r\nJoin Zoom Meeting\r\nhttps://zoom.us/j/94851228524...\r\nMeeting ID: 948 5122 8524\r\nPasscode: 802246\r\nOne tap mobile\r\n+16699006833,,94851228524#,,,,*802246# US (San Jose)\r\n+19292056099,,94851228524#,,,,*802246# US (New York)\r\nDial by your location\r\n        +1 669 900 6833 US (San Jose)\r\n        +1 929 205 6099 US (New York)\r\n        +1 253 215 8782 US (Tacoma)\r\n        +1 301 715 8592 US (Washington DC)\r\n        +1 312 626 6799 US (Chicago)\r\n        +1 346 248 7799 US (Houston)\r\nMeeting ID: 948 5122 8524\r\nPasscode: 802246\r\nFind your local number: https://zoom.us/u/acj2KfCbtt', 1, '2021-11-06 17:26:00'),
(29, 29, 9, 'Course Update', '1637389647_Course Update.jpg', 'ANNOUNCEMENT:\r\nGOOD NEWS EAGLES!!!\r\nThe Bachelor of Industrial Technology Courses are now approved for the Bachelor\'s Degree Program (4 year course) under New Curriculum and will be implemented and take effect this Academic Year 2021-2022. \r\nB.I.T. BulSU Meneses Campus Courses Offered:\r\nBachelor of Industrial Technology Major in:\r\nComputer Technology\r\nElectronics Technology\r\nFood Processing Technology\r\n***Attach are the New Curriculum for the BIT Courses\r\nFor questions and inquires, kindly message us in this page. Thank you!', 1, '2021-11-06 17:27:55'),
(30, 29, 8, 'Ligtas na Balik-Eskwela', '1637389664_Ligtas Balik Eskwela.jpg', 'Ang panawagan sa Ligtas na Balik-eskwela ay pagsama sa laban ng kapuwa natin mag-aaral na kabilang sa iba&rsquo;t ibang sektor ng lipunan, dahil hindi ito tungkol lamang sa iyo, sa atin, bagkus sa ating lahat. Ito ay pagpapaigting ng panawagang totoo ang kalbaryong ipinapa-bitbit sa atin nang pumutok ang Covid 19 bilang isang pandemya na nagtulak sa atin sa alternatibong onlayn na moda ng pag-aaral. Bagamat hain sa atin ang iilang piling moda nito, hindi pa rin maikukubli na marami ang hirap at hindi makasabay sa maka-bagong sistema. Flexible Mode of Learning, ngunit makikita at mababakas pa rin ang kabi-kabilang hinaing ng mga estudyante&mdash; nangingibabaw ang kakaunting bilang ng mga may kakayahan kaysa sa nakararaming napag-iiwanan at mga iginagapang na lang. Hindi rin maitatago ang negatibong dulot ng birtwal na set-up sa pagkatuto, mental, pisikal at ang hindi kasapatan ng onlayn sa kalidad na edukasyon. \r\nNaniniwala ang buong Konseho ng Mag-aaral ng Bulacan State University kaisa ang mga organisasyong nag-abot ng kanilang mga kamay sa kapangyarihan ng sama-samang pagkilos na tagumpay ang maidudulot nito upang mabigyang paryoridad at aksyon ang sektor ng edukasyon. Kaya kaalinsabay ng panawagan para sa isang ligtas na balik-eskwela narito ang mga panawagan na mula sa estudyante at para sa estudyante: \r\n1. Gawing prayoridad sa pagpapabakuna ang sektor ng edukasyon.\r\n2. Pagpapaigting sa paglulunsad ng mass testing at tracing.\r\n3. Pagbibigay suporta sa mga manggagawa sa Unibersidad.\r\n4. Malinaw at maigting na polisiya pangkalusugasan.\r\n5. Pagkakaroon ng malinaw na plano sa pagbubukas ng klase, katugunan sa mga hindi inaasahang outbreak at pagsasagawa ng mga pagtataya bilang pag-aanalisa.\r\n6. Pagkundina sa pagbabawas ng pondo para sa sektor ng edukasyon.\r\nAng mga panawagang ito ang prayoridad na siyang dapat mabigyang pansin ng mga kinauukulan, sapagkat hindi na makapaghihintay ang pagbubukas ng mga paaralan dahil ito lamang ang tamang solusyon at dapat tunguhin sa paglaban natin kontra Covid 19 para sa sektor ng edukasyon; kaya halina&rsquo;t makiisa! Ang isang kalidad na edukasyon na matatamo lamang sa aktuwal na mga klase ang garantiya natin sa pagbangon muli ng ating bansa hanggang sa mga susunod pang taon. Kaya tayo na&rsquo;t igiit ang isang planado, pinag-aralan at maka-estudyante na Ligtas na Balik-Eskwela!\r\nBilang pakikiisa mangyaring sagutan ang mga link forms sa ibaba:\r\nhttps://tinyurl.com/LNBEUNITYSTATEMENT\r\n#LigtasNaBalikEskwela\r\n#BULSUSG2122\r\nPub by: JM Lacsamana', 1, '2021-11-06 17:32:25'),
(31, 29, 6, 'Independence Day', '1637389682_Independence Day.jpg', 'Blessed is the nation whose God is the Lord', 1, '2021-11-06 17:33:51'),
(32, 29, 7, 'Job Vacancy Open Position', '1637389698_Job Vacancies.jpg', 'Job Vacancy Open Position ❗\r\nINSIGHTS NORTH TRAINING &amp; REVIEW CENTER are looking for Social Media Content Marketer and Admin Assistant.\r\nUndergraduate and Graduate are welcome. \r\nRequirements listed in the picture below.\r\nSo, what are you waiting for submit your CV now', 1, '2021-11-06 17:35:43'),
(33, 29, 6, 'UNIVERSITY-WIDE HEALTH BREAK', '1637389712_UniversityWideHealthBreak.jpg', 'Idineklara ng Office of the President ng pamantasan na magkakaroon ng University-wide Health Break sa darating na Mayo 20-23, 2021.\r\nWalang klase at trabaho sa nasabing mga araw sa lahat ng kampus, maliban sa College of Law at Graduate School.\r\nAlinsunod ang deklarasyong ito sa nailabas na Office Memorandum No. 2021-30 ngayong araw (May 12, 2021).\r\nPinagkunan: \r\nOffice Memorandum 2021-30, BulSU Office of the President', 1, '2021-11-06 17:37:05'),
(34, 29, 6, 'Eid\'l Fitr', '1637389733_Eid`l Fitr.jpg', 'Eid\'l Fitr is the most important holiday for Muslims, marking the end of Ramadan. This joyful day may remind us to reflect and be a blessing to everyone. Tomorrow May 13, 2021 will be a regular holiday as declare by the President today.', 1, '2021-11-06 17:38:06'),
(35, 29, 9, 'E-Counseling & Psychosocial Support Services', '1637389745_E-counselling.jpg', 'Great day BULSU STUDENTS AND EMPLOYEES! \r\nWe, from the BulSU Guidance and Counseling Services, are here to help you especially during this trying time. We are committed to serve you by reaching out and improving our services to cope up with the new normal. \r\nAside from the daily dose of inspirational posts and self-care tips that we provide on our Facebook page, we are also offering the following services:\r\n✔ MAIN CAMPUS&rsquo; FREE E-COUNSELING AND PSYCHOSOCIAL SUPPORT SERVICES\r\nAll you have to do is to visit this link  https://forms.gle/P53q2y3XsqcJ1MYT9 to make an online appointment, wait for a confirmation via text message and you may then call us on the scheduled date and time given to you.\r\n✔ SATELLITE CAMPUSES\' FREE E-COUNSELING AND PSYCHOSOCIAL SUPPORT SERVICES DIRECTORY\r\nBustos Campus:\r\nhttps://web.facebook.com/.../a.106978.../263889248347622/...\r\nHagonoy Campus:\r\nhttps://web.facebook.com/BULSU-HC-Guidance-and-Wellness-105403627788729/\r\nMeneses Campus:\r\nhttps://web.facebook.com/.../pcb.../2599638586974057/...\r\nSarmiento Campus:\r\nhttps://web.facebook.com/.../a.315886.../602713110316588/...\r\nPlease like the Bulacan State University Guidance and Counseling Services Center Facebook page! Fun and informative activities and programs await.\r\nYour mental health matters. Help is available!\r\nThank you and take care always!', 1, '2021-11-06 17:40:06'),
(36, 29, 8, 'MENTAL HEALTH ART GALLERY', '1637389757_mental health.jpg', 'MENTAL HEALTH ART GALLERY\r\n\r\nAng usapin ng mental health ay dapat na inaalam, inaaral at nilalahukan ng bawat indibidwal bilang ito ay isa sa pinakamahahalagang bagay sa buhay ng tao. Gaano man kadilim, gaano man kabigat ay dapat na magkaroon ng bukas na kaalaman at isip ang bawat isa ukol dito.\r\n\r\nBilang pag-obserba sa buwan ng Oktubre bilang World\'s Mental Health Awareness Month, inihahandog ng mga Lokal na Konseho ng mga Mag-aaral ng iba\'t ibang Kolehiyo ang ating Mental Health Art Gallery para sa taong 2021.\r\n\r\nKaakibat ng mga larawang ipapaskil sa gallery ay ang ating walang humpay na panawagan at aksyon tungo sa pagtuldok sa mga miskonsepyon, at pagwasak sa istigmang patuloy na umiiral at nasa perspektiba ng karamihan.\r\n\r\nPara makita ang mga larawan, magtungo sa:\r\nhttps://tinyurl.com/dcrdwrz9\r\n\r\nBukas at madadagdagan ang mga larawan mula ika-4 ng Oktubre hanggang sa ika-10 ng buwang ito.\r\n\r\nHalina\'t tumungo sa isang komunidad na kung saan ang usapin ng Mental Health ay malaya, at mapagpalaya!\r\n\r\nDisclaimer: Ang mga larawan ay maaring maglaman ng mga sensitibong paksa na maaring hindi umangkop sa perspektibo ng iilan. Layunin ng proyekto na wakasan at ipakita ang tunay at hubad na katotohanan sa usapin ng mental health.\r\n\r\n#MentalHealthFriendlyPhilippines\r\n#Accessforall\r\n#YoumatterWematter See less', 1, '2021-11-06 17:42:42'),
(37, 29, 8, 'Webinar', '1637389765_Webinar.jpg', 'Good day BulSU Meneses- Student Leaders!\r\nLSC Meneses Campus have something for you tomorrow, June 25, 2021 - Friday at exactly 10:00 AM. We will be having webinar entitled &ldquo;LIDER ESTUDYANTE MAY ESPASYO KA SA PANAHON NG PANDEMYA.&rdquo;\r\nInvitation and meet link is already sent in your emails. To those who haven&rsquo;t received their invitation, kindly message Governor Shania.\r\nAlso, for those student who wanted to watch the aforementioned webinar tomorrow, it will be broadcast live at BulSU - Meneses Campus Local Student Council FB Page.\r\nLSC Meneses Campus is expecting your support by attending the said webinar that will definetly give you knowledge and help about leadership and management in this current situation. See you all ?\r\n#MayEspasyoKa\r\n#MenesesCampusWebinar\r\n#MenesesCampusLocalStudentCouncil', 1, '2021-11-06 17:44:13'),
(38, 29, 8, 'A.Y 2020-2021 General Assembly', '1637389776_General Assembly.jpg', 'FIRST MENESES-LOCAL STUDENT COUNCIL VIRTUAL GENERAL ASSEMBLY \r\nOn this day, May 31, 2021 held the first Meneses Local Student Council Virtual Assembly with the participations of All Class Mayors per department. \r\nThe said meeting discussed about the introduction of the new set of Meneses-Local Student Council Officers, the Student Government Constitution and By-Laws, the duties and responsibilities of each LSC officers, roles of class mayors in Local Council and the Recognition for the League of Class Mayors.\r\nThe Meneses Local Student Council Officers is sending their heartfelt gratitudes to the attendees. More over, the succeeding assembly will be announced.', 1, '2021-11-06 17:47:15');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `name`, `description`) VALUES
(6, 'Holidays', ''),
(7, 'Job Vacancies', ''),
(8, 'Activities', '<p>test</p>'),
(9, 'News', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `admin` tinyint(4) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `admin`, `username`, `email`, `password`, `created_at`) VALUES
(29, 1, 'bulsumc', 'bulsumc123@gmail.com', '$2y$10$ptUiswVcGz1dQIJ6cHM/aeEjFHjWqqClhLRefgPKmxC/ZLLCcSL3K', '2021-07-04 14:35:48'),
(62, 1, 'diane', 'diane@gmail.com', '$2y$10$EFhKh8h0Y8YQVbCmgTD5N.c5YdJ7aT6BZQcyXTZCNYw3xLR54RsbK', '2021-11-13 10:49:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `topic_id` (`topic_id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
