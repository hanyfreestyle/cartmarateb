-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2024 at 05:42 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `a_realestate`
--

--
-- Dumping data for table `data_country_translations`
--

INSERT INTO `data_country_translations` (`id`, `country_id`, `locale`, `name`, `capital`, `currency`, `continent`, `nationality`) VALUES
(1, 1, 'ar', 'أفغانستان', 'Kabul', 'Afghani', 'آسيا', 'أفغانستاني'),
(2, 1, 'en', 'Afghanistan', 'Kabul', 'Afghani', 'Asia', 'Afghan'),
(3, 2, 'ar', 'جزر آلاند', 'Mariehamn', NULL, 'أوروبا', 'آلاندي'),
(4, 2, 'en', 'Aland Islands', 'Mariehamn', NULL, 'Europe', 'Aland Islander'),
(5, 3, 'ar', 'ألبانيا', 'Tirana', 'ليك', 'أوروبا', 'ألباني'),
(6, 3, 'en', 'Albania', 'Tirana', 'Lek', 'Europe', 'Albanian'),
(7, 4, 'ar', 'الجزائر', 'Algiers', 'دينار', 'أفريقيا', 'جزائري'),
(8, 4, 'en', 'Algeria', 'Algiers', 'Dinar', 'Africa', 'Algerian'),
(9, 5, 'ar', 'ساموا الأمريكية', 'Pago Pago', 'دولار', 'استراليا', 'أمريكي سامواني'),
(10, 5, 'en', 'American Samoa', 'Pago Pago', 'Dollar', 'Oceania', 'American Samoan'),
(11, 6, 'ar', 'أندورا', 'Andorra la Vella', 'اليورو', 'أوروبا', 'أندوري'),
(12, 6, 'en', 'Andorra', 'Andorra la Vella', 'Euro', 'Europe', 'Andorran'),
(13, 7, 'ar', 'أنغولا', 'Luanda', 'Kwanza', 'أفريقيا', 'أنقولي'),
(14, 7, 'en', 'Angola', 'Luanda', 'Kwanza', 'Africa', 'Angolan'),
(15, 8, 'ar', 'أنغيلا', 'The Valley', 'دولار', 'أمريكا الشمالية', 'أنغويلي'),
(16, 8, 'en', 'Anguilla', 'The Valley', 'Dollar', 'North America', 'Anguillan'),
(17, 9, 'ar', 'أنتاركتيكا', 'Antarctica', '', 'القارة القطبية الجنوبية', 'أنتاركتيكي'),
(18, 9, 'en', 'Antarctica', 'Antarctica', '', 'Antarctica', 'Antarctican'),
(19, 10, 'ar', 'أنتيغوا وبربودا', 'St. John\'s', 'دولار', 'أمريكا الشمالية', 'بربودي'),
(20, 10, 'en', 'Antigua and Barbuda', 'St. John\'s', 'Dollar', 'North America', 'Antiguan'),
(21, 11, 'ar', 'الأرجنتين', 'Buenos Aires', 'Peso', 'أمريكا الجنوبية', 'أرجنتيني'),
(22, 11, 'en', 'Argentina', 'Buenos Aires', 'Peso', 'South America', 'Argentinian'),
(23, 12, 'ar', 'أرمينيا', 'Yerevan', 'Dram', 'آسيا', 'أرميني'),
(24, 12, 'en', 'Armenia', 'Yerevan', 'Dram', 'Asia', 'Armenian'),
(25, 13, 'ar', 'أروبا', 'Oranjestad', 'Guilder', 'أمريكا الشمالية', 'أوروبهيني'),
(26, 13, 'en', 'Aruba', 'Oranjestad', 'Guilder', 'North America', 'Aruban'),
(27, 14, 'ar', 'أستراليا', 'Canberra', 'دولار', 'استراليا', 'أسترالي'),
(28, 14, 'en', 'Australia', 'Canberra', 'Dollar', 'Oceania', 'Australian'),
(29, 15, 'ar', 'النمسا', 'Vienna', 'اليورو', 'أوروبا', 'نمساوي'),
(30, 15, 'en', 'Austria', 'Vienna', 'Euro', 'Europe', 'Austrian'),
(31, 16, 'ar', 'أذربيجان', 'Baku', 'Manat', 'آسيا', 'أذربيجاني'),
(32, 16, 'en', 'Azerbaijan', 'Baku', 'Manat', 'Asia', 'Azerbaijani'),
(33, 17, 'ar', 'جزر البهاما', 'Nassau', 'دولار', 'أمريكا الشمالية', 'باهاميسي'),
(34, 17, 'en', 'Bahamas', 'Nassau', 'Dollar', 'North America', 'Bahamian'),
(35, 18, 'ar', 'البحرين', 'Manama', 'دينار', 'آسيا', 'بحريني'),
(36, 18, 'en', 'Bahrain', 'Manama', 'Dinar', 'Asia', 'Bahraini'),
(37, 19, 'ar', 'بنغلاديش', 'Dhaka', 'Taka', 'آسيا', 'بنغلاديشي'),
(38, 19, 'en', 'Bangladesh', 'Dhaka', 'Taka', 'Asia', 'Bangladeshi'),
(39, 20, 'ar', 'بربادوس', 'Bridgetown', 'دولار', 'أمريكا الشمالية', 'بربادوسي'),
(40, 20, 'en', 'Barbados', 'Bridgetown', 'Dollar', 'North America', 'Barbadian'),
(41, 21, 'ar', 'بيلاروسيا', 'Minsk', 'Ruble', 'أوروبا', 'روسي'),
(42, 21, 'en', 'Belarus', 'Minsk', 'Ruble', 'Europe', 'Belarusian'),
(43, 22, 'ar', 'بلجيكا', 'Brussels', 'اليورو', 'أوروبا', 'بلجيكي'),
(44, 22, 'en', 'Belgium', 'Brussels', 'Euro', 'Europe', 'Belgian'),
(45, 23, 'ar', 'بليز', 'Belmopan', 'دولار', 'أمريكا الشمالية', 'بيليزي'),
(46, 23, 'en', 'Belize', 'Belmopan', 'Dollar', 'North America', 'Belizean'),
(47, 24, 'ar', 'بنين', 'Porto-Novo', 'فرنك', 'أفريقيا', 'بنيني'),
(48, 24, 'en', 'Benin', 'Porto-Novo', 'Franc', 'Africa', 'Beninese'),
(49, 25, 'ar', 'برمودا', 'Hamilton', 'دولار', 'أمريكا الشمالية', 'برمودي'),
(50, 25, 'en', 'Bermuda', 'Hamilton', 'Dollar', 'North America', 'Bermudan'),
(51, 26, 'ar', 'بوتان', 'Thimphu', 'Ngultrum', 'آسيا', 'بوتاني'),
(52, 26, 'en', 'Bhutan', 'Thimphu', 'Ngultrum', 'Asia', 'Bhutanese'),
(53, 27, 'ar', 'بوليفيا', 'Sucre', 'Boliviano', 'أمريكا الجنوبية', 'بوليفي'),
(54, 27, 'en', 'Bolivia', 'Sucre', 'Boliviano', 'South America', 'Bolivian'),
(55, 28, 'ar', 'بونير وسانت يوستاتيوس وسابا', 'Kralendijk', NULL, 'أمريكا الشمالية', NULL),
(56, 28, 'en', 'بونير وسانت يوستاتيوس وسابا', 'Kralendijk', NULL, 'North America', NULL),
(57, 29, 'ar', 'البوسنة والهرسك', 'Sarajevo', 'Marka', 'أوروبا', 'بوسني/هرسكي'),
(58, 29, 'en', 'Bosnia and Herzegovina', 'Sarajevo', 'Marka', 'Europe', 'Bosnian / Herzegovinian'),
(59, 30, 'ar', 'بوتسوانا', 'Gaborone', 'Pula', 'أفريقيا', 'بوتسواني'),
(60, 30, 'en', 'Botswana', 'Gaborone', 'Pula', 'Africa', 'Botswanan'),
(61, 31, 'ar', 'جزيرة بوفيت', '', NULL, 'القارة القطبية الجنوبية', 'بوفيهي'),
(62, 31, 'en', 'Bouvet Island', '', NULL, 'Antarctica', 'Bouvetian'),
(63, 32, 'ar', 'البرازيل', 'Brasilia', 'Real', 'أمريكا الجنوبية', 'برازيلي'),
(64, 32, 'en', 'Brazil', 'Brasilia', 'Real', 'South America', 'Brazilian'),
(65, 33, 'ar', 'إقليم المحيط البريطاني الهندي', 'Diego Garcia', 'دولار', 'آسيا', 'إقليم المحيط الهندي البريطاني'),
(66, 33, 'en', 'British Indian Ocean Territory', 'Diego Garcia', 'Dollar', 'Asia', 'British Indian Ocean Territory'),
(67, 34, 'ar', 'بروناي دار السلام', 'Bandar Seri Begawan', 'دولار', 'آسيا', 'بروني'),
(68, 34, 'en', 'Brunei Darussalam', 'Bandar Seri Begawan', 'Dollar', 'Asia', 'Bruneian'),
(69, 35, 'ar', 'بلغاريا', 'Sofia', 'Lev', 'أوروبا', 'بلغاري'),
(70, 35, 'en', 'Bulgaria', 'Sofia', 'Lev', 'Europe', 'Bulgarian'),
(71, 36, 'ar', 'بوركينا فاسو', 'Ouagadougou', 'فرنك', 'أفريقيا', 'بوركيني'),
(72, 36, 'en', 'Burkina Faso', 'Ouagadougou', 'Franc', 'Africa', 'Burkinabe'),
(73, 37, 'ar', 'بوروندي', 'Bujumbura', 'فرنك', 'أفريقيا', 'بورونيدي'),
(74, 37, 'en', 'Burundi', 'Bujumbura', 'Franc', 'Africa', 'Burundian'),
(75, 38, 'ar', 'كمبوديا', 'Phnom Penh', 'Riels', 'آسيا', 'كمبودي'),
(76, 38, 'en', 'Cambodia', 'Phnom Penh', 'Riels', 'Asia', 'Cambodian'),
(77, 39, 'ar', 'الكاميرون', 'Yaounde', 'فرنك', 'أفريقيا', 'كاميروني'),
(78, 39, 'en', 'Cameroon', 'Yaounde', 'Franc', 'Africa', 'Cameroonian'),
(79, 40, 'ar', 'كندا', 'Ottawa', 'دولار', 'أمريكا الشمالية', 'كندي'),
(80, 40, 'en', 'Canada', 'Ottawa', 'Dollar', 'North America', 'Canadian'),
(81, 41, 'ar', 'الرأس الأخضر', 'Praia', 'Escudo', 'أفريقيا', 'الرأس الأخضر'),
(82, 41, 'en', 'Cape Verde', 'Praia', 'Escudo', 'Africa', 'Cape Verdean'),
(83, 42, 'ar', 'جزر كايمان', 'George Town', 'دولار', 'أمريكا الشمالية', 'كايماني'),
(84, 42, 'en', 'Cayman Islands', 'George Town', 'Dollar', 'North America', 'Caymanian'),
(85, 43, 'ar', 'جمهورية افريقيا الوسطى', 'Bangui', 'فرنك', 'أفريقيا', 'أفريقي'),
(86, 43, 'en', 'Central African Republic', 'Bangui', 'Franc', 'Africa', 'Central African'),
(87, 44, 'ar', 'تشاد', 'N\'Djamena', 'فرنك', 'أفريقيا', 'تشادي'),
(88, 44, 'en', 'Chad', 'N\'Djamena', 'Franc', 'Africa', 'Chadian'),
(89, 45, 'ar', 'تشيلي', 'Santiago', 'Peso', 'أمريكا الجنوبية', 'شيلي'),
(90, 45, 'en', 'Chile', 'Santiago', 'Peso', 'South America', 'Chilean'),
(91, 46, 'ar', 'الصين', 'Beijing', 'Yuan Renminbi', 'آسيا', 'صيني'),
(92, 46, 'en', 'China', 'Beijing', 'Yuan Renminbi', 'Asia', 'Chinese'),
(93, 47, 'ar', 'جزيرة الكريسماس', 'Flying Fish Cove', 'دولار', 'آسيا', 'جزيرة عيد الميلاد'),
(94, 47, 'en', 'Christmas Island', 'Flying Fish Cove', 'Dollar', 'Asia', 'Christmas Islander'),
(95, 48, 'ar', 'جزر كوكوس (كيلينغ)', 'West Island', 'دولار', 'آسيا', 'جزر كوكوس'),
(96, 48, 'en', 'Cocos (Keeling) Islands', 'West Island', 'Dollar', 'Asia', 'Cocos Islander'),
(97, 49, 'ar', 'كولومبيا', 'Bogota', 'Peso', 'أمريكا الجنوبية', 'كولومبي'),
(98, 49, 'en', 'Colombia', 'Bogota', 'Peso', 'South America', 'Colombian'),
(99, 50, 'ar', 'جزر القمر', 'Moroni', 'فرنك', 'أفريقيا', 'جزر القمر'),
(100, 50, 'en', 'Comoros', 'Moroni', 'Franc', 'Africa', 'Comorian'),
(101, 51, 'ar', 'الكونغو', 'Brazzaville', 'فرنك', 'أفريقيا', 'كونغي'),
(102, 51, 'en', 'Congo', 'Brazzaville', 'Franc', 'Africa', 'Congolese'),
(103, 52, 'ar', 'الكونغو ، جمهورية الكونغو الديمقراطية', 'Kinshasa', 'فرنك', 'أفريقيا', NULL),
(104, 52, 'en', 'الكونغو ، جمهورية الكونغو الديمقراطية', 'Kinshasa', 'Franc', 'Africa', NULL),
(105, 53, 'ar', 'جزر كوك', 'Avarua', 'دولار', 'استراليا', 'جزر كوك'),
(106, 53, 'en', 'Cook Islands', 'Avarua', 'Dollar', 'Oceania', 'Cook Islander'),
(107, 54, 'ar', 'كوستا ريكا', 'San Jose', 'Colon', 'أمريكا الشمالية', 'كوستاريكي'),
(108, 54, 'en', 'Costa Rica', 'San Jose', 'Colon', 'North America', 'Costa Rican'),
(109, 55, 'ar', 'ساحل العاج', 'Yamoussoukro', 'فرنك', 'أفريقيا', 'ساحل العاج'),
(110, 55, 'en', 'Ivory Coast', 'Yamoussoukro', 'Franc', 'Africa', 'Ivory Coastian'),
(111, 56, 'ar', 'كرواتيا', 'Zagreb', 'Kuna', 'أوروبا', 'كوراتي'),
(112, 56, 'en', 'Croatia', 'Zagreb', 'Kuna', 'Europe', 'Croatian'),
(113, 57, 'ar', 'كوبا', 'Havana', 'Peso', 'أمريكا الشمالية', 'كوبي'),
(114, 57, 'en', 'Cuba', 'Havana', 'Peso', 'North America', 'Cuban'),
(115, 58, 'ar', 'كوراكاو', 'Willemstad', 'Guilder', 'أمريكا الشمالية', 'كوراساوي'),
(116, 58, 'en', 'Curaçao', 'Willemstad', 'Guilder', 'North America', 'Curacian'),
(117, 59, 'ar', 'قبرص', 'Nicosia', 'اليورو', 'آسيا', 'قبرصي'),
(118, 59, 'en', 'Cyprus', 'Nicosia', 'Euro', 'Asia', 'Cypriot'),
(119, 60, 'ar', 'الجمهورية التشيكية', 'Prague', 'Koruna', 'أوروبا', 'تشيكي'),
(120, 60, 'en', 'Czech Republic', 'Prague', 'Koruna', 'Europe', 'Czech'),
(121, 61, 'ar', 'الدنمارك', 'Copenhagen', 'Krone', 'أوروبا', 'دنماركي'),
(122, 61, 'en', 'Denmark', 'Copenhagen', 'Krone', 'Europe', 'Danish'),
(123, 62, 'ar', 'جيبوتي', 'Djibouti', 'فرنك', 'أفريقيا', 'جيبوتي'),
(124, 62, 'en', 'Djibouti', 'Djibouti', 'Franc', 'Africa', 'Djiboutian'),
(125, 63, 'ar', 'دومينيكا', 'Roseau', 'دولار', 'أمريكا الشمالية', 'دومينيكي'),
(126, 63, 'en', 'Dominica', 'Roseau', 'Dollar', 'North America', 'Dominican'),
(127, 64, 'ar', 'جمهورية الدومنيكان', 'Santo Domingo', 'Peso', 'أمريكا الشمالية', 'دومينيكي'),
(128, 64, 'en', 'Dominican Republic', 'Santo Domingo', 'Peso', 'North America', 'Dominican'),
(129, 65, 'ar', 'الاكوادور', 'Quito', 'دولار', 'أمريكا الجنوبية', 'إكوادوري'),
(130, 65, 'en', 'Ecuador', 'Quito', 'Dollar', 'South America', 'Ecuadorian'),
(131, 66, 'ar', 'مصر', 'القاهرة', 'جنيه', 'أفريقيا', 'مصري'),
(132, 66, 'en', 'Egypt', 'Cairo', 'Pound', 'Africa', 'Egyptian'),
(133, 67, 'ar', 'السلفادور', 'San Salvador', 'دولار', 'أمريكا الشمالية', 'سلفادوري'),
(134, 67, 'en', 'El Salvador', 'San Salvador', 'Dollar', 'North America', 'Salvadoran'),
(135, 68, 'ar', 'غينيا الإستوائية', 'Malabo', 'فرنك', 'أفريقيا', 'غيني'),
(136, 68, 'en', 'Equatorial Guinea', 'Malabo', 'Franc', 'Africa', 'Equatorial Guinean'),
(137, 69, 'ar', 'إريتريا', 'Asmara', 'Nakfa', 'أفريقيا', 'إريتيري'),
(138, 69, 'en', 'Eritrea', 'Asmara', 'Nakfa', 'Africa', 'Eritrean'),
(139, 70, 'ar', 'إستونيا', 'Tallinn', 'اليورو', 'أوروبا', 'استوني'),
(140, 70, 'en', 'Estonia', 'Tallinn', 'Euro', 'Europe', 'Estonian'),
(141, 71, 'ar', 'أثيوبيا', 'Addis Ababa', 'Birr', 'أفريقيا', 'أثيوبي'),
(142, 71, 'en', 'Ethiopia', 'Addis Ababa', 'Birr', 'Africa', 'Ethiopian'),
(143, 72, 'ar', 'جزر فوكلاند (مالفيناس)', 'Stanley', 'جنيه', 'أمريكا الجنوبية', 'فوكلاندي'),
(144, 72, 'en', 'Falkland Islands (Malvinas)', 'Stanley', 'Pound', 'South America', 'Falkland Islander'),
(145, 73, 'ar', 'جزر فاروس', 'Torshavn', 'Krone', 'أوروبا', 'جزر فارو'),
(146, 73, 'en', 'Faroe Islands', 'Torshavn', 'Krone', 'Europe', 'Faroese'),
(147, 74, 'ar', 'فيجي', 'Suva', 'دولار', 'استراليا', 'فيجي'),
(148, 74, 'en', 'Fiji', 'Suva', 'Dollar', 'Oceania', 'Fijian'),
(149, 75, 'ar', 'فنلندا', 'Helsinki', 'اليورو', 'أوروبا', 'فنلندي'),
(150, 75, 'en', 'Finland', 'Helsinki', 'Euro', 'Europe', 'Finnish'),
(151, 76, 'ar', 'فرنسا', 'Paris', 'اليورو', 'أوروبا', 'فرنسي'),
(152, 76, 'en', 'France', 'Paris', 'Euro', 'Europe', 'French'),
(153, 77, 'ar', 'غيانا الفرنسية', 'Cayenne', NULL, 'أمريكا الجنوبية', 'غويانا الفرنسية'),
(154, 77, 'en', 'French Guiana', 'Cayenne', NULL, 'South America', 'French Guianese'),
(155, 78, 'ar', 'بولينيزيا الفرنسية', 'Papeete', 'فرنك', 'استراليا', 'بولينيزيي'),
(156, 78, 'en', 'French Polynesia', 'Papeete', 'Franc', 'Oceania', 'French Polynesian'),
(157, 79, 'ar', 'المناطق الجنوبية لفرنسا', 'Port-aux-Francais', NULL, 'القارة القطبية الجنوبية', 'أراض فرنسية جنوبية وأنتارتيكية'),
(158, 79, 'en', 'French Southern and Antarctic Lands', 'Port-aux-Francais', NULL, 'Antarctica', 'French'),
(159, 80, 'ar', 'الجابون', 'Libreville', 'فرنك', 'أفريقيا', 'غابوني'),
(160, 80, 'en', 'Gabon', 'Libreville', 'Franc', 'Africa', 'Gabonese'),
(161, 81, 'ar', 'غامبيا', 'Banjul', 'Dalasi', 'أفريقيا', 'غامبي'),
(162, 81, 'en', 'Gambia', 'Banjul', 'Dalasi', 'Africa', 'Gambian'),
(163, 82, 'ar', 'جورجيا', 'Tbilisi', 'Lari', 'آسيا', 'جيورجي'),
(164, 82, 'en', 'Georgia', 'Tbilisi', 'Lari', 'Asia', 'Georgian'),
(165, 83, 'ar', 'ألمانيا', 'Berlin', 'اليورو', 'أوروبا', 'ألماني'),
(166, 83, 'en', 'Germany', 'Berlin', 'Euro', 'Europe', 'German'),
(167, 84, 'ar', 'غانا', 'Accra', 'Cedi', 'أفريقيا', 'غاني'),
(168, 84, 'en', 'Ghana', 'Accra', 'Cedi', 'Africa', 'Ghanaian'),
(169, 85, 'ar', 'جبل طارق', 'Gibraltar', 'جنيه', 'أوروبا', 'جبل طارق'),
(170, 85, 'en', 'Gibraltar', 'Gibraltar', 'Pound', 'Europe', 'Gibraltar'),
(171, 86, 'ar', 'اليونان', 'Athens', 'اليورو', 'أوروبا', 'يوناني'),
(172, 86, 'en', 'Greece', 'Athens', 'Euro', 'Europe', 'Greek'),
(173, 87, 'ar', 'الأرض الخضراء', 'Nuuk', 'Krone', 'أمريكا الشمالية', 'جرينلاندي'),
(174, 87, 'en', 'Greenland', 'Nuuk', 'Krone', 'North America', 'Greenlandic'),
(175, 88, 'ar', 'غرينادا', 'St. George\'s', 'دولار', 'أمريكا الشمالية', 'غرينادي'),
(176, 88, 'en', 'Grenada', 'St. George\'s', 'Dollar', 'North America', 'Grenadian'),
(177, 89, 'ar', 'جوادلوب', 'Basse-Terre', NULL, 'أمريكا الشمالية', 'جزر جوادلوب'),
(178, 89, 'en', 'Guadeloupe', 'Basse-Terre', NULL, 'North America', 'Guadeloupe'),
(179, 90, 'ar', 'غوام', 'Hagatna', 'دولار', 'استراليا', 'جوامي'),
(180, 90, 'en', 'Guam', 'Hagatna', 'Dollar', 'Oceania', 'Guamanian'),
(181, 91, 'ar', 'غواتيمالا', 'Guatemala City', 'Quetzal', 'أمريكا الشمالية', 'غواتيمالي'),
(182, 91, 'en', 'Guatemala', 'Guatemala City', 'Quetzal', 'North America', 'Guatemalan'),
(183, 92, 'ar', 'غيرنسي', 'St Peter Port', 'جنيه', 'أوروبا', 'غيرنزي'),
(184, 92, 'en', 'Guernsey', 'St Peter Port', 'Pound', 'Europe', 'Guernsian'),
(185, 93, 'ar', 'غينيا', 'Conakry', 'فرنك', 'أفريقيا', 'غيني'),
(186, 93, 'en', 'Guinea', 'Conakry', 'Franc', 'Africa', 'Guinean'),
(187, 94, 'ar', 'غينيا بيساو', 'Bissau', 'فرنك', 'أفريقيا', 'غيني'),
(188, 94, 'en', 'Guinea-Bissau', 'Bissau', 'Franc', 'Africa', 'Guinea-Bissauan'),
(189, 95, 'ar', 'غيانا', 'Georgetown', 'دولار', 'أمريكا الجنوبية', 'غياني'),
(190, 95, 'en', 'Guyana', 'Georgetown', 'Dollar', 'South America', 'Guyanese'),
(191, 96, 'ar', 'هايتي', 'Port-au-Prince', 'Gourde', 'أمريكا الشمالية', 'هايتي'),
(192, 96, 'en', 'Haiti', 'Port-au-Prince', 'Gourde', 'North America', 'Haitian'),
(193, 97, 'ar', 'قلب الجزيرة وجزر ماكدونالز', '', NULL, 'القارة القطبية الجنوبية', 'جزيرة هيرد وجزر ماكدونالد'),
(194, 97, 'en', 'Heard and Mc Donald Islands', '', NULL, 'Antarctica', 'Heard and Mc Donald Islanders'),
(195, 98, 'ar', 'الكرسي الرسولي (دولة الفاتيكان)', 'Vatican City', 'اليورو', 'أوروبا', 'فاتيكاني'),
(196, 98, 'en', 'Vatican City', 'Vatican City', 'Euro', 'Europe', 'Vatican'),
(197, 99, 'ar', 'هندوراس', 'Tegucigalpa', 'Lempira', 'أمريكا الشمالية', 'هندوراسي'),
(198, 99, 'en', 'Honduras', 'Tegucigalpa', 'Lempira', 'North America', 'Honduran'),
(199, 100, 'ar', 'هونج كونج', 'Hong Kong', 'دولار', 'آسيا', 'هونغ كونغي'),
(200, 100, 'en', 'Hong Kong', 'Hong Kong', 'Dollar', 'Asia', 'Hongkongese'),
(201, 101, 'ar', 'هنغاريا', 'Budapest', 'Forint', 'أوروبا', 'مجري'),
(202, 101, 'en', 'Hungary', 'Budapest', 'Forint', 'Europe', 'Hungarian'),
(203, 102, 'ar', 'أيسلندا', 'Reykjavik', 'Krona', 'أوروبا', 'آيسلندي'),
(204, 102, 'en', 'Iceland', 'Reykjavik', 'Krona', 'Europe', 'Icelandic'),
(205, 103, 'ar', 'الهند', 'New Delhi', 'Rupee', 'آسيا', 'هندي'),
(206, 103, 'en', 'India', 'New Delhi', 'Rupee', 'Asia', 'Indian'),
(207, 104, 'ar', 'إندونيسيا', 'Jakarta', 'Rupiah', 'آسيا', 'أندونيسيي'),
(208, 104, 'en', 'Indonesia', 'Jakarta', 'Rupiah', 'Asia', 'Indonesian'),
(209, 105, 'ar', 'جمهورية إيران الإسلامية', 'Tehran', 'ريال', 'آسيا', 'إيراني'),
(210, 105, 'en', 'Iran', 'Tehran', 'Rial', 'Asia', 'Iranian'),
(211, 106, 'ar', 'العراق', 'Baghdad', 'دينار', 'آسيا', 'عراقي'),
(212, 106, 'en', 'Iraq', 'Baghdad', 'Dinar', 'Asia', 'Iraqi'),
(213, 107, 'ar', 'أيرلندا', 'Dublin', 'اليورو', 'أوروبا', 'إيرلندي'),
(214, 107, 'en', 'Ireland', 'Dublin', 'Euro', 'Europe', 'Irish'),
(215, 108, 'ar', 'جزيرة آيل أوف مان', 'Douglas, Isle of Man', 'جنيه', 'أوروبا', 'ماني'),
(216, 108, 'en', 'Isle of Man', 'Douglas, Isle of Man', 'Pound', 'Europe', 'Manx'),
(217, 109, 'ar', 'إسرائيل', 'Jerusalem', 'Shekel', 'آسيا', 'إسرائيلي'),
(218, 109, 'en', 'Israel', 'Jerusalem', 'Shekel', 'Asia', 'Israeli'),
(219, 110, 'ar', 'إيطاليا', 'Rome', 'اليورو', 'أوروبا', 'إيطالي'),
(220, 110, 'en', 'Italy', 'Rome', 'Euro', 'Europe', 'Italian'),
(221, 111, 'ar', 'جامايكا', 'Kingston', 'دولار', 'أمريكا الشمالية', 'جمايكي'),
(222, 111, 'en', 'Jamaica', 'Kingston', 'Dollar', 'North America', 'Jamaican'),
(223, 112, 'ar', 'اليابان', 'Tokyo', 'Yen', 'آسيا', 'ياباني'),
(224, 112, 'en', 'Japan', 'Tokyo', 'Yen', 'Asia', 'Japanese'),
(225, 113, 'ar', 'جيرسي', 'Saint Helier', 'جنيه', 'أوروبا', 'جيرزي'),
(226, 113, 'en', 'Jersey', 'Saint Helier', 'Pound', 'Europe', 'Jersian'),
(227, 114, 'ar', 'الأردن', 'Amman', 'دينار', 'آسيا', 'أردني'),
(228, 114, 'en', 'Jordan', 'Amman', 'Dinar', 'Asia', 'Jordanian'),
(229, 115, 'ar', 'كازاخستان', 'Astana', 'Tenge', 'آسيا', 'كازاخستاني'),
(230, 115, 'en', 'Kazakhstan', 'Astana', 'Tenge', 'Asia', 'Kazakh'),
(231, 116, 'ar', 'كينيا', 'Nairobi', 'Shilling', 'أفريقيا', 'كيني'),
(232, 116, 'en', 'Kenya', 'Nairobi', 'Shilling', 'Africa', 'Kenyan'),
(233, 117, 'ar', 'كيريباتي', 'Tarawa', 'دولار', 'استراليا', 'كيريباتي'),
(234, 117, 'en', 'Kiribati', 'Tarawa', 'Dollar', 'Oceania', 'I-Kiribati'),
(235, 118, 'ar', 'كوريا، الجمهورية الشعبية الديمقراطية', 'Pyongyang', 'Won', 'آسيا', 'كوري'),
(236, 118, 'en', 'Korea(North Korea)', 'Pyongyang', 'Won', 'Asia', 'North Korean'),
(237, 119, 'ar', 'جمهورية كوريا', 'Seoul', 'Won', 'آسيا', 'كوري'),
(238, 119, 'en', 'Korea(South Korea)', 'Seoul', 'Won', 'Asia', 'South Korean'),
(239, 120, 'ar', 'كوسوفو', 'Pristina', 'اليورو', 'أوروبا', 'كوسيفي'),
(240, 120, 'en', 'Kosovo', 'Pristina', 'Euro', 'Europe', 'Kosovar'),
(241, 121, 'ar', 'الكويت', 'Kuwait City', 'دينار', 'آسيا', 'كويتي'),
(242, 121, 'en', 'Kuwait', 'Kuwait City', 'Dinar', 'Asia', 'Kuwaiti'),
(243, 122, 'ar', 'قيرغيزستان', 'Bishkek', 'Som', 'آسيا', 'قيرغيزستاني'),
(244, 122, 'en', 'Kyrgyzstan', 'Bishkek', 'Som', 'Asia', 'Kyrgyzstani'),
(245, 123, 'ar', 'جمهورية لاو الديمقراطية الشعبية', 'Vientiane', 'Kip', 'آسيا', 'لاوسي'),
(246, 123, 'en', 'Lao PDR', 'Vientiane', 'Kip', 'Asia', 'Laotian'),
(247, 124, 'ar', 'لاتفيا', 'Riga', 'اليورو', 'أوروبا', 'لاتيفي'),
(248, 124, 'en', 'Latvia', 'Riga', 'Euro', 'Europe', 'Latvian'),
(249, 125, 'ar', 'لبنان', 'Beirut', 'جنيه', 'آسيا', 'لبناني'),
(250, 125, 'en', 'Lebanon', 'Beirut', 'Pound', 'Asia', 'Lebanese'),
(251, 126, 'ar', 'ليسوتو', 'Maseru', 'Loti', 'أفريقيا', 'ليوسيتي'),
(252, 126, 'en', 'Lesotho', 'Maseru', 'Loti', 'Africa', 'Basotho'),
(253, 127, 'ar', 'ليبيريا', 'Monrovia', 'دولار', 'أفريقيا', 'ليبيري'),
(254, 127, 'en', 'Liberia', 'Monrovia', 'Dollar', 'Africa', 'Liberian'),
(255, 128, 'ar', 'الجماهيرية العربية الليبية', 'Tripolis', 'دينار', 'أفريقيا', 'ليبي'),
(256, 128, 'en', 'Libya', 'Tripolis', 'Dinar', 'Africa', 'Libyan'),
(257, 129, 'ar', 'ليختنشتاين', 'Vaduz', 'فرنك', 'أوروبا', 'ليختنشتيني'),
(258, 129, 'en', 'Liechtenstein', 'Vaduz', 'Franc', 'Europe', 'Liechtenstein'),
(259, 130, 'ar', 'ليتوانيا', 'Vilnius', 'اليورو', 'أوروبا', 'لتوانيي'),
(260, 130, 'en', 'Lithuania', 'Vilnius', 'Euro', 'Europe', 'Lithuanian'),
(261, 131, 'ar', 'لوكسمبورغ', 'Luxembourg', 'اليورو', 'أوروبا', 'لوكسمبورغي'),
(262, 131, 'en', 'Luxembourg', 'Luxembourg', 'Euro', 'Europe', 'Luxembourger'),
(263, 132, 'ar', 'ماكاو', 'Macao', 'Pataca', 'آسيا', 'ماكاوي'),
(264, 132, 'en', 'Macau', 'Macao', 'Pataca', 'Asia', 'Macanese'),
(265, 133, 'ar', 'مقدونيا ، جمهورية يوغوسلافيا السابقة', 'Skopje', 'Denar', 'أوروبا', 'مقدوني'),
(266, 133, 'en', 'Macedonia', 'Skopje', 'Denar', 'Europe', 'Macedonian'),
(267, 134, 'ar', 'مدغشقر', 'Antananarivo', 'Ariary', 'أفريقيا', 'مدغشقري'),
(268, 134, 'en', 'Madagascar', 'Antananarivo', 'Ariary', 'Africa', 'Malagasy'),
(269, 135, 'ar', 'ملاوي', 'Lilongwe', 'Kwacha', 'أفريقيا', 'مالاوي'),
(270, 135, 'en', 'Malawi', 'Lilongwe', 'Kwacha', 'Africa', 'Malawian'),
(271, 136, 'ar', 'ماليزيا', 'Kuala Lumpur', 'Ringgit', 'آسيا', 'ماليزي'),
(272, 136, 'en', 'Malaysia', 'Kuala Lumpur', 'Ringgit', 'Asia', 'Malaysian'),
(273, 137, 'ar', 'جزر المالديف', 'Male', 'Rufiyaa', 'آسيا', 'مالديفي'),
(274, 137, 'en', 'Maldives', 'Male', 'Rufiyaa', 'Asia', 'Maldivian'),
(275, 138, 'ar', 'مالي', 'Bamako', 'فرنك', 'أفريقيا', 'مالي'),
(276, 138, 'en', 'Mali', 'Bamako', 'Franc', 'Africa', 'Malian'),
(277, 139, 'ar', 'مالطا', 'Valletta', 'اليورو', 'أوروبا', 'مالطي'),
(278, 139, 'en', 'Malta', 'Valletta', 'Euro', 'Europe', 'Maltese'),
(279, 140, 'ar', 'جزر مارشال', 'Majuro', 'دولار', 'استراليا', 'مارشالي'),
(280, 140, 'en', 'Marshall Islands', 'Majuro', 'Dollar', 'Oceania', 'Marshallese'),
(281, 141, 'ar', 'مارتينيك', 'Fort-de-France', NULL, 'أمريكا الشمالية', 'مارتينيكي'),
(282, 141, 'en', 'Martinique', 'Fort-de-France', NULL, 'North America', 'Martiniquais'),
(283, 142, 'ar', 'موريتانيا', 'Nouakchott', 'Ouguiya', 'أفريقيا', 'موريتانيي'),
(284, 142, 'en', 'Mauritania', 'Nouakchott', 'Ouguiya', 'Africa', 'Mauritanian'),
(285, 143, 'ar', 'موريشيوس', 'Port Louis', 'Rupee', 'أفريقيا', 'موريشيوسي'),
(286, 143, 'en', 'Mauritius', 'Port Louis', 'Rupee', 'Africa', 'Mauritian'),
(287, 144, 'ar', 'مايوت', 'Mamoudzou', 'اليورو', 'أفريقيا', 'مايوتي'),
(288, 144, 'en', 'Mayotte', 'Mamoudzou', 'Euro', 'Africa', 'Mahoran'),
(289, 145, 'ar', 'المكسيك', 'Mexico City', 'Peso', 'أمريكا الشمالية', 'مكسيكي'),
(290, 145, 'en', 'Mexico', 'Mexico City', 'Peso', 'North America', 'Mexican'),
(291, 146, 'ar', 'ولايات ميكرونيزيا الموحدة', 'Palikir', 'دولار', 'استراليا', 'مايكرونيزيي'),
(292, 146, 'en', 'Micronesia', 'Palikir', 'Dollar', 'Oceania', 'Micronesian'),
(293, 147, 'ar', 'جمهورية مولدوفا', 'Chisinau', 'Leu', 'أوروبا', 'مولديفي'),
(294, 147, 'en', 'Moldova', 'Chisinau', 'Leu', 'Europe', 'Moldovan'),
(295, 148, 'ar', 'موناكو', 'Monaco', 'اليورو', 'أوروبا', 'مونيكي'),
(296, 148, 'en', 'Monaco', 'Monaco', 'Euro', 'Europe', 'Monacan'),
(297, 149, 'ar', 'منغوليا', 'Ulan Bator', 'Tugrik', 'آسيا', 'منغولي'),
(298, 149, 'en', 'Mongolia', 'Ulan Bator', 'Tugrik', 'Asia', 'Mongolian'),
(299, 150, 'ar', 'الجبل الأسود', 'Podgorica', 'اليورو', 'أوروبا', 'الجبل الأسود'),
(300, 150, 'en', 'Montenegro', 'Podgorica', 'Euro', 'Europe', 'Montenegrin'),
(301, 151, 'ar', 'مونتسيرات', 'Plymouth', 'دولار', 'أمريكا الشمالية', 'مونتسيراتي'),
(302, 151, 'en', 'Montserrat', 'Plymouth', 'Dollar', 'North America', 'Montserratian'),
(303, 152, 'ar', 'المغرب', 'Rabat', 'Dirham', 'أفريقيا', 'مغربي'),
(304, 152, 'en', 'Morocco', 'Rabat', 'Dirham', 'Africa', 'Moroccan'),
(305, 153, 'ar', 'موزمبيق', 'Maputo', 'Metical', 'أفريقيا', 'موزمبيقي'),
(306, 153, 'en', 'Mozambique', 'Maputo', 'Metical', 'Africa', 'Mozambican'),
(307, 154, 'ar', 'ميانمار', 'Nay Pyi Taw', 'Kyat', 'آسيا', 'ميانماري'),
(308, 154, 'en', 'Myanmar', 'Nay Pyi Taw', 'Kyat', 'Asia', 'Myanmarian'),
(309, 155, 'ar', 'ناميبيا', 'Windhoek', 'دولار', 'أفريقيا', 'ناميبي'),
(310, 155, 'en', 'Namibia', 'Windhoek', 'Dollar', 'Africa', 'Namibian'),
(311, 156, 'ar', 'ناورو', 'Yaren', 'دولار', 'استراليا', 'نوري'),
(312, 156, 'en', 'Nauru', 'Yaren', 'Dollar', 'Oceania', 'Nauruan'),
(313, 157, 'ar', 'نيبال', 'Kathmandu', 'Rupee', 'آسيا', 'نيبالي'),
(314, 157, 'en', 'Nepal', 'Kathmandu', 'Rupee', 'Asia', 'Nepalese'),
(315, 158, 'ar', 'هولندا', 'Amsterdam', 'اليورو', 'أوروبا', 'هولندي'),
(316, 158, 'en', 'Netherlands', 'Amsterdam', 'Euro', 'Europe', 'Dutch'),
(317, 159, 'ar', 'جزر الأنتيل الهولندية', 'Willemstad', 'Guilder', 'أمريكا الشمالية', 'هولندي'),
(318, 159, 'en', 'Netherlands Antilles', 'Willemstad', 'Guilder', 'North America', 'Dutch Antilier'),
(319, 160, 'ar', 'كاليدونيا الجديدة', 'Noumea', 'فرنك', 'استراليا', 'كاليدوني'),
(320, 160, 'en', 'New Caledonia', 'Noumea', 'Franc', 'Oceania', 'New Caledonian'),
(321, 161, 'ar', 'نيوزيلاندا', 'Wellington', 'دولار', 'استراليا', 'نيوزيلندي'),
(322, 161, 'en', 'New Zealand', 'Wellington', 'Dollar', 'Oceania', 'New Zealander'),
(323, 162, 'ar', 'نيكاراغوا', 'Managua', 'Cordoba', 'أمريكا الشمالية', 'نيكاراجوي'),
(324, 162, 'en', 'Nicaragua', 'Managua', 'Cordoba', 'North America', 'Nicaraguan'),
(325, 163, 'ar', 'النيجر', 'Niamey', 'فرنك', 'أفريقيا', 'نيجيري'),
(326, 163, 'en', 'Niger', 'Niamey', 'Franc', 'Africa', 'Nigerien'),
(327, 164, 'ar', 'نيجيريا', 'Abuja', 'Naira', 'أفريقيا', 'نيجيري'),
(328, 164, 'en', 'Nigeria', 'Abuja', 'Naira', 'Africa', 'Nigerian'),
(329, 165, 'ar', 'نيوي', 'Alofi', 'دولار', 'استراليا', 'ني'),
(330, 165, 'en', 'Niue', 'Alofi', 'Dollar', 'Oceania', 'Niuean'),
(331, 166, 'ar', 'جزيرة نورفولك', 'Kingston', NULL, 'استراليا', 'نورفوليكي'),
(332, 166, 'en', 'Norfolk Island', 'Kingston', NULL, 'Oceania', 'Norfolk Islander'),
(333, 167, 'ar', 'جزر مريانا الشمالية', 'Saipan', 'دولار', 'استراليا', 'ماريني'),
(334, 167, 'en', 'Northern Mariana Islands', 'Saipan', 'Dollar', 'Oceania', 'Northern Marianan'),
(335, 168, 'ar', 'النرويج', 'Oslo', 'Krone', 'أوروبا', 'نرويجي'),
(336, 168, 'en', 'Norway', 'Oslo', 'Krone', 'Europe', 'Norwegian'),
(337, 169, 'ar', 'سلطنة عمان', 'Muscat', 'ريال', 'آسيا', 'عماني'),
(338, 169, 'en', 'Oman', 'Muscat', 'Rial', 'Asia', 'Omani'),
(339, 170, 'ar', 'باكستان', 'Islamabad', 'Rupee', 'آسيا', 'باكستاني'),
(340, 170, 'en', 'Pakistan', 'Islamabad', 'Rupee', 'Asia', 'Pakistani'),
(341, 171, 'ar', 'بالاو', 'Melekeok', 'دولار', 'استراليا', 'بالاوي'),
(342, 171, 'en', 'Palau', 'Melekeok', 'Dollar', 'Oceania', 'Palauan'),
(343, 172, 'ar', 'الأراضي الفلسطينية المحتلة', 'East Jerusalem', 'Shekel', 'آسيا', 'فلسطيني'),
(344, 172, 'en', 'Palestine', 'East Jerusalem', 'Shekel', 'Asia', 'Palestinian'),
(345, 173, 'ar', 'بنما', 'Panama City', 'Balboa', 'أمريكا الشمالية', 'بنمي'),
(346, 173, 'en', 'Panama', 'Panama City', 'Balboa', 'North America', 'Panamanian'),
(347, 174, 'ar', 'بابوا غينيا الجديدة', 'Port Moresby', 'Kina', 'استراليا', 'بابوي'),
(348, 174, 'en', 'Papua New Guinea', 'Port Moresby', 'Kina', 'Oceania', 'Papua New Guinean'),
(349, 175, 'ar', 'باراغواي', 'Asuncion', 'Guarani', 'أمريكا الجنوبية', 'بارغاوي'),
(350, 175, 'en', 'Paraguay', 'Asuncion', 'Guarani', 'South America', 'Paraguayan'),
(351, 176, 'ar', 'بيرو', 'Lima', 'Sol', 'أمريكا الجنوبية', 'بيري'),
(352, 176, 'en', 'Peru', 'Lima', 'Sol', 'South America', 'Peruvian'),
(353, 177, 'ar', 'فيلبيني', 'Manila', 'Peso', 'آسيا', 'فلبيني'),
(354, 177, 'en', 'Philippines', 'Manila', 'Peso', 'Asia', 'Filipino'),
(355, 178, 'ar', 'بيتكيرن', 'Adamstown', 'دولار', 'استراليا', 'بيتكيرني'),
(356, 178, 'en', 'Pitcairn', 'Adamstown', 'Dollar', 'Oceania', 'Pitcairn Islander'),
(357, 179, 'ar', 'بولندا', 'Warsaw', 'Zloty', 'أوروبا', 'بوليني'),
(358, 179, 'en', 'Poland', 'Warsaw', 'Zloty', 'Europe', 'Polish'),
(359, 180, 'ar', 'البرتغال', 'Lisbon', 'اليورو', 'أوروبا', 'برتغالي'),
(360, 180, 'en', 'Portugal', 'Lisbon', 'Euro', 'Europe', 'Portuguese'),
(361, 181, 'ar', 'بورتوريكو', 'San Juan', 'دولار', 'أمريكا الشمالية', 'بورتي'),
(362, 181, 'en', 'Puerto Rico', 'San Juan', 'Dollar', 'North America', 'Puerto Rican'),
(363, 182, 'ar', 'قطر', 'Doha', 'ريال', 'آسيا', 'قطري'),
(364, 182, 'en', 'Qatar', 'Doha', 'Rial', 'Asia', 'Qatari'),
(365, 183, 'ar', 'جمع شمل', 'Saint-Denis', 'اليورو', 'أفريقيا', 'ريونيوني'),
(366, 183, 'en', 'Reunion Island', 'Saint-Denis', 'Euro', 'Africa', 'Reunionese'),
(367, 184, 'ar', 'رومانيا', 'Bucharest', 'Leu', 'أوروبا', 'روماني'),
(368, 184, 'en', 'Romania', 'Bucharest', 'Leu', 'Europe', 'Romanian'),
(369, 185, 'ar', 'الاتحاد الروسي', 'Moscow', 'Ruble', 'آسيا', 'روسي'),
(370, 185, 'en', 'Russian', 'Moscow', 'Ruble', 'Asia', 'Russian'),
(371, 186, 'ar', 'رواندا', 'Kigali', 'فرنك', 'أفريقيا', 'رواندا'),
(372, 186, 'en', 'Rwanda', 'Kigali', 'Franc', 'Africa', 'Rwandan'),
(373, 187, 'ar', 'سانت بارتيليمي', 'Gustavia', 'اليورو', 'أمريكا الشمالية', 'سان بارتيلمي'),
(374, 187, 'en', 'Saint Barthelemy', 'Gustavia', 'Euro', 'North America', 'Saint Barthelmian'),
(375, 188, 'ar', 'سانت هيلانة', 'Jamestown', 'جنيه', 'أفريقيا', 'هيلاني'),
(376, 188, 'en', 'Saint Helena', 'Jamestown', 'Pound', 'Africa', 'St. Helenian'),
(377, 189, 'ar', 'سانت كيتس ونيفيس', 'Basseterre', 'دولار', 'أمريكا الشمالية', 'سانت كيتس ونيفس'),
(378, 189, 'en', 'Saint Kitts and Nevis', 'Basseterre', 'Dollar', 'North America', 'Kittitian/Nevisian'),
(379, 190, 'ar', 'القديسة لوسيا', 'Castries', 'دولار', 'أمريكا الشمالية', 'سان بيير وميكلوني'),
(380, 190, 'en', 'Saint Pierre and Miquelon', 'Castries', 'Dollar', 'North America', 'St. Pierre and Miquelon'),
(381, 191, 'ar', 'القديس مارتن', 'Marigot', 'اليورو', 'أمريكا الشمالية', 'ساينت مارتني فرنسي'),
(382, 191, 'en', 'Saint Martin (French part)', 'Marigot', 'Euro', 'North America', 'St. Martian(French)'),
(383, 192, 'ar', 'سانت بيير وميكلون', 'Saint-Pierre', 'اليورو', 'أمريكا الشمالية', NULL),
(384, 192, 'en', 'سانت بيير وميكلون', 'Saint-Pierre', 'Euro', 'North America', NULL),
(385, 193, 'ar', 'سانت فنسنت وجزر غرينادين', 'Kingstown', 'دولار', 'أمريكا الشمالية', 'سانت فنسنت وجزر غرينادين'),
(386, 193, 'en', 'Saint Vincent and the Grenadines', 'Kingstown', 'Dollar', 'North America', 'Saint Vincent and the Grenadines'),
(387, 194, 'ar', 'ساموا', 'Apia', 'Tala', 'استراليا', 'ساموي'),
(388, 194, 'en', 'Samoa', 'Apia', 'Tala', 'Oceania', 'Samoan'),
(389, 195, 'ar', 'سان مارينو', 'San Marino', 'اليورو', 'أوروبا', 'ماريني'),
(390, 195, 'en', 'San Marino', 'San Marino', 'Euro', 'Europe', 'Sammarinese'),
(391, 196, 'ar', 'ساو تومي وبرينسيبي', 'Sao Tome', 'Dobra', 'أفريقيا', 'ساو تومي وبرينسيبي'),
(392, 196, 'en', 'Sao Tome and Principe', 'Sao Tome', 'Dobra', 'Africa', 'Sao Tomean'),
(393, 197, 'ar', 'المملكة العربية السعودية', 'الرياض', 'ريال', 'آسيا', 'سعودي'),
(394, 197, 'en', 'Saudi Arabia', 'Riyadh', 'Rial', 'Asia', 'Saudi Arabian'),
(395, 198, 'ar', 'السنغال', 'Dakar', 'فرنك', 'أفريقيا', 'سنغالي'),
(396, 198, 'en', 'Senegal', 'Dakar', 'Franc', 'Africa', 'Senegalese'),
(397, 199, 'ar', 'صربيا', 'Belgrade', 'دينار', 'أوروبا', 'صربي'),
(398, 199, 'en', 'Serbia', 'Belgrade', 'Dinar', 'Europe', 'Serbian'),
(399, 200, 'ar', 'صربيا والجبل الأسود', 'Belgrade', NULL, 'أوروبا', NULL),
(400, 200, 'en', 'صربيا والجبل الأسود', 'Belgrade', NULL, 'Europe', NULL),
(401, 201, 'ar', 'سيشيل', 'Victoria', 'Rupee', 'أفريقيا', 'سيشيلي'),
(402, 201, 'en', 'Seychelles', 'Victoria', 'Rupee', 'Africa', 'Seychellois'),
(403, 202, 'ar', 'سيرا ليون', 'Freetown', 'Leone', 'أفريقيا', 'سيراليوني'),
(404, 202, 'en', 'Sierra Leone', 'Freetown', 'Leone', 'Africa', 'Sierra Leonean'),
(405, 203, 'ar', 'سنغافورة', 'Singapur', 'دولار', 'آسيا', 'سنغافوري'),
(406, 203, 'en', 'Singapore', 'Singapur', 'Dollar', 'Asia', 'Singaporean'),
(407, 204, 'ar', 'سينت مارتن', 'Philipsburg', 'Guilder', 'أمريكا الشمالية', 'ساينت مارتني هولندي'),
(408, 204, 'en', 'Sint Maarten (Dutch part)', 'Philipsburg', 'Guilder', 'North America', 'St. Martian(Dutch)'),
(409, 205, 'ar', 'سلوفاكيا', 'Bratislava', 'اليورو', 'أوروبا', 'سولفاكي'),
(410, 205, 'en', 'Slovakia', 'Bratislava', 'Euro', 'Europe', 'Slovak'),
(411, 206, 'ar', 'سلوفينيا', 'Ljubljana', 'اليورو', 'أوروبا', 'سولفيني'),
(412, 206, 'en', 'Slovenia', 'Ljubljana', 'Euro', 'Europe', 'Slovenian'),
(413, 207, 'ar', 'جزر سليمان', 'Honiara', 'دولار', 'استراليا', 'جزر سليمان'),
(414, 207, 'en', 'Solomon Islands', 'Honiara', 'Dollar', 'Oceania', 'Solomon Island'),
(415, 208, 'ar', 'الصومال', 'Mogadishu', 'Shilling', 'أفريقيا', 'صومالي'),
(416, 208, 'en', 'Somalia', 'Mogadishu', 'Shilling', 'Africa', 'Somali'),
(417, 209, 'ar', 'جنوب أفريقيا', 'Pretoria', 'Rand', 'أفريقيا', 'أفريقي'),
(418, 209, 'en', 'South Africa', 'Pretoria', 'Rand', 'Africa', 'South African'),
(419, 210, 'ar', 'جورجيا الجنوبية وجزر ساندويتش الجنوبية', 'Grytviken', NULL, 'القارة القطبية الجنوبية', 'لمنطقة القطبية الجنوبية'),
(420, 210, 'en', 'South Georgia and the South Sandwich', 'Grytviken', NULL, 'Antarctica', 'South Georgia and the South Sandwich'),
(421, 211, 'ar', 'جنوب السودان', 'Juba', 'جنيه', 'أفريقيا', 'سوادني جنوبي'),
(422, 211, 'en', 'South Sudan', 'Juba', 'Pound', 'Africa', 'South Sudanese'),
(423, 212, 'ar', 'إسبانيا', 'Madrid', 'اليورو', 'أوروبا', 'إسباني'),
(424, 212, 'en', 'Spain', 'Madrid', 'Euro', 'Europe', 'Spanish'),
(425, 213, 'ar', 'سيريلانكا', 'Colombo', 'Rupee', 'آسيا', 'سريلانكي'),
(426, 213, 'en', 'Sri Lanka', 'Colombo', 'Rupee', 'Asia', 'Sri Lankian'),
(427, 214, 'ar', 'السودان', 'Khartoum', 'جنيه', 'أفريقيا', 'سوداني'),
(428, 214, 'en', 'Sudan', 'Khartoum', 'Pound', 'Africa', 'Sudanese'),
(429, 215, 'ar', 'سورينام', 'Paramaribo', 'دولار', 'أمريكا الجنوبية', 'سورينامي'),
(430, 215, 'en', 'Suriname', 'Paramaribo', 'Dollar', 'South America', 'Surinamese'),
(431, 216, 'ar', 'سفالبارد وجان ماين', 'Longyearbyen', 'Krone', 'أوروبا', 'سفالبارد ويان ماين'),
(432, 216, 'en', 'Svalbard and Jan Mayen', 'Longyearbyen', 'Krone', 'Europe', 'Svalbardian/Jan Mayenian'),
(433, 217, 'ar', 'سوازيلاند', 'Mbabane', 'Lilangeni', 'أفريقيا', 'سوازيلندي'),
(434, 217, 'en', 'Swaziland', 'Mbabane', 'Lilangeni', 'Africa', 'Swazi'),
(435, 218, 'ar', 'السويد', 'Stockholm', 'Krona', 'أوروبا', 'سويدي'),
(436, 218, 'en', 'Sweden', 'Stockholm', 'Krona', 'Europe', 'Swedish'),
(437, 219, 'ar', 'سويسرا', 'Berne', 'فرنك', 'أوروبا', 'سويسري'),
(438, 219, 'en', 'Switzerland', 'Berne', 'Franc', 'Europe', 'Swiss'),
(439, 220, 'ar', 'الجمهورية العربية السورية', 'Damascus', 'جنيه', 'آسيا', 'سوري'),
(440, 220, 'en', 'Syria', 'Damascus', 'Pound', 'Asia', 'Syrian'),
(441, 221, 'ar', 'مقاطعة تايوان الصينية', 'Taipei', 'دولار', 'آسيا', 'تايواني'),
(442, 221, 'en', 'Taiwan', 'Taipei', 'Dollar', 'Asia', 'Taiwanese'),
(443, 222, 'ar', 'طاجيكستان', 'Dushanbe', 'Somoni', 'آسيا', 'طاجيكستاني'),
(444, 222, 'en', 'Tajikistan', 'Dushanbe', 'Somoni', 'Asia', 'Tajikistani'),
(445, 223, 'ar', 'جمهورية تنزانيا المتحدة', 'Dodoma', 'Shilling', 'أفريقيا', 'تنزانيي'),
(446, 223, 'en', 'Tanzania', 'Dodoma', 'Shilling', 'Africa', 'Tanzanian'),
(447, 224, 'ar', 'تايلاند', 'Bangkok', 'Baht', 'آسيا', 'تايلندي'),
(448, 224, 'en', 'Thailand', 'Bangkok', 'Baht', 'Asia', 'Thai'),
(449, 225, 'ar', 'تيمور ليشتي', 'Dili', 'دولار', 'آسيا', 'تيموري'),
(450, 225, 'en', 'Timor-Leste', 'Dili', 'Dollar', 'Asia', 'Timor-Lestian'),
(451, 226, 'ar', 'توجو', 'Lome', 'فرنك', 'أفريقيا', 'توغي'),
(452, 226, 'en', 'Togo', 'Lome', 'Franc', 'Africa', 'Togolese'),
(453, 227, 'ar', 'توكيلاو', '', 'دولار', 'استراليا', 'توكيلاوي'),
(454, 227, 'en', 'Tokelau', '', 'Dollar', 'Oceania', 'Tokelaian'),
(455, 228, 'ar', 'تونغا', 'Nuku\'alofa', 'Pa\'anga', 'استراليا', 'تونغي'),
(456, 228, 'en', 'Tonga', 'Nuku\'alofa', 'Pa\'anga', 'Oceania', 'Tongan'),
(457, 229, 'ar', 'ترينداد وتوباغو', 'Port of Spain', 'دولار', 'أمريكا الشمالية', 'ترينيداد وتوباغو'),
(458, 229, 'en', 'Trinidad and Tobago', 'Port of Spain', 'Dollar', 'North America', 'Trinidadian/Tobagonian'),
(459, 230, 'ar', 'تونس', 'Tunis', 'دينار', 'أفريقيا', 'تونسي'),
(460, 230, 'en', 'Tunisia', 'Tunis', 'Dinar', 'Africa', 'Tunisian'),
(461, 231, 'ar', 'ديك رومى', 'Ankara', 'Lira', 'آسيا', 'تركي'),
(462, 231, 'en', 'Turkey', 'Ankara', 'Lira', 'Asia', 'Turkish'),
(463, 232, 'ar', 'تركمانستان', 'Ashgabat', 'Manat', 'آسيا', 'تركمانستاني'),
(464, 232, 'en', 'Turkmenistan', 'Ashgabat', 'Manat', 'Asia', 'Turkmen'),
(465, 233, 'ar', 'جزر تركس وكايكوس', 'Cockburn Town', 'دولار', 'أمريكا الشمالية', 'جزر توركس وكايكوس'),
(466, 233, 'en', 'Turks and Caicos Islands', 'Cockburn Town', 'Dollar', 'North America', 'Turks and Caicos Islands'),
(467, 234, 'ar', 'توفالو', 'Funafuti', 'دولار', 'استراليا', 'توفالي'),
(468, 234, 'en', 'Tuvalu', 'Funafuti', 'Dollar', 'Oceania', 'Tuvaluan'),
(469, 235, 'ar', 'أوغندا', 'Kampala', 'Shilling', 'أفريقيا', 'أوغندي'),
(470, 235, 'en', 'Uganda', 'Kampala', 'Shilling', 'Africa', 'Ugandan'),
(471, 236, 'ar', 'أوكرانيا', 'Kiev', 'Hryvnia', 'أوروبا', 'أوكراني'),
(472, 236, 'en', 'Ukraine', 'Kiev', 'Hryvnia', 'Europe', 'Ukrainian'),
(473, 237, 'ar', 'الإمارات العربية المتحدة', 'Abu Dhabi', 'Dirham', 'آسيا', 'إماراتي'),
(474, 237, 'en', 'United Arab Emirates', 'Abu Dhabi', 'Dirham', 'Asia', 'Emirati'),
(475, 238, 'ar', 'المملكة المتحدة', 'London', 'جنيه', 'أوروبا', 'بريطاني'),
(476, 238, 'en', 'United Kingdom', 'London', 'Pound', 'Europe', 'British'),
(477, 239, 'ar', 'الولايات المتحدة', 'Washington', 'دولار', 'أمريكا الشمالية', 'أمريكي'),
(478, 239, 'en', 'United States', 'Washington', 'Dollar', 'North America', 'American'),
(479, 240, 'ar', 'جزر الولايات المتحدة البعيدة الصغرى', '', NULL, 'أمريكا الشمالية', 'أمريكي'),
(480, 240, 'en', 'US Minor Outlying Islands', '', NULL, 'North America', 'US Minor Outlying Islander'),
(481, 241, 'ar', 'أوروغواي', 'Montevideo', 'Peso', 'أمريكا الجنوبية', 'أورغواي'),
(482, 241, 'en', 'Uruguay', 'Montevideo', 'Peso', 'South America', 'Uruguayan'),
(483, 242, 'ar', 'أوزبكستان', 'Tashkent', 'Som', 'آسيا', 'أوزباكستاني'),
(484, 242, 'en', 'Uzbekistan', 'Tashkent', 'Som', 'Asia', 'Uzbek'),
(485, 243, 'ar', 'فانواتو', 'Port Vila', 'Vatu', 'استراليا', 'فانواتي'),
(486, 243, 'en', 'Vanuatu', 'Port Vila', 'Vatu', 'Oceania', 'Vanuatuan'),
(487, 244, 'ar', 'فنزويلا', 'Caracas', 'Bolivar', 'أمريكا الجنوبية', 'فنزويلي'),
(488, 244, 'en', 'Venezuela', 'Caracas', 'Bolivar', 'South America', 'Venezuelan'),
(489, 245, 'ar', 'فييت نام', 'Hanoi', 'Dong', 'آسيا', 'فيتنامي'),
(490, 245, 'en', 'Vietnam', 'Hanoi', 'Dong', 'Asia', 'Vietnamese'),
(491, 246, 'ar', 'جزر العذراء البريطانية', 'Road Town', 'دولار', 'أمريكا الشمالية', NULL),
(492, 246, 'en', 'جزر العذراء البريطانية', 'Road Town', 'Dollar', 'North America', NULL),
(493, 247, 'ar', 'جزر فيرجن ، الولايات المتحدة', 'Charlotte Amalie', 'دولار', 'أمريكا الشمالية', 'أمريكي'),
(494, 247, 'en', 'Virgin Islands (U.S.)', 'Charlotte Amalie', 'Dollar', 'North America', 'American Virgin Islander'),
(495, 248, 'ar', 'واليس وفوتونا', 'Mata Utu', 'فرنك', 'استراليا', 'فوتوني'),
(496, 248, 'en', 'Wallis and Futuna Islands', 'Mata Utu', 'Franc', 'Oceania', 'Wallisian/Futunan'),
(497, 249, 'ar', 'الصحراء الغربية', 'El-Aaiun', 'Dirham', 'أفريقيا', 'صحراوي'),
(498, 249, 'en', 'Western Sahara', 'El-Aaiun', 'Dirham', 'Africa', 'Sahrawian'),
(499, 250, 'ar', 'اليمن', 'Sanaa', 'ريال', 'آسيا', 'يمني'),
(500, 250, 'en', 'Yemen', 'Sanaa', 'Rial', 'Asia', 'Yemeni'),
(501, 251, 'ar', 'زامبيا', 'Lusaka', 'Kwacha', 'أفريقيا', 'زامبياني'),
(502, 251, 'en', 'Zambia', 'Lusaka', 'Kwacha', 'Africa', 'Zambian'),
(503, 252, 'ar', 'زيمبابوي', 'Harare', 'دولار', 'أفريقيا', 'زمبابوي'),
(504, 252, 'en', 'Zimbabwe', 'Harare', 'Dollar', 'Africa', 'Zimbabwean');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
