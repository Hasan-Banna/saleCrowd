-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2021 at 04:44 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  `admin_image` text NOT NULL,
  `admin_country` text NOT NULL,
  `admin_about` text NOT NULL,
  `admin_contact` varchar(255) NOT NULL,
  `admin_job` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `admin_image`, `admin_country`, `admin_about`, `admin_contact`, `admin_job`) VALUES
(1, 'Hasan Banna', 'hasanbanna40@gmail.com', 'Banna007', 'banna.jpg', 'Bangladesh', 'This application is created by Banna, if you willing to contact me, please click this link. <br/>\r\n                        <a href=\"#\"> Banna </a> <br/>\r\n                        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci doloribus tempore non ut velit, nesciunt totam, perspiciatis corrupti expedita nulla aut necessitatibus eius nisi. Unde quasi, recusandae doloribus minus quisquam.', '+8801838241314', 'Web Developer'),
(2, 'Tahmid Sami', 'tahmidsami201@gmail.com', 'Sami007', 'sami.jpg', 'Bangladesh', 'Sami About thing Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci doloribus tempore non ut velit, nesciunt totam, perspiciatis corrupti expedita nulla aut necessitatibus eius nisi. Unde quasi, recusandae doloribus minus quisquam.', '+8801838241314', 'Web Designer'),
(4, 'KD Chayon', 'kdchayon@gmail.com', 'Chayon007', 'chayon.jpg', 'Bangladesh', ' kd chayon data entry expart .good person.', '+8801838241314', 'Data Entry Expart');

-- --------------------------------------------------------

--
-- Table structure for table `boxes_section`
--

CREATE TABLE `boxes_section` (
  `box_id` int(10) NOT NULL,
  `box_title` text NOT NULL,
  `box_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `boxes_section`
--

INSERT INTO `boxes_section` (`box_id`, `box_title`, `box_desc`) VALUES
(1, ' Best products ', 'we provide best quality products for our customer'),
(2, ' Best Offers ', 'Sometimes we provide best offer for our customer'),
(3, ' 100% Satisfy ', 'you can Trust us');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `p_price` varchar(255) NOT NULL,
  `size` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(10) NOT NULL,
  `cat_title` text NOT NULL,
  `cat_top` text NOT NULL,
  `cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_top`, `cat_image`) VALUES
(1, 'Men', 'yes', 'men.jpg'),
(2, 'Women', 'no', 'women.jpg'),
(3, 'Kids', 'no', 'kids.jpg'),
(4, 'Other', 'yes', 'others.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `coupon_id` int(100) NOT NULL,
  `product_id` int(100) NOT NULL,
  `coupon_title` varchar(255) NOT NULL,
  `coupon_price` varchar(255) NOT NULL,
  `coupon_code` varchar(255) NOT NULL,
  `coupon_limit` int(100) NOT NULL,
  `coupon_used` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`coupon_id`, `product_id`, `coupon_title`, `coupon_price`, `coupon_code`, `coupon_limit`, `coupon_used`) VALUES
(2, 18, 'Coupon For Black Swan Blouse', '700', '007', 4, 0),
(4, 6, 'Coupon For Women diamond heart ring', '500', '00ggj', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `customer_country` text NOT NULL,
  `customer_city` text NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_image` text NOT NULL,
  `customer_ip` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_country`, `customer_city`, `customer_contact`, `customer_address`, `customer_image`, `customer_ip`, `status`) VALUES
(31, 'Kd Chayan', 'hasanbanna40@gmail.com', '123', 'Bangladesh', 'Demra', '01818772553', 'demra Dhaka', 'chayon.jpg', '::1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `customer_orders`
--

CREATE TABLE `customer_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `due_amount` int(100) NOT NULL,
  `invoice_no` int(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_date` date NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_orders`
--

INSERT INTO `customer_orders` (`order_id`, `customer_id`, `due_amount`, `invoice_no`, `qty`, `size`, `order_date`, `order_status`) VALUES
(10, 31, 300, 2136044710, 1, 'Small', '2021-02-19', 'pending'),
(11, 31, 1500, 1416919599, 1, 'Small', '2021-02-19', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `customer_verify`
--

CREATE TABLE `customer_verify` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `verify_code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_verify`
--

INSERT INTO `customer_verify` (`id`, `customer_id`, `verify_code`) VALUES
(1, 17, '263760'),
(2, 18, '186218'),
(3, 19, '327361');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `manufacturer_id` int(10) NOT NULL,
  `manufacturer_title` text NOT NULL,
  `manufacturer_top` text NOT NULL,
  `manufacturer_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`manufacturer_id`, `manufacturer_title`, `manufacturer_top`, `manufacturer_image`) VALUES
(7, 'Zara Fashion', 'yes', 'gfy.jfif'),
(8, 'Easy Fashion', 'no', 'logo-footer-main-1-1.png'),
(9, 'Noir Fashion', 'no', 'f772cec0db10cb454f18b7858a13f542.jpg'),
(10, 'Bata', 'no', 'bata-shoes.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `payment_mode` text NOT NULL,
  `ref_no` int(10) NOT NULL,
  `code` int(10) NOT NULL,
  `payment_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `invoice_no`, `amount`, `payment_mode`, `ref_no`, `code`, `payment_date`) VALUES
(6, 1036405261, 300, 'Bikash', 333321, 0, '2-11-2020'),
(7, 644, 600, 'Bikash', 5465464, 5564, '29/01/2021');

-- --------------------------------------------------------

--
-- Table structure for table `pending_orders`
--

CREATE TABLE `pending_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `product_id` text NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pending_orders`
--

INSERT INTO `pending_orders` (`order_id`, `customer_id`, `invoice_no`, `product_id`, `qty`, `size`, `order_status`) VALUES
(10, 31, 2136044710, '25', 1, 'Small', 'pending'),
(11, 31, 1416919599, '22', 1, 'Small', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `manufacturer_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `product_title` text NOT NULL,
  `product_url` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_keywords` text NOT NULL,
  `product_desc` text NOT NULL,
  `product_features` text NOT NULL,
  `product_video` text NOT NULL,
  `product_label` text NOT NULL,
  `product_sale` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `manufacturer_id`, `date`, `product_title`, `product_url`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_keywords`, `product_desc`, `product_features`, `product_video`, `product_label`, `product_sale`) VALUES
(2, 1, 2, 7, '2021-01-29 14:53:18', 'Tokichoi Front Pocket Collared Dress', 'product-6', 'product_front.jpg', 'product-back.jpg', 'product_hang.jpg', 800, 'Dress', '<p><span style=\"font-weight: bold; color: #52565a; font-family: arial, sans-serif;\">Lorem ipsum</span><span style=\"color: #3c4043; font-family: arial, sans-serif;\">, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century</span></p>', '', '                                                                                                                                        ', 'sale', 600),
(3, 4, 3, 7, '2021-01-29 14:25:02', 'Boys Puffer Coat With Detachable Hood', 'boys-puffer-coat-with-detachable-hood', 'boys-Puffer-Coat-With-Detachable-Hood-1.jpg', 'boys-Puffer-Coat-With-Detachable-Hood-2.jpg', 'boys-Puffer-Coat-With-Detachable-Hood-3.jpg', 125, 'Hood', '<p>boys-Puffer-Coat-With-Detachable-Hood .sdad jhdvahd&nbsp; da dha&nbsp;</p>', '', '                                                                    ', 'new', 0),
(4, 5, 2, 7, '2021-01-29 14:29:28', 'Girls Polo T Shirt', 'product-1', 'g-polos-tshirt-1.jpg', 'g-polos-tshirt-2.jpg', '', 100, 't-shirt', '<p><span style=\"color: #3c4043; font-family: arial, sans-serif;\">lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century</span></p>', '', '                                                                    ', 'sale', 10),
(5, 1, 1, 8, '2021-01-29 14:29:41', 'Man Geox Winter Jecket', 'product-10', 'Man-Geox-Winter-jacket-1.jpg', 'Man-Geox-Winter-jacket-2.jpg', 'Man-Geox-Winter-jacket-3.jpg', 500, 'Snake Skin', '<p><span style=\"color: #3c4043; font-family: arial, sans-serif;\">lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century</span></p>', '', '                                                                    ', 'new', 0),
(6, 1, 2, 8, '2021-01-29 14:29:59', 'Women Red Winter Jacket', 'product-11', 'Red-Winter-jacket-1.jpg', 'Red-Winter-jacket-2.jpg', 'Red-Winter-jacket-3.jpg', 800, 'Korean jacket', '<p><span style=\"color: #3c4043; font-family: arial, sans-serif;\">lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century</span></p>', '', '                                                                    ', 'new', 0),
(7, 4, 2, 7, '2021-01-29 14:30:18', 'Woman waxed cotton coat', 'product-15', 'waxed-cotton-coat-woman-1.jpg', 'waxed-cotton-coat-woman-2.jpg', 'waxed-cotton-coat-woman-3.jpg', 1200, 'cotton ', '<p><span style=\"color: #3c4043; font-family: arial, sans-serif;\">lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century</span></p>', '', '                                                                    ', 'new', 0),
(8, 3, 2, 10, '2021-01-29 14:33:09', 'Women High Heels Pantofel Brukat', 'product-12', 'High Heels Women Pantofel Brukat-1.jpg', 'High Heels Women Pantofel Brukat-2.jpg', 'High Heels Women Pantofel Brukat-3.jpg', 800, 'high Heels', '<p><span style=\"color: #3c4043; font-family: arial, sans-serif;\">lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century</span></p>', '', '                                                                    ', 'sale', 0),
(9, 3, 1, 10, '2021-01-29 14:33:20', 'Adidas Suarez Slop On', 'product-13', 'Man-Adidas-Suarez-Slop-On-1.jpg', 'Man-Adidas-Suarez-Slop-On-2.jpg', 'Man-Adidas-Suarez-Slop-On-3.jpg', 800, 'Addidas', '<p><span style=\"color: #3c4043; font-family: arial, sans-serif;\">lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century</span></p>', '', '                                                                    ', 'sale', 5),
(10, 2, 1, 10, '2021-01-29 14:33:33', 'Mont Blan Belt man', 'product-7', 'Mont-Blanc-Belt-man-1.jpg', 'Mont-Blanc-Belt-man-2.jpg', 'Mont-Blanc-Belt-man-3.jpg', 250, 'Belt', '<p><span style=\"color: #3c4043; font-family: arial, sans-serif;\">lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century</span></p>', '', '                                                                    ', 'new', 10),
(11, 2, 2, 9, '2021-01-29 14:34:02', 'Women diamond heart ring', 'product-9', 'women-diamond-heart-ring-1.jpg', 'women-diamond-heart-ring-2.jpg', 'women-diamond-heart-ring-3.jpg', 350, 'Ring', '<p><span style=\"color: #3c4043; font-family: arial, sans-serif;\">lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century</span></p>', '', '                                                                    ', 'new', 0),
(12, 5, 1, 8, '2021-01-29 14:34:35', 'Grey man', 'product-2', 'grey-man-1.jpg', 'grey-man-2.jpg', 'grey-man-3.jpg', 100, 'Grey', '<p>fjssj jsj sf s fs sh fshfsfsf sf&nbsp; sspoa[oo&nbsp;</p>', '', '                                                                    ', 'sale', 20),
(13, 5, 1, 7, '2021-01-29 14:34:44', 'Boy Polo T shirt', 'product-5', 'polos-tshirt-1.jpg', 'polos-tshirt-2.jpg', '', 125, 'Polo', '<p>ffisafvi v asoas&nbsp; abfoasdfb i bv iv</p>', '', '                                                                    ', 'sale', 100),
(14, 1, 1, 9, '2021-01-29 14:34:58', 'Levis Trucker Jacket', 'product-14', 'levis-Trucker-Jacket.jpg', 'levis-Trucker-Jacket-2.jpg', 'levis-Trucker-Jacket-3.jpg', 1000, 'Levis', '<p>sdffdf jsfdasubfsau usiafvausfvas</p>', '', '                                                                    ', 'new', 15),
(15, 2, 3, 9, '2021-01-29 14:35:13', 'Latest Kids Hijab', 'product-3', 'hijab-anak-1.jpg', 'hijab-anak-2.jpg', 'hijab-anak-3.jpg', 120, 'Kids Hijab', '<p>This is a new model hijab for kids. It is full of cotton. All kids like this product.</p>', '', '                                                                    ', 'sale', 10),
(17, 1, 2, 8, '2021-01-29 14:35:31', 'New Women Jacket', 'product-8', 'new-jacket-women-1.jpg', 'new-jacket-women-2.jpg', 'new-jacket-women-3.jpg', 250, 'women jacket', '<p>djsd jsdvus asd aus&nbsp;</p>', '', '                                                                    ', 'new', 0),
(18, 4, 2, 7, '2021-01-29 14:35:41', 'Black Swan Blouse', 'product-16', 'black-swan-blouse.jpg', 'swan-blouse-2.jpg', 'swan-blouse-3.jpg', 1300, 'Blouse, Coat, Women', '<p>stylist coat for women</p>', '', '                                                                                                                                        ', 'sale', 1100),
(19, 1, 1, 9, '2021-01-29 14:36:12', 'New Jacket Man', 'new-jacket-man', 'jacket-1.jpg', 'jacket-2.jpg', 'jacket-3.jpg', 300, 'jacket, man', '<p>This is for product description....</p>', '<p>Add product Features...</p>', '                                    <iframe width=\"1263\" height=\"520\" src=\"https://www.youtube.com/embed/wG02KH-njRo?list=RDMMwG02KH-njRo\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>                                                              ', 'new', 275),
(21, 5, 1, 7, '2021-01-29 14:36:23', 'Man Polo T Shirt', 'new-polo-t-shirt-man', 'Man-Polo-1.jpg', 'Man-Polo-2.jpg', 'Man-Polo-3.jpg', 200, 't-shirt', '<p>Nice White t shirt</p>', '', '                                                                                                                                                                                                            ', 'sale', 150),
(22, 1, 2, 9, '2021-01-29 14:36:35', 'New Women Jacket', 'new-women-denim-jacket', 'women-denim-jecket 1.jpg', 'women-denim-jecket 2.jpg', 'women-denim-jecket 3.jpg', 1500, 'denim jacket', '<p>New Danim Jacket for Women</p>', '', '                                                                                                                                                                                                                                                                                ', 'new', 1000),
(25, 1, 1, 7, '2021-02-15 14:50:28', 'NUB Hodie', 'NUB-blue-hodie', '129074331_2826979510880941_2115584350403716464_o.jpg', '129074331_2826979510880941_2115584350403716464_o.jpg', '129074331_2826979510880941_2115584350403716464_o.jpg', 300, 'Hoodi', '<p>Fabric:100% cotton</p>\r\n<p>Full Sleeve</p>', '', '', 'new', 300);

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` text NOT NULL,
  `p_cat_top` text NOT NULL,
  `p_cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_top`, `p_cat_image`) VALUES
(1, 'Jackets  ', 'yes', 'jacket.jpg'),
(2, 'Accessories', 'no', 'acc.jpg'),
(3, 'Shoes', 'no', 'shoes.jpg'),
(4, 'Coats', 'yes', 'coat.jpg'),
(5, 'T-Shirt', 'no', 'tshirt.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `rating` tinyint(1) NOT NULL,
  `submit_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `product_id`, `name`, `content`, `rating`, `submit_date`) VALUES
(13, 1, 'ch', 'average', 3, '2021-01-29 21:00:05'),
(14, 22, 'js', 'kkk', 2, '2021-02-08 15:35:06'),
(15, 23, 'banna', 'wow', 5, '2021-02-08 15:35:27');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `slide_id` int(10) NOT NULL,
  `slide_name` varchar(255) NOT NULL,
  `slide_image` text NOT NULL,
  `slide_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slide_id`, `slide_name`, `slide_image`, `slide_url`) VALUES
(6, 'slide number 10', 'slider-number-10.jpg', 'http://localhost/M-Dev-Store/shop.php'),
(7, 'slide number 11', 'slider-number-11.jpg', 'http://localhost/M-Dev-Store/checkout.php'),
(10, 'slide number 14', 'slider-number-14.jpg', 'test.com'),
(11, 'slide number 15', 'slide-2.jpg', 'www.youtube.com');

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `term_id` int(10) NOT NULL,
  `term_title` varchar(100) NOT NULL,
  `term_link` varchar(100) NOT NULL,
  `term_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`term_id`, `term_title`, `term_link`, `term_desc`) VALUES
(1, 'Terms & Conditions', 'termLink', '<p>&nbsp;</p>\r\n<h4 style=\"box-sizing: border-box; padding: 0px; font-family: Arial, Verdana, sans-serif; line-height: 1.1; color: #333333; margin: 21px 0px !important; font-size: 16px !important;\" data-spm-anchor-id=\"a2a0e.11872973.4901519370.i3.28fc1d48Niw4F1\">INTRODUCTION</h4>\r\n<p><span style=\"color: #333333; font-family: Arial, Verdana, sans-serif;\">Welcome to \"Sale Crowd\" also hereby known as &ldquo;we\", \"us\" or \"Sale Crowd\". We are an online marketplace and these are the terms and conditions governing your access and use of Daraz along with its related sub-domains, sites, mobile app, services and tools (the \"Site\"). By using the Site, you hereby accept these terms and conditions (including the linked information herein) and represent that you agree to comply with these terms and conditions (the \"User Agreement\"). This User Agreement is deemed effective upon your use of the Site which signifies your acceptance of these terms. If you do not agree to be bound by this User Agreement please do not access, register with, or use this Site.</span></p>\r\n<p><span style=\"color: #333333; font-family: Arial, Verdana, sans-serif;\">The Site reserves the right to change, modify, add, or remove portions of these Terms and Conditions at any time without any prior notification. Changes will be effective when posted on the Site with no other notice provided. Please check these Terms and Conditions regularly for updates. Your continued use of the Site following the posting of changes to Terms and Conditions of use constitutes your acceptance of those changes.</span></p>\r\n<h4 style=\"box-sizing: border-box; padding: 0px; font-family: Arial, Verdana, sans-serif; line-height: 1.1; color: #333333; margin: 21px 0px !important; font-size: 16px !important;\">2. CONDITIONS OF USE</h4>\r\n<h4 style=\"box-sizing: border-box; padding: 0px; font-family: Arial, Verdana, sans-serif; line-height: 1.1; color: #333333; margin: 21px 0px !important; font-size: 16px !important;\">A. YOUR ACCOUNT</h4>\r\n<p><span style=\"color: #333333; font-family: Arial, Verdana, sans-serif;\">&nbsp;</span></p>\r\n<p style=\"box-sizing: border-box; padding: 0px; clear: both; line-height: 1.5; color: #333333; font-family: Arial, Verdana, sans-serif; margin: 12px 0px !important;\">To access certain services offered by the platform, we may require that you create an account with us or provide personal information to complete the creation of an account. We may at any time in our sole and absolute discretion, invalidate the username and/or password without giving any reason or prior notice and shall not be liable or responsible for any losses suffered by, caused by, arising out of, in connection with or by reason of such request or invalidation.<br style=\"box-sizing: border-box;\" /><br style=\"box-sizing: border-box;\" />You are responsible for maintaining the confidentiality of your user identification, password, account details and related private information. You agree to accept this responsibility and ensure your account and its related details are maintained securely at all times and all necessary steps are taken to prevent misuse of your account. You should inform us immediately if you have any reason to believe that your password has become known to anyone else, or if the password is being, or is likely to be, used in an unauthorized manner. You agree and acknowledge that any use of the Site and related services offered and/or any access to private information, data or communications using your account and password shall be deemed to be either performed by you or authorized by you as the case may be. You agree to be bound by any access of the Site and/or use of any services offered by the Site (whether such access or use are authorized by you or not). You agree that we shall be entitled (but not obliged) to act upon, rely on or hold you solely responsible and liable in respect thereof as if the same were carried out or transmitted by you. You further agree and acknowledge that you shall be bound by and agree to fully indemnify us against any and all losses arising from the use of or access to the Site through your account.</p>'),
(2, 'Refund Policy', 'refundLink', 'lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century'),
(3, 'Promo & Other Term Condition', 'PromoTermCondition', 'lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `boxes_section`
--
ALTER TABLE `boxes_section`
  ADD PRIMARY KEY (`box_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `customer_verify`
--
ALTER TABLE `customer_verify`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `pending_orders`
--
ALTER TABLE `pending_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slide_id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`term_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `boxes_section`
--
ALTER TABLE `boxes_section`
  MODIFY `box_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `coupon_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `customer_verify`
--
ALTER TABLE `customer_verify`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `manufacturer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pending_orders`
--
ALTER TABLE `pending_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slide_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `term_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
