-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2016 at 10:53 AM
-- Server version: 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_broodjes`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp5415_breads`
--

CREATE TABLE `wp5415_breads` (
  `bread_id` bigint(20) NOT NULL,
  `bread_name` varchar(25) NOT NULL,
  `bread_description` varchar(255) NOT NULL,
  `bread_price` decimal(5,0) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp5415_commentmeta`
--

CREATE TABLE `wp5415_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp5415_comments`
--

CREATE TABLE `wp5415_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp5415_comments`
--

INSERT INTO `wp5415_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2016-12-06 09:17:49', '2016-12-06 09:17:49', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp5415_layerslider`
--

CREATE TABLE `wp5415_layerslider` (
  `id` int(10) NOT NULL,
  `author` int(10) NOT NULL DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `data` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_c` int(10) NOT NULL,
  `date_m` int(11) NOT NULL,
  `flag_hidden` tinyint(1) NOT NULL DEFAULT '0',
  `flag_deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp5415_layerslider`
--

INSERT INTO `wp5415_layerslider` (`id`, `author`, `name`, `slug`, `data`, `date_c`, `date_m`, `flag_hidden`, `flag_deleted`) VALUES
(1, 0, 'Enfold - most beautiful theme ever', '', '{"properties":{"title":"Enfold - most beautiful theme ever","width":"100%","height":"470","responsive":"on","forceresponsive":"on","responsiveunder":"1140","sublayercontainer":"1140","firstlayer":"1","animatefirstlayer":"on","twowayslideshow":"on","loops":"0","forceloopnum":"on","autoplayvideos":"on","autopauseslideshow":"auto","youtubepreview":"maxresdefault.jpg","keybnav":"on","touchnav":"on","skin":"fullwidth","backgroundcolor":"","backgroundimage":"","sliderstyle":"","navprevnext":"on","navstartstop":"on","navbuttons":"on","hoverprevnext":"on","hoverbottomnav":"on","thumb_nav":"disabled","thumb_width":"80","thumb_height":"60","thumb_container_width":"60%","thumb_active_opacity":"35","thumb_inactive_opacity":"100","imgpreload":"on","relativeurls":"on","yourlogo":"","yourlogostyle":"","yourlogolink":"","yourlogotarget":"_self","cbinit":"function(element) { }","cbstart":"function(data) { }","cbstop":"function(data) { }","cbpause":"function(data) { }","cbanimstart":"function(data) { }","cbanimstop":"function(data) { }","cbprev":"function(data) { }","cbnext":"function(data) { }"},"layers":[{"properties":{"3d_transitions":"all","2d_transitions":"11,13,23","custom_3d_transitions":"","custom_2d_transitions":"","background":"http:\\/\\/wamp.broodjes.ch\\/wp-content\\/themes\\/eurocave\\/config-layerslider\\/LayerSlider\\/avia-samples\\/slide1_Layer_1.png","thumbnail":"","slidedelay":"7000","new_transitions":"on","slidedirection":"top","timeshift":"0","durationin":"1500","easingin":"easeInOutQuint","delayin":"0","durationout":"1500","easingout":"easeInOutQuint","delayout":"500","layer_link":"","layer_link_target":"_self","id":"","deeplink":""},"sublayers":[{"subtitle":"Imac","type":"img","image":"http:\\/\\/wamp.broodjes.ch\\/wp-content\\/themes\\/eurocave\\/config-layerslider\\/LayerSlider\\/avia-samples\\/slide1_iMac.png","html":"","slidedirection":"right","durationin":"1500","easingin":"easeOutQuint","delayin":"200","rotatein":"0","scalein":"1.0","slideoutdirection":"left","durationout":"1400","easingout":"easeInOutQuint","delayout":"1400","rotateout":"0","scaleout":"1.0","level":"3","showuntil":"0","url":"","target":"_self","styles":"{}","top":"68px","left":"509px","style":"","id":"","class":"","title":"","alt":"","rel":""},{"subtitle":"macbook","type":"img","image":"http:\\/\\/wamp.broodjes.ch\\/wp-content\\/themes\\/eurocave\\/config-layerslider\\/LayerSlider\\/avia-samples\\/slide1_MacBook_Pro.png","html":"","slidedirection":"right","durationin":"1500","easingin":"easeOutQuint","delayin":"400","rotatein":"0","scalein":"1.0","slideoutdirection":"left","durationout":"1200","easingout":"easeInOutQuint","delayout":"1200","rotateout":"0","scaleout":"1.0","level":"6","showuntil":"0","url":"","target":"_self","styles":"{}","top":"191px","left":"791px","style":"","id":"","class":"","title":"","alt":"","rel":""},{"subtitle":"ipad","type":"img","image":"http:\\/\\/wamp.broodjes.ch\\/wp-content\\/themes\\/eurocave\\/config-layerslider\\/LayerSlider\\/avia-samples\\/slide1_Mini_iPad_White.png","html":"","slidedirection":"right","durationin":"1500","easingin":"easeOutQuint","delayin":"600","rotatein":"0","scalein":"1.0","slideoutdirection":"left","durationout":"1000","easingout":"easeInOutQuint","delayout":"800","rotateout":"0","scaleout":"1.0","level":"9","showuntil":"0","url":"","target":"_self","styles":"{}","top":"237px","left":"439px","style":"","id":"","class":"","title":"","alt":"","rel":""},{"subtitle":"iphone","type":"img","image":"http:\\/\\/wamp.broodjes.ch\\/wp-content\\/themes\\/eurocave\\/config-layerslider\\/LayerSlider\\/avia-samples\\/slide1_iPhone_5.png","html":"","slidedirection":"right","durationin":"1500","easingin":"easeOutQuint","delayin":"800","rotatein":"0","scalein":"1.0","slideoutdirection":"left","durationout":"800","easingout":"easeInOutQuint","delayout":"400","rotateout":"0","scaleout":"1.0","level":"12","showuntil":"0","url":"","target":"_self","styles":"{}","top":"316px","left":"581px","style":"","id":"","class":"","title":"","alt":"","rel":""},{"subtitle":"Logo","type":"img","image":"http:\\/\\/wamp.broodjes.ch\\/wp-content\\/themes\\/eurocave\\/config-layerslider\\/LayerSlider\\/avia-samples\\/slide1_Layer_2.png","html":"","slidedirection":"top","durationin":"900","easingin":"easeOutQuint","delayin":"1400","rotatein":"0","scalein":"1.0","slideoutdirection":"top","durationout":"900","easingout":"easeInOutQuint","delayout":"200","rotateout":"0","scaleout":"1.0","level":"-1","showuntil":"0","url":"","target":"_self","styles":"{}","top":"143px","left":"114px","style":"","id":"","class":"","title":"","alt":"","rel":""},{"subtitle":"Text","type":"img","image":"http:\\/\\/wamp.broodjes.ch\\/wp-content\\/themes\\/eurocave\\/config-layerslider\\/LayerSlider\\/avia-samples\\/slide1_Our_Most_Beautiful_Theme_Ever.png","html":"","slidedirection":"bottom","durationin":"900","easingin":"easeInOutQuint","delayin":"1400","rotatein":"0","scalein":"1.0","slideoutdirection":"bottom","durationout":"900","easingout":"easeInOutQuint","delayout":"200","rotateout":"0","scaleout":"1.0","level":"-1","showuntil":"0","url":"","target":"_self","styles":"{}","top":"238px","left":"113px","style":"","id":"","class":"","title":"","alt":"","rel":""}]},{"properties":{"3d_transitions":"","2d_transitions":"","custom_3d_transitions":"","custom_2d_transitions":"","background":"http:\\/\\/wamp.broodjes.ch\\/wp-content\\/themes\\/eurocave\\/config-layerslider\\/LayerSlider\\/avia-samples\\/slide2_Layer_5.png","thumbnail":"","slidedelay":"8000","new_transitions":"on","slidedirection":"right","timeshift":"0","durationin":"1500","easingin":"easeInOutQuint","delayin":"0","durationout":"1500","easingout":"easeInOutQuint","delayout":"0","layer_link":"","layer_link_target":"_self","id":"","deeplink":""},"sublayers":[{"subtitle":"browser bg copy","type":"img","image":"http:\\/\\/wamp.broodjes.ch\\/wp-content\\/themes\\/eurocave\\/config-layerslider\\/LayerSlider\\/avia-samples\\/slide2_sbrowser_bg.png","html":"","slidedirection":"bottom","durationin":"1000","easingin":"easeInOutQuint","delayin":"100","rotatein":"0","scalein":"1.0","slideoutdirection":"right","durationout":"1500","easingout":"easeInOutQuint","delayout":"0","rotateout":"0","scaleout":"1.0","level":"-1","showuntil":"0","url":"","target":"_self","styles":"{}","top":"154px","left":"749px","style":"","id":"","class":"","title":"","alt":"","rel":""},{"subtitle":"browser bg","type":"img","image":"http:\\/\\/wamp.broodjes.ch\\/wp-content\\/themes\\/eurocave\\/config-layerslider\\/LayerSlider\\/avia-samples\\/slide2_sbrowser_bg.png","html":"","slidedirection":"bottom","durationin":"1000","easingin":"easeInOutQuint","delayin":"200","rotatein":"0","scalein":"1.0","slideoutdirection":"right","durationout":"1500","easingout":"easeInOutQuint","delayout":"0","rotateout":"0","scaleout":"1.0","level":"-1","showuntil":"0","url":"","target":"_self","styles":"{}","top":"98px","left":"608px","style":"","id":"","class":"","title":"","alt":"","rel":""},{"subtitle":"browser front","type":"img","image":"http:\\/\\/wamp.broodjes.ch\\/wp-content\\/themes\\/eurocave\\/config-layerslider\\/LayerSlider\\/avia-samples\\/slide2_browser.png","html":"","slidedirection":"bottom","durationin":"1000","easingin":"easeInOutQuint","delayin":"300","rotatein":"0","scalein":"1.0","slideoutdirection":"auto","durationout":"1500","easingout":"easeInOutQuint","delayout":"0","rotateout":"0","scaleout":"1.0","level":"-1","showuntil":"0","url":"","target":"_self","styles":"{}","top":"26px","left":"467px","style":"","id":"","class":"","title":"","alt":"","rel":""},{"subtitle":"fullwidth","type":"img","image":"http:\\/\\/wamp.broodjes.ch\\/wp-content\\/themes\\/eurocave\\/config-layerslider\\/LayerSlider\\/avia-samples\\/slide2_fullwidth_slider.png","html":"","slidedirection":"bottom","durationin":"1000","easingin":"easeInOutQuint","delayin":"1000","rotatein":"0","scalein":"1.0","slideoutdirection":"auto","durationout":"1500","easingout":"easeInOutQuint","delayout":"0","rotateout":"0","scaleout":"1.0","level":"-1","showuntil":"0","url":"","target":"_self","styles":"{}","top":"145px","left":"477px","style":"","id":"","class":"","title":"","alt":"","rel":""},{"subtitle":"1-3","type":"img","image":"http:\\/\\/wamp.broodjes.ch\\/wp-content\\/themes\\/eurocave\\/config-layerslider\\/LayerSlider\\/avia-samples\\/slide2_1_3.png","html":"","slidedirection":"bottom","durationin":"1000","easingin":"easeInOutQuint","delayin":"1250","rotatein":"0","scalein":"1.0","slideoutdirection":"auto","durationout":"1500","easingout":"easeInOutQuint","delayout":"0","rotateout":"0","scaleout":"1.0","level":"-1","showuntil":"0","url":"","target":"_self","styles":"{}","top":"194px","left":"481px","style":"","id":"","class":"","title":"","alt":"","rel":""},{"subtitle":"1-3 copy","type":"img","image":"http:\\/\\/wamp.broodjes.ch\\/wp-content\\/themes\\/eurocave\\/config-layerslider\\/LayerSlider\\/avia-samples\\/slide2_1_3.png","html":"","slidedirection":"bottom","durationin":"1000","easingin":"easeInOutQuint","delayin":"1500","rotatein":"0","scalein":"1.0","slideoutdirection":"auto","durationout":"1500","easingout":"easeInOutQuint","delayout":"0","rotateout":"0","scaleout":"1.0","level":"-1","showuntil":"0","url":"","target":"_self","styles":"{}","top":"193px","left":"675px","style":"","id":"","class":"","title":"","alt":"","rel":""},{"subtitle":"1-3 copy","type":"img","image":"http:\\/\\/wamp.broodjes.ch\\/wp-content\\/themes\\/eurocave\\/config-layerslider\\/LayerSlider\\/avia-samples\\/slide2_1_3.png","html":"","slidedirection":"bottom","durationin":"1000","easingin":"easeInOutQuint","delayin":"1750","rotatein":"0","scalein":"1.0","slideoutdirection":"auto","durationout":"1500","easingout":"easeInOutQuint","delayout":"0","rotateout":"0","scaleout":"1.0","level":"-1","showuntil":"0","url":"","target":"_self","styles":"{}","top":"192px","left":"872px","style":"","id":"","class":"","title":"","alt":"","rel":""},{"subtitle":"iconbox","type":"img","image":"http:\\/\\/wamp.broodjes.ch\\/wp-content\\/themes\\/eurocave\\/config-layerslider\\/LayerSlider\\/avia-samples\\/slide2_iconbox.png","html":"","slidedirection":"bottom","durationin":"1000","easingin":"easeInOutQuint","delayin":"2000","rotatein":"0","scalein":"1.0","slideoutdirection":"auto","durationout":"1500","easingout":"easeInOutQuint","delayout":"0","rotateout":"0","scaleout":"1.0","level":"-1","showuntil":"0","url":"","target":"_self","styles":"{}","top":"214px","left":"488px","style":"","id":"","class":"","title":"","alt":"","rel":""},{"subtitle":"iconbox copy","type":"img","image":"http:\\/\\/wamp.broodjes.ch\\/wp-content\\/themes\\/eurocave\\/config-layerslider\\/LayerSlider\\/avia-samples\\/slide2_iconbox.png","html":"","slidedirection":"bottom","durationin":"1000","easingin":"easeInOutQuint","delayin":"2250","rotatein":"0","scalein":"1.0","slideoutdirection":"auto","durationout":"1500","easingout":"easeInOutQuint","delayout":"0","rotateout":"0","scaleout":"1.0","level":"-1","showuntil":"0","url":"","target":"_self","styles":"{}","top":"214px","left":"683px","style":"","id":"","class":"","title":"","alt":"","rel":""},{"subtitle":"iconbox copy","type":"img","image":"http:\\/\\/wamp.broodjes.ch\\/wp-content\\/themes\\/eurocave\\/config-layerslider\\/LayerSlider\\/avia-samples\\/slide2_iconbox.png","html":"","slidedirection":"bottom","durationin":"1000","easingin":"easeInOutQuint","delayin":"2500","rotatein":"0","scalein":"1.0","slideoutdirection":"auto","durationout":"1500","easingout":"easeInOutQuint","delayout":"0","rotateout":"0","scaleout":"1.0","level":"-1","showuntil":"0","url":"","target":"_self","styles":"{}","top":"214px","left":"879px","style":"","id":"","class":"","title":"","alt":"","rel":""},{"subtitle":"1-2","type":"img","image":"http:\\/\\/wamp.broodjes.ch\\/wp-content\\/themes\\/eurocave\\/config-layerslider\\/LayerSlider\\/avia-samples\\/slide2_1_2.png","html":"","slidedirection":"bottom","durationin":"1000","easingin":"easeInOutQuint","delayin":"2750","rotatein":"0","scalein":"1.0","slideoutdirection":"auto","durationout":"1500","easingout":"easeInOutQuint","delayout":"0","rotateout":"0","scaleout":"1.0","level":"-1","showuntil":"0","url":"","target":"_self","styles":"{}","top":"294px","left":"483px","style":"","id":"","class":"","title":"","alt":"","rel":""},{"subtitle":"1-2 copy","type":"img","image":"http:\\/\\/wamp.broodjes.ch\\/wp-content\\/themes\\/eurocave\\/config-layerslider\\/LayerSlider\\/avia-samples\\/slide2_1_2.png","html":"","slidedirection":"bottom","durationin":"1000","easingin":"easeInOutQuint","delayin":"3000","rotatein":"0","scalein":"1.0","slideoutdirection":"auto","durationout":"1500","easingout":"easeInOutQuint","delayout":"0","rotateout":"0","scaleout":"1.0","level":"-1","showuntil":"0","url":"","target":"_self","styles":"{}","top":"294px","left":"775px","style":"","id":"","class":"","title":"","alt":"","rel":""},{"subtitle":"Text","type":"img","image":"http:\\/\\/wamp.broodjes.ch\\/wp-content\\/themes\\/eurocave\\/config-layerslider\\/LayerSlider\\/avia-samples\\/slide2_textblock.png","html":"","slidedirection":"bottom","durationin":"1000","easingin":"easeInOutQuint","delayin":"3250","rotatein":"0","scalein":"1.0","slideoutdirection":"auto","durationout":"1500","easingout":"easeInOutQuint","delayout":"0","rotateout":"0","scaleout":"1.0","level":"-1","showuntil":"0","url":"","target":"_self","styles":"{}","top":"315px","left":"491px","style":"","id":"","class":"","title":"","alt":"","rel":""},{"subtitle":"Gallery","type":"img","image":"http:\\/\\/wamp.broodjes.ch\\/wp-content\\/themes\\/eurocave\\/config-layerslider\\/LayerSlider\\/avia-samples\\/slide2_sgallery.png","html":"","slidedirection":"bottom","durationin":"1000","easingin":"easeInOutQuint","delayin":"3500","rotatein":"0","scalein":"1.0","slideoutdirection":"auto","durationout":"1500","easingout":"easeInOutQuint","delayout":"0","rotateout":"0","scaleout":"1.0","level":"-1","showuntil":"0","url":"","target":"_self","styles":"{}","top":"382px","left":"492px","style":"","id":"","class":"","title":"","alt":"","rel":""},{"subtitle":"Gallery copy","type":"img","image":"http:\\/\\/wamp.broodjes.ch\\/wp-content\\/themes\\/eurocave\\/config-layerslider\\/LayerSlider\\/avia-samples\\/slide2_sgallery.png","html":"","slidedirection":"bottom","durationin":"1000","easingin":"easeInOutQuint","delayin":"3750","rotatein":"0","scalein":"1.0","slideoutdirection":"auto","durationout":"1500","easingout":"easeInOutQuint","delayout":"0","rotateout":"0","scaleout":"1.0","level":"-1","showuntil":"0","url":"","target":"_self","styles":"{}","top":"412px","left":"492px","style":"","id":"","class":"","title":"","alt":"","rel":""},{"subtitle":"Gallery copy","type":"img","image":"http:\\/\\/wamp.broodjes.ch\\/wp-content\\/themes\\/eurocave\\/config-layerslider\\/LayerSlider\\/avia-samples\\/slide2_sgallery.png","html":"","slidedirection":"bottom","durationin":"1000","easingin":"easeInOutQuint","delayin":"4000","rotatein":"0","scalein":"1.0","slideoutdirection":"auto","durationout":"1500","easingout":"easeInOutQuint","delayout":"0","rotateout":"0","scaleout":"1.0","level":"-1","showuntil":"0","url":"","target":"_self","styles":"{}","top":"316px","left":"784px","style":"","id":"","class":"","title":"","alt":"","rel":""},{"subtitle":"Text copy","type":"img","image":"http:\\/\\/wamp.broodjes.ch\\/wp-content\\/themes\\/eurocave\\/config-layerslider\\/LayerSlider\\/avia-samples\\/slide2_textblock.png","html":"","slidedirection":"bottom","durationin":"1000","easingin":"easeInOutQuint","delayin":"4250","rotatein":"0","scalein":"1.0","slideoutdirection":"auto","durationout":"1500","easingout":"easeInOutQuint","delayout":"0","rotateout":"0","scaleout":"1.0","level":"-1","showuntil":"0","url":"","target":"_self","styles":"{}","top":"346px","left":"783px","style":"","id":"","class":"","title":"","alt":"","rel":""},{"subtitle":"flexible","type":"h2","image":"","html":"Super Flexible Layout Builder","slidedirection":"left","durationin":"1000","easingin":"easeInOutQuint","delayin":"1500","rotatein":"0","scalein":"1.0","slideoutdirection":"top","durationout":"1500","easingout":"easeInOutQuint","delayout":"0","rotateout":"0","scaleout":"1.0","level":"-1","showuntil":"0","url":"","target":"_self","styles":"{\\\\\\"padding-top\\\\\\":\\\\\\"10px\\\\\\",\\\\\\"padding-right\\\\\\":\\\\\\"43px\\\\\\",\\\\\\"padding-bottom\\\\\\":\\\\\\"10px\\\\\\",\\\\\\"padding-left\\\\\\":\\\\\\"10px\\\\\\",\\\\\\"font-size\\\\\\":\\\\\\"25px\\\\\\",\\\\\\"color\\\\\\":\\\\\\"#ffffff\\\\\\",\\\\\\"background\\\\\\":\\\\\\"black\\\\\\"}","top":"135px","left":"90px","style":"box-shadow: 0px 4px 10px -5px black; text-shadow: none; font-weight: normal; opacity: .65; width:320px; text-align:right;","id":"","class":"","title":"","alt":"","rel":""},{"subtitle":"Text","type":"span","image":"","html":"Tons of Elements","slidedirection":"left","durationin":"1000","easingin":"easeInOutQuint","delayin":"1600","rotatein":"0","scalein":"1.0","slideoutdirection":"left","durationout":"1500","easingout":"easeInOutQuint","delayout":"0","rotateout":"0","scaleout":"1.0","level":"-1","showuntil":"0","url":"","target":"_self","styles":"{\\\\\\"padding-top\\\\\\":\\\\\\"10px\\\\\\",\\\\\\"padding-right\\\\\\":\\\\\\"10px\\\\\\",\\\\\\"padding-bottom\\\\\\":\\\\\\"10px\\\\\\",\\\\\\"padding-left\\\\\\":\\\\\\"10px\\\\\\",\\\\\\"font-size\\\\\\":\\\\\\"15px\\\\\\",\\\\\\"color\\\\\\":\\\\\\"#ffffff\\\\\\",\\\\\\"background\\\\\\":\\\\\\"black\\\\\\"}","top":"188px","left":"243px","style":"box-shadow: 0px 4px 10px -5px black; text-shadow: none; font-weight: normal; opacity: .65; width:200px; text-align:right;","id":"","class":"","title":"","alt":"","rel":""},{"subtitle":"Text","type":"span","image":"","html":"Real Drag and Drop","slidedirection":"left","durationin":"1000","easingin":"easeInOutQuint","delayin":"1700","rotatein":"0","scalein":"1.0","slideoutdirection":"left","durationout":"1500","easingout":"easeInOutQuint","delayout":"0","rotateout":"0","scaleout":"1.0","level":"-1","showuntil":"0","url":"","target":"_self","styles":"{\\\\\\"padding-top\\\\\\":\\\\\\"10px\\\\\\",\\\\\\"padding-right\\\\\\":\\\\\\"10px\\\\\\",\\\\\\"padding-bottom\\\\\\":\\\\\\"10px\\\\\\",\\\\\\"padding-left\\\\\\":\\\\\\"10px\\\\\\",\\\\\\"font-size\\\\\\":\\\\\\"15px\\\\\\",\\\\\\"color\\\\\\":\\\\\\"#ffffff\\\\\\",\\\\\\"background\\\\\\":\\\\\\"black\\\\\\"}","top":"228px","left":"243px","style":"box-shadow: 0px 4px 10px -5px black; text-shadow: none; font-weight: normal; opacity: .65; width:200px; text-align:right;","id":"","class":"","title":"","alt":"","rel":""},{"subtitle":"Text copy","type":"span","image":"","html":"Fullscreen Option","slidedirection":"left","durationin":"1000","easingin":"easeInOutQuint","delayin":"1800","rotatein":"0","scalein":"1.0","slideoutdirection":"left","durationout":"1500","easingout":"easeInOutQuint","delayout":"0","rotateout":"0","scaleout":"1.0","level":"-1","showuntil":"0","url":"","target":"_self","styles":"{\\\\\\"padding-top\\\\\\":\\\\\\"10px\\\\\\",\\\\\\"padding-right\\\\\\":\\\\\\"10px\\\\\\",\\\\\\"padding-bottom\\\\\\":\\\\\\"10px\\\\\\",\\\\\\"padding-left\\\\\\":\\\\\\"10px\\\\\\",\\\\\\"font-size\\\\\\":\\\\\\"15px\\\\\\",\\\\\\"color\\\\\\":\\\\\\"#ffffff\\\\\\",\\\\\\"background\\\\\\":\\\\\\"black\\\\\\"}","top":"269px","left":"243px","style":"box-shadow: 0px 4px 10px -5px black; text-shadow: none; font-weight: normal; opacity: .65; width:200px; text-align:right;","id":"","class":"","title":"","alt":"","rel":""},{"subtitle":"Text","type":"span","image":"","html":"Undo\\/Redo functionallity","slidedirection":"left","durationin":"1000","easingin":"easeInOutQuint","delayin":"1900","rotatein":"0","scalein":"1.0","slideoutdirection":"bottom","durationout":"1500","easingout":"easeInOutQuint","delayout":"0","rotateout":"0","scaleout":"1.0","level":"-1","showuntil":"0","url":"","target":"_self","styles":"{\\\\\\"padding-top\\\\\\":\\\\\\"10px\\\\\\",\\\\\\"padding-right\\\\\\":\\\\\\"10px\\\\\\",\\\\\\"padding-bottom\\\\\\":\\\\\\"10px\\\\\\",\\\\\\"padding-left\\\\\\":\\\\\\"10px\\\\\\",\\\\\\"font-size\\\\\\":\\\\\\"15px\\\\\\",\\\\\\"color\\\\\\":\\\\\\"#ffffff\\\\\\",\\\\\\"background\\\\\\":\\\\\\"black\\\\\\"}","top":"309px","left":"243px","style":"box-shadow: 0px 4px 10px -5px black; text-shadow: none; font-weight: normal; opacity: .65; width:200px; text-align:right;","id":"","class":"","title":"","alt":"","rel":""}]}]}', 1481016146, 1481016146, 0, 0),
(2, 0, 'Why Enfold - Small Header', '', '{"properties":{"title":"Why Enfold - Small Header","width":"100%","height":"150","responsive":"on","forceresponsive":"on","responsiveunder":"1140","sublayercontainer":"1140","firstlayer":"1","animatefirstlayer":"on","twowayslideshow":"on","loops":"1","forceloopnum":"on","autoplayvideos":"on","autopauseslideshow":"auto","youtubepreview":"maxresdefault.jpg","skin":"fullwidth","backgroundcolor":"#aac98e","backgroundimage":"","sliderstyle":"","thumb_nav":"disabled","thumb_width":"100","thumb_height":"60","thumb_container_width":"60%","thumb_active_opacity":"35","thumb_inactive_opacity":"100","imgpreload":"on","yourlogo":"","yourlogostyle":"left: 10px; top: 10px;","yourlogolink":"","yourlogotarget":"_self","cbinit":"function(element) { }","cbstart":"function(data) { }","cbstop":"function(data) { }","cbpause":"function(data) { }","cbanimstart":"function(data) { }","cbanimstop":"function(data) { }","cbprev":"function(data) { }","cbnext":"function(data) { }"},"layers":[{"properties":{"3d_transitions":"","2d_transitions":"","custom_3d_transitions":"","custom_2d_transitions":"","background":"http:\\/\\/wamp.broodjes.ch\\/wp-content\\/themes\\/eurocave\\/config-layerslider\\/LayerSlider\\/avia-samples\\/slide3_Layer_1.png","thumbnail":"","slidedelay":"4000","new_transitions":"on","slidedirection":"right","timeshift":"0","durationin":"1500","easingin":"easeInOutQuint","delayin":"0","durationout":"1500","easingout":"easeInOutQuint","delayout":"0","layer_link":"","layer_link_target":"_self","id":"","deeplink":""},"sublayers":[{"subtitle":"Layer #1 copy","type":"img","image":"http:\\/\\/wamp.broodjes.ch\\/wp-content\\/themes\\/eurocave\\/config-layerslider\\/LayerSlider\\/avia-samples\\/slide3_l16.png","html":"","slidedirection":"bottom","durationin":"1200","easingin":"easeInOutQuint","delayin":"150","rotatein":"0","scalein":"1.0","slideoutdirection":"bottom","durationout":"1500","easingout":"easeInOutQuint","delayout":"0","rotateout":"0","scaleout":"1.0","level":"-1","showuntil":"0","url":"","target":"_self","styles":"{}","top":"-18px","left":"800px","style":"","id":"","class":"","title":"","alt":"","rel":""},{"subtitle":"Layer #1 copy","type":"img","image":"http:\\/\\/wamp.broodjes.ch\\/wp-content\\/themes\\/eurocave\\/config-layerslider\\/LayerSlider\\/avia-samples\\/slide3_l13.png","html":"","slidedirection":"top","durationin":"1300","easingin":"easeInOutQuint","delayin":"200","rotatein":"0","scalein":"1.0","slideoutdirection":"top","durationout":"1500","easingout":"easeInOutQuint","delayout":"0","rotateout":"0","scaleout":"1.0","level":"-1","showuntil":"0","url":"","target":"_self","styles":"{}","top":"-156px","left":"842px","style":"","id":"","class":"","title":"","alt":"","rel":""},{"subtitle":"Layer #1 copy copy","type":"img","image":"http:\\/\\/wamp.broodjes.ch\\/wp-content\\/themes\\/eurocave\\/config-layerslider\\/LayerSlider\\/avia-samples\\/slide3_l17.png","html":"","slidedirection":"top","durationin":"1800","easingin":"easeInOutQuint","delayin":"350","rotatein":"0","scalein":"1.0","slideoutdirection":"top","durationout":"1500","easingout":"easeInOutQuint","delayout":"0","rotateout":"0","scaleout":"1.0","level":"-1","showuntil":"0","url":"","target":"_self","styles":"{}","top":"-279px","left":"951px","style":"","id":"","class":"","title":"","alt":"","rel":""},{"subtitle":"Layer #1","type":"img","image":"http:\\/\\/wamp.broodjes.ch\\/wp-content\\/themes\\/eurocave\\/config-layerslider\\/LayerSlider\\/avia-samples\\/slide3_l13.png","html":"","slidedirection":"top","durationin":"1500","easingin":"easeInOutQuint","delayin":"450","rotatein":"0","scalein":"1.0","slideoutdirection":"top","durationout":"1500","easingout":"easeInOutQuint","delayout":"0","rotateout":"0","scaleout":"1.0","level":"-1","showuntil":"0","url":"","target":"_self","styles":"{}","top":"-156px","left":"51px","style":"","id":"","class":"","title":"","alt":"","rel":""},{"subtitle":"Layer #1 copy copy","type":"img","image":"http:\\/\\/wamp.broodjes.ch\\/wp-content\\/themes\\/eurocave\\/config-layerslider\\/LayerSlider\\/avia-samples\\/slide3_l16.png","html":"","slidedirection":"bottom","durationin":"2500","easingin":"easeInOutQuint","delayin":"600","rotatein":"0","scalein":"1.0","slideoutdirection":"bottom","durationout":"1500","easingout":"easeInOutQuint","delayout":"0","rotateout":"0","scaleout":"1.0","level":"-1","showuntil":"0","url":"","target":"_self","styles":"{}","top":"-22px","left":"-107px","style":"","id":"","class":"","title":"","alt":"","rel":""},{"subtitle":"Layer #6","type":"h2","image":"","html":"Why you should choose","slidedirection":"left","durationin":"1500","easingin":"easeInOutQuint","delayin":"650","rotatein":"0","scalein":"1.0","slideoutdirection":"auto","durationout":"1500","easingout":"easeInOutQuint","delayout":"0","rotateout":"0","scaleout":"1.0","level":"-1","showuntil":"0","url":"","target":"_self","styles":"{\\\\\\"font-size\\\\\\":\\\\\\"40px\\\\\\",\\\\\\"color\\\\\\":\\\\\\"white\\\\\\"}","top":"68px","left":"214px","style":"","id":"","class":"","title":"","alt":"","rel":""},{"subtitle":"Layer #7","type":"img","image":"http:\\/\\/wamp.broodjes.ch\\/wp-content\\/themes\\/eurocave\\/config-layerslider\\/LayerSlider\\/avia-samples\\/slide1_Layer_2.png","html":"","slidedirection":"bottom","durationin":"1000","easingin":"easeInOutQuint","delayin":"800","rotatein":"0","scalein":"1.0","slideoutdirection":"auto","durationout":"1500","easingout":"easeInOutQuint","delayout":"0","rotateout":"0","scaleout":"1.0","level":"-1","showuntil":"0","url":"","target":"_self","styles":"{}","top":"20px","left":"684px","style":"","id":"","class":"","title":"","alt":"","rel":""}]}]}', 1481016146, 1481016146, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp5415_links`
--

CREATE TABLE `wp5415_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp5415_options`
--

CREATE TABLE `wp5415_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp5415_options`
--

INSERT INTO `wp5415_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://wamp.broodjes.ch', 'yes'),
(2, 'home', 'http://wamp.broodjes.ch', 'yes'),
(3, 'blogname', 'Broodjes', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'rickdaalhuizen@protonmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:112:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:42:"portfolio-item/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:52:"portfolio-item/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:72:"portfolio-item/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:67:"portfolio-item/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:67:"portfolio-item/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:48:"portfolio-item/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:31:"portfolio-item/([^/]+)/embed/?$";s:42:"index.php?portfolio=$matches[1]&embed=true";s:35:"portfolio-item/([^/]+)/trackback/?$";s:36:"index.php?portfolio=$matches[1]&tb=1";s:43:"portfolio-item/([^/]+)/page/?([0-9]{1,})/?$";s:49:"index.php?portfolio=$matches[1]&paged=$matches[2]";s:50:"portfolio-item/([^/]+)/comment-page-([0-9]{1,})/?$";s:49:"index.php?portfolio=$matches[1]&cpage=$matches[2]";s:39:"portfolio-item/([^/]+)(?:/([0-9]+))?/?$";s:48:"index.php?portfolio=$matches[1]&page=$matches[2]";s:31:"portfolio-item/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:41:"portfolio-item/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:61:"portfolio-item/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:"portfolio-item/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:"portfolio-item/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:37:"portfolio-item/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:58:"portfolio_entries/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:56:"index.php?portfolio_entries=$matches[1]&feed=$matches[2]";s:53:"portfolio_entries/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:56:"index.php?portfolio_entries=$matches[1]&feed=$matches[2]";s:34:"portfolio_entries/([^/]+)/embed/?$";s:50:"index.php?portfolio_entries=$matches[1]&embed=true";s:46:"portfolio_entries/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?portfolio_entries=$matches[1]&paged=$matches[2]";s:28:"portfolio_entries/([^/]+)/?$";s:39:"index.php?portfolio_entries=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:21:"broodjes/broodjes.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'eurocave', 'yes'),
(41, 'stylesheet', 'eurocave-child', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '80', 'yes'),
(59, 'thumbnail_size_h', '80', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1030', 'yes'),
(65, 'large_size_h', '1030', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:2;a:3:{s:5:"title";s:8:"Inloggen";s:4:"text";s:21:"[broodjes_user_login]";s:6:"filter";b:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:120:"C:/wamp/www/wordpress-4.5.2/broodjes/wordpress/wp-content/themes/eurocave/config-layerslider/LayerSlider/layerslider.php";s:29:"layerslider_uninstall_scripts";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '37965', 'yes'),
(92, 'wp5415_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_meta', 'a:2:{i:4;a:1:{s:5:"title";s:3:"mhg";}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'sidebars_widgets', 'a:9:{s:19:"wp_inactive_widgets";a:0:{}s:13:"av_everywhere";a:2:{i:0;s:6:"text-2";i:1;s:6:"meta-4";}s:7:"av_blog";a:0:{}s:8:"av_pages";a:0:{}s:11:"av_footer_1";a:0:{}s:11:"av_footer_2";a:0:{}s:11:"av_footer_3";a:0:{}s:11:"av_footer_4";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(99, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'cron', 'a:3:{i:1481318270;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1481361484;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(109, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1481275578;s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:0:{}}', 'no'),
(224, '_site_transient_timeout_theme_roots', '1481282011', 'no'),
(225, '_site_transient_theme_roots', 'a:2:{s:14:"eurocave-child";s:7:"/themes";s:8:"eurocave";s:7:"/themes";}', 'no'),
(112, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1481280212;s:7:"checked";a:2:{s:14:"eurocave-child";s:3:"1.0";s:8:"eurocave";s:3:"3.8";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(113, '_site_transient_timeout_browser_3a179042b5d9d18726343f8efdf53113', '1481620684', 'no'),
(114, '_site_transient_browser_3a179042b5d9d18726343f8efdf53113', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"54.0.2840.99";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(129, '_transient_timeout_plugin_slugs', '1481137391', 'no'),
(130, '_transient_plugin_slugs', 'a:1:{i:0;s:21:"broodjes/broodjes.php";}', 'no'),
(168, 'recently_activated', 'a:0:{}', 'yes'),
(133, 'theme_mods_twentysixteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1481016142;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(134, 'current_theme', 'Eurocave', 'yes'),
(135, 'theme_mods_eurocave-child', 'a:2:{i:0;b:0;s:18:"custom_css_post_id";i:-1;}', 'yes'),
(136, 'theme_switched', '', 'yes'),
(137, 'widget_newsbox', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(138, 'widget_portfoliobox', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(139, 'widget_avia_socialcount', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(140, 'widget_avia_combo_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(141, 'widget_avia_partner_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(142, 'widget_avia_google_maps', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(143, 'widget_avia_fb_likebox', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(144, 'widget_avia-instagram-feed', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(145, 'widget_avia_mailchimp_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(146, 'ls-plugin-version', '5.6.8', 'yes'),
(147, 'ls-db-version', '5.0.0', 'yes'),
(148, 'ls-installed', '1', 'yes'),
(149, 'ls-google-fonts', 'a:0:{}', 'yes'),
(150, 'ls-date-installed', '1481016145', 'yes'),
(167, 'eurocave_woo_settings_enabled', '1', 'yes'),
(152, 'eurocave_layerslider_activated', '1', 'yes'),
(153, 'eurocave_initial_version', '3.8', 'yes'),
(154, 'eurocave_fixed_random', '6', 'yes'),
(155, 'shop_catalog_image_size', 'a:3:{s:5:"width";i:450;s:6:"height";i:450;s:4:"crop";b:1;}', 'yes'),
(156, 'shop_single_image_size', 'a:3:{s:5:"width";i:450;s:6:"height";i:999;s:4:"crop";b:0;}', 'yes'),
(157, 'shop_thumbnail_image_size', 'a:3:{s:5:"width";i:120;s:6:"height";i:120;s:4:"crop";b:1;}', 'yes'),
(158, 'avia_woocommerce_column_count', '3', 'yes'),
(159, 'avia_woocommerce_product_count', '15', 'yes'),
(160, 'woocommerce_single_image_crop', 'no', 'yes'),
(161, 'avia_permalink_settings', 'a:0:{}', 'yes'),
(162, 'avia_options_eurocave', 'a:1:{s:4:"avia";a:159:{s:9:"frontpage";s:0:"";s:9:"undefined";s:25:"menu_display::burger_menu";s:8:"blogpage";s:0:"";s:4:"logo";s:0:"";s:7:"favicon";s:0:"";s:9:"preloader";s:8:"disabled";s:21:"preloader_transitions";s:21:"preloader_transitions";s:14:"preloader_logo";s:0:"";s:15:"lightbox_active";s:15:"lightbox_active";s:8:"lock_alb";s:8:"disabled";s:19:"lock_alb_for_admins";s:8:"disabled";s:6:"markup";s:0:"";s:16:"color-body_style";s:9:"stretched";s:17:"color-frame_width";s:2:"20";s:15:"header_position";s:10:"header_top";s:20:"layout_align_content";s:20:"content_align_center";s:18:"sidebarmenu_sticky";s:18:"conditional_sticky";s:19:"sidebarmenu_widgets";s:0:"";s:18:"sidebarmenu_social";s:8:"disabled";s:17:"responsive_active";s:17:"responsive_active";s:15:"responsive_size";s:6:"1310px";s:13:"content_width";s:2:"73";s:14:"combined_width";s:3:"100";s:12:"color_scheme";s:11:"Bright Blue";s:24:"colorset-header_color-bg";s:7:"#ffffff";s:25:"colorset-header_color-bg2";s:7:"#f8f8f8";s:29:"colorset-header_color-primary";s:7:"#109bc5";s:31:"colorset-header_color-secondary";s:7:"#88bbc8";s:27:"colorset-header_color-color";s:7:"#333333";s:26:"colorset-header_color-meta";s:7:"#808080";s:29:"colorset-header_color-heading";s:7:"#000000";s:28:"colorset-header_color-border";s:7:"#e1e1e1";s:25:"colorset-header_color-img";s:0:"";s:33:"colorset-header_color-customimage";s:0:"";s:25:"colorset-header_color-pos";s:13:"center center";s:28:"colorset-header_color-repeat";s:6:"repeat";s:28:"colorset-header_color-attach";s:6:"scroll";s:22:"colorset-main_color-bg";s:7:"#ffffff";s:23:"colorset-main_color-bg2";s:7:"#f8f8f8";s:27:"colorset-main_color-primary";s:7:"#109bc5";s:29:"colorset-main_color-secondary";s:7:"#88bbc8";s:25:"colorset-main_color-color";s:7:"#666666";s:24:"colorset-main_color-meta";s:7:"#919191";s:27:"colorset-main_color-heading";s:7:"#222222";s:26:"colorset-main_color-border";s:7:"#e1e1e1";s:23:"colorset-main_color-img";s:0:"";s:31:"colorset-main_color-customimage";s:0:"";s:23:"colorset-main_color-pos";s:13:"center center";s:26:"colorset-main_color-repeat";s:6:"repeat";s:26:"colorset-main_color-attach";s:6:"scroll";s:27:"colorset-alternate_color-bg";s:7:"#109bc5";s:28:"colorset-alternate_color-bg2";s:7:"#0f81a1";s:32:"colorset-alternate_color-primary";s:7:"#ffffff";s:34:"colorset-alternate_color-secondary";s:7:"#bde5f0";s:30:"colorset-alternate_color-color";s:7:"#ffffff";s:29:"colorset-alternate_color-meta";s:7:"#bde5f0";s:32:"colorset-alternate_color-heading";s:7:"#ffffff";s:31:"colorset-alternate_color-border";s:7:"#83c7dc";s:28:"colorset-alternate_color-img";s:0:"";s:36:"colorset-alternate_color-customimage";s:0:"";s:28:"colorset-alternate_color-pos";s:13:"center center";s:31:"colorset-alternate_color-repeat";s:6:"repeat";s:31:"colorset-alternate_color-attach";s:6:"scroll";s:24:"colorset-footer_color-bg";s:7:"#109bc5";s:25:"colorset-footer_color-bg2";s:7:"#36a8c7";s:29:"colorset-footer_color-primary";s:7:"#ffffff";s:31:"colorset-footer_color-secondary";s:7:"#bde5f0";s:27:"colorset-footer_color-color";s:7:"#ffffff";s:26:"colorset-footer_color-meta";s:7:"#bde5f0";s:29:"colorset-footer_color-heading";s:7:"#ffffff";s:28:"colorset-footer_color-border";s:7:"#0f81a1";s:25:"colorset-footer_color-img";s:0:"";s:33:"colorset-footer_color-customimage";s:0:"";s:25:"colorset-footer_color-pos";s:13:"center center";s:28:"colorset-footer_color-repeat";s:6:"repeat";s:28:"colorset-footer_color-attach";s:6:"scroll";s:24:"colorset-socket_color-bg";s:7:"#11abd6";s:25:"colorset-socket_color-bg2";s:7:"#109bc5";s:29:"colorset-socket_color-primary";s:7:"#ffffff";s:31:"colorset-socket_color-secondary";s:7:"#bde5f0";s:27:"colorset-socket_color-color";s:7:"#ffffff";s:26:"colorset-socket_color-meta";s:7:"#bde5f0";s:29:"colorset-socket_color-heading";s:7:"#ffffff";s:28:"colorset-socket_color-border";s:7:"#11abd6";s:25:"colorset-socket_color-img";s:0:"";s:33:"colorset-socket_color-customimage";s:0:"";s:25:"colorset-socket_color-pos";s:13:"center center";s:28:"colorset-socket_color-repeat";s:6:"repeat";s:28:"colorset-socket_color-attach";s:6:"scroll";s:16:"color-body_color";s:7:"#222222";s:14:"color-body_img";s:0:"";s:22:"color-body_customimage";s:0:"";s:14:"color-body_pos";s:13:"center center";s:17:"color-body_repeat";s:6:"repeat";s:17:"color-body_attach";s:6:"scroll";s:14:"google_webfont";s:9:"Quicksand";s:12:"default_font";s:17:"Open Sans:400,600";s:23:"color-default_font_size";s:0:"";s:9:"quick_css";s:0:"";s:13:"header_layout";s:36:"logo_left main_nav_header menu_right";s:11:"header_size";s:4:"slim";s:18:"header_custom_size";s:3:"150";s:12:"menu_display";s:0:"";s:18:"header_menu_border";s:0:"";s:12:"header_style";s:0:"";s:16:"header_title_bar";s:20:"title_bar_breadcrumb";s:13:"header_sticky";s:13:"header_sticky";s:16:"header_shrinking";s:16:"header_shrinking";s:18:"header_unstick_top";s:8:"disabled";s:14:"header_stretch";s:8:"disabled";s:17:"header_searchicon";s:17:"header_searchicon";s:13:"header_social";s:0:"";s:21:"header_secondary_menu";s:0:"";s:19:"header_phone_active";s:0:"";s:5:"phone";s:0:"";s:23:"header_replacement_logo";s:0:"";s:23:"header_replacement_menu";s:0:"";s:24:"header_mobile_activation";s:17:"mobile_menu_phone";s:22:"header_mobile_behavior";s:8:"disabled";s:14:"archive_layout";s:13:"sidebar_right";s:11:"blog_layout";s:13:"sidebar_right";s:13:"single_layout";s:13:"sidebar_right";s:11:"page_layout";s:13:"sidebar_right";s:19:"smartphones_sidebar";s:8:"disabled";s:16:"page_nesting_nav";s:16:"page_nesting_nav";s:15:"sidebar_styling";s:0:"";s:22:"display_widgets_socket";s:3:"all";s:14:"footer_columns";s:1:"4";s:9:"copyright";s:0:"";s:13:"footer_social";s:8:"disabled";s:17:"blog_global_style";s:0:"";s:10:"blog_style";s:12:"single-small";s:17:"single_post_style";s:10:"single-big";s:27:"single_post_related_entries";s:24:"av-related-style-tooltip";s:16:"blog-meta-author";s:16:"blog-meta-author";s:18:"blog-meta-comments";s:18:"blog-meta-comments";s:18:"blog-meta-category";s:18:"blog-meta-category";s:14:"blog-meta-date";s:14:"blog-meta-date";s:19:"blog-meta-html-info";s:19:"blog-meta-html-info";s:13:"blog-meta-tag";s:13:"blog-meta-tag";s:14:"share_facebook";s:14:"share_facebook";s:13:"share_twitter";s:13:"share_twitter";s:15:"share_pinterest";s:15:"share_pinterest";s:11:"share_gplus";s:11:"share_gplus";s:12:"share_reddit";s:12:"share_reddit";s:14:"share_linkedin";s:14:"share_linkedin";s:12:"share_tumblr";s:12:"share_tumblr";s:8:"share_vk";s:8:"share_vk";s:10:"share_mail";s:10:"share_mail";s:12:"social_icons";a:2:{i:0;a:2:{s:11:"social_icon";s:7:"twitter";s:16:"social_icon_link";s:25:"http://twitter.com/kriesi";}i:1;a:2:{s:11:"social_icon";s:8:"dribbble";s:16:"social_icon_link";s:26:"http://dribbble.com/kriesi";}}s:13:"mailchimp_api";s:0:"";s:9:"analytics";s:0:"";s:8:"gmap_api";s:0:"";s:17:"avia-nonce-import";s:10:"f395f476b2";s:24:"avia-nonce-import-parent";s:10:"3e66dbd15b";s:18:"config_file_upload";s:0:"";s:15:"iconfont_upload";s:0:"";s:16:"updates_username";s:0:"";s:15:"updates_api_key";s:0:"";}}', 'yes'),
(226, 'avia_rewrite_flush', '1', 'yes'),
(163, 'Enfold_version', '3.8', 'yes'),
(164, 'avia_stylesheet_dir_writableeurocave', 'true', 'yes'),
(165, 'avia_stylesheet_existseurocave', 'true', 'yes'),
(166, 'avia_stylesheet_dynamic_versioneurocave', '584a8ae380796', 'yes'),
(169, 'layerslider_update_info', 'O:8:"stdClass":2:{s:15:"_latest_version";s:5:"6.0.5";s:7:"checked";i:1481105214;}', 'yes'),
(202, 'db_upgraded', '', 'yes'),
(204, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:57:"https://downloads.wordpress.org/release/wordpress-4.7.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:57:"https://downloads.wordpress.org/release/wordpress-4.7.zip";s:10:"no_content";s:68:"https://downloads.wordpress.org/release/wordpress-4.7-no-content.zip";s:11:"new_bundled";s:69:"https://downloads.wordpress.org/release/wordpress-4.7-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.7";s:7:"version";s:3:"4.7";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1481275574;s:15:"version_checked";s:3:"4.7";s:12:"translations";a:0:{}}', 'no'),
(205, 'can_compress_scripts', '1', 'no'),
(215, 'fresh_site', '0', 'yes'),
(172, 'ls-latest-version', '6.0.5', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp5415_orders`
--

CREATE TABLE `wp5415_orders` (
  `order_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `order_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp5415_postmeta`
--

CREATE TABLE `wp5415_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp5415_postmeta`
--

INSERT INTO `wp5415_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 2, '_edit_lock', '1481276723:1'),
(3, 2, '_edit_last', '1'),
(4, 2, '_aviaLayoutBuilder_active', ''),
(5, 2, '_aviaLayoutBuilderCleanData', ''),
(6, 2, 'layout', ''),
(7, 2, 'sidebar', ''),
(8, 2, 'footer', ''),
(9, 2, 'header_title_bar', ''),
(10, 2, 'header_transparency', ''),
(11, 2, '_avia_hide_featured_image', '0');

-- --------------------------------------------------------

--
-- Table structure for table `wp5415_posts`
--

CREATE TABLE `wp5415_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp5415_posts`
--

INSERT INTO `wp5415_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2016-12-06 09:17:49', '2016-12-06 09:17:49', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2016-12-06 09:17:49', '2016-12-06 09:17:49', '', 0, 'http://wamp.broodjes.ch/?p=1', 0, 'post', '', 1),
(2, 1, '2016-12-06 09:17:49', '2016-12-06 09:17:49', '[bestelformulier]', 'test', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2016-12-08 17:17:54', '2016-12-08 17:17:54', '', 0, 'http://wamp.broodjes.ch/?page_id=2', 0, 'page', '', 0),
(11, 1, '2016-12-08 16:59:00', '2016-12-08 16:59:00', '[\'bestelformulier\']', 'test', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-12-08 16:59:00', '2016-12-08 16:59:00', '', 2, 'http://wamp.broodjes.ch/2016/12/08/2-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2016-12-08 16:59:45', '2016-12-08 16:59:45', '[bestelformulier]', 'test', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-12-08 16:59:45', '2016-12-08 16:59:45', '', 2, 'http://wamp.broodjes.ch/2016/12/08/2-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2016-12-08 17:09:21', '2016-12-08 17:09:21', '[\'bestelformulier\']', 'test', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-12-08 17:09:21', '2016-12-08 17:09:21', '', 2, 'http://wamp.broodjes.ch/2016/12/08/2-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2016-12-08 17:09:40', '2016-12-08 17:09:40', '[bestelformulier]', 'test', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-12-08 17:09:40', '2016-12-08 17:09:40', '', 2, 'http://wamp.broodjes.ch/2016/12/08/2-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2016-12-08 17:14:36', '2016-12-08 17:14:36', '[\'bestelformulier\']', 'test', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-12-08 17:14:36', '2016-12-08 17:14:36', '', 2, 'http://wamp.broodjes.ch/2016/12/08/2-revision-v1/', 0, 'revision', '', 0),
(3, 1, '2016-12-06 09:18:04', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-12-06 09:18:04', '0000-00-00 00:00:00', '', 0, 'http://wamp.broodjes.ch/?p=3', 0, 'post', '', 0),
(4, 1, '2016-12-06 09:22:31', '0000-00-00 00:00:00', '', 'avia_logo', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-12-06 09:22:31', '0000-00-00 00:00:00', '', 0, 'http://wamp.broodjes.ch/?post_type=avia_framework_post&p=4', 0, 'avia_framework_post', '', 0),
(5, 1, '2016-12-06 09:22:31', '0000-00-00 00:00:00', '', 'avia_favicon', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-12-06 09:22:31', '0000-00-00 00:00:00', '', 0, 'http://wamp.broodjes.ch/?post_type=avia_framework_post&p=5', 0, 'avia_framework_post', '', 0),
(6, 1, '2016-12-06 09:22:31', '0000-00-00 00:00:00', '', 'avia_custom_logo_for_preloader', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-12-06 09:22:31', '0000-00-00 00:00:00', '', 0, 'http://wamp.broodjes.ch/?post_type=avia_framework_post&p=6', 0, 'avia_framework_post', '', 0),
(7, 1, '2016-12-06 09:22:31', '0000-00-00 00:00:00', '', 'avia_custom_background_image', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-12-06 09:22:31', '0000-00-00 00:00:00', '', 0, 'http://wamp.broodjes.ch/?post_type=avia_framework_post&p=7', 0, 'avia_framework_post', '', 0),
(8, 1, '2016-12-06 09:22:31', '0000-00-00 00:00:00', '', 'avia_transparency_logo', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-12-06 09:22:31', '0000-00-00 00:00:00', '', 0, 'http://wamp.broodjes.ch/?post_type=avia_framework_post&p=8', 0, 'avia_framework_post', '', 0),
(9, 1, '2016-12-08 16:56:03', '0000-00-00 00:00:00', '', 'avia_template_builder_snippets', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-12-08 16:56:03', '0000-00-00 00:00:00', '', 0, 'http://wamp.broodjes.ch/?post_type=avia_framework_post&p=9', 0, 'avia_framework_post', '', 0),
(10, 1, '2016-12-08 17:09:19', '2016-12-08 17:09:19', '[\'bestelformulier\']', 'test', '', 'inherit', 'closed', 'closed', '', '2-autosave-v1', '', '', '2016-12-08 17:09:19', '2016-12-08 17:09:19', '', 2, 'http://wamp.broodjes.ch/2016/12/08/2-autosave-v1/', 0, 'revision', '', 0),
(16, 1, '2016-12-08 17:17:54', '2016-12-08 17:17:54', '[bestelformulier]', 'test', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-12-08 17:17:54', '2016-12-08 17:17:54', '', 2, 'http://wamp.broodjes.ch/2016/12/08/2-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp5415_sieges`
--

CREATE TABLE `wp5415_sieges` (
  `siege_id` bigint(20) NOT NULL,
  `siege_name` varchar(25) NOT NULL,
  `siege_price` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wp5415_sieges`
--

INSERT INTO `wp5415_sieges` (`siege_id`, `siege_name`, `siege_price`) VALUES
(8, 'plakje kaas', '0.25'),
(13, 'pindakaas', '0.50'),
(12, 'jam', '0.20'),
(11, 'plakje ham', '0.20');

-- --------------------------------------------------------

--
-- Table structure for table `wp5415_siegesmeta`
--

CREATE TABLE `wp5415_siegesmeta` (
  `bread_id` bigint(20) NOT NULL,
  `siege_id` bigint(20) NOT NULL,
  `siege_description` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp5415_termmeta`
--

CREATE TABLE `wp5415_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp5415_terms`
--

CREATE TABLE `wp5415_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp5415_terms`
--

INSERT INTO `wp5415_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp5415_term_relationships`
--

CREATE TABLE `wp5415_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp5415_term_relationships`
--

INSERT INTO `wp5415_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp5415_term_taxonomy`
--

CREATE TABLE `wp5415_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp5415_term_taxonomy`
--

INSERT INTO `wp5415_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp5415_usermeta`
--

CREATE TABLE `wp5415_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp5415_usermeta`
--

INSERT INTO `wp5415_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'broodjes'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp5415_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp5415_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'builder-button-pointer'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:3:{s:64:"65de84eae056824269b551ea6fda63f049a6892e37e13b830e916e4b22806d4b";a:4:{s:10:"expiration";i:1481445411;s:2:"ip";s:3:"::1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36";s:5:"login";i:1481272611;}s:64:"295eee14a716062413a55786d468f0cfca492d74f5dff6023739027f08cf90df";a:4:{s:10:"expiration";i:1481445555;s:2:"ip";s:3:"::1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36";s:5:"login";i:1481272755;}s:64:"8ca9da65cc6f0d48bf20309f81212127630e8a8f7d1bb4a9dd2c255a1c2e888e";a:4:{s:10:"expiration";i:1481449815;s:2:"ip";s:3:"::1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36";s:5:"login";i:1481277015;}}'),
(15, 1, 'wp5415_dashboard_quick_press_last_post_id', '3'),
(16, 1, 'layerslider_help_wp_pointer', '1'),
(17, 2, 'nickname', 'john'),
(18, 2, 'first_name', ''),
(19, 2, 'last_name', ''),
(20, 2, 'description', ''),
(21, 2, 'rich_editing', 'true'),
(22, 2, 'comment_shortcuts', 'false'),
(23, 2, 'admin_color', 'fresh'),
(24, 2, 'use_ssl', '0'),
(25, 2, 'show_admin_bar_front', 'true'),
(26, 2, 'locale', ''),
(27, 2, 'wp5415_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(28, 2, 'wp5415_user_level', '0'),
(29, 2, 'dismissed_wp_pointers', ''),
(30, 3, 'nickname', 'wil'),
(31, 3, 'first_name', ''),
(32, 3, 'last_name', ''),
(33, 3, 'description', ''),
(34, 3, 'rich_editing', 'true'),
(35, 3, 'comment_shortcuts', 'false'),
(36, 3, 'admin_color', 'fresh'),
(37, 3, 'use_ssl', '0'),
(38, 3, 'show_admin_bar_front', 'true'),
(39, 3, 'locale', ''),
(40, 3, 'wp5415_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(41, 3, 'wp5415_user_level', '0'),
(42, 3, 'dismissed_wp_pointers', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp5415_users`
--

CREATE TABLE `wp5415_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp5415_users`
--

INSERT INTO `wp5415_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'broodjes', '$P$BfqYNaSg7Q1I4q.zBKTgtUczb3licv.', 'broodjes', 'rickdaalhuizen@protonmail.com', '', '2016-12-06 09:17:49', '', 0, 'broodjes'),
(2, 'john', '$P$B8p9W02b6Ktb4q3jW1R7XSeuK6goSB1', 'john', 'john@doe.com', '', '2016-12-09 10:23:22', '', 0, 'john'),
(3, 'wil', '$P$BE4vmpkWjgA/2NWlw7ZeMLI.AC0wge1', 'wil', 'wil@wil.com', '', '2016-12-09 10:29:33', '', 0, 'wil');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp5415_breads`
--
ALTER TABLE `wp5415_breads`
  ADD PRIMARY KEY (`bread_id`);

--
-- Indexes for table `wp5415_commentmeta`
--
ALTER TABLE `wp5415_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp5415_comments`
--
ALTER TABLE `wp5415_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp5415_layerslider`
--
ALTER TABLE `wp5415_layerslider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp5415_links`
--
ALTER TABLE `wp5415_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp5415_options`
--
ALTER TABLE `wp5415_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp5415_orders`
--
ALTER TABLE `wp5415_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `wp5415_postmeta`
--
ALTER TABLE `wp5415_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp5415_posts`
--
ALTER TABLE `wp5415_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp5415_sieges`
--
ALTER TABLE `wp5415_sieges`
  ADD PRIMARY KEY (`siege_id`);

--
-- Indexes for table `wp5415_siegesmeta`
--
ALTER TABLE `wp5415_siegesmeta`
  ADD PRIMARY KEY (`bread_id`);

--
-- Indexes for table `wp5415_termmeta`
--
ALTER TABLE `wp5415_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp5415_terms`
--
ALTER TABLE `wp5415_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp5415_term_relationships`
--
ALTER TABLE `wp5415_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp5415_term_taxonomy`
--
ALTER TABLE `wp5415_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp5415_usermeta`
--
ALTER TABLE `wp5415_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp5415_users`
--
ALTER TABLE `wp5415_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp5415_commentmeta`
--
ALTER TABLE `wp5415_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp5415_comments`
--
ALTER TABLE `wp5415_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp5415_layerslider`
--
ALTER TABLE `wp5415_layerslider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp5415_links`
--
ALTER TABLE `wp5415_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp5415_options`
--
ALTER TABLE `wp5415_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;
--
-- AUTO_INCREMENT for table `wp5415_postmeta`
--
ALTER TABLE `wp5415_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `wp5415_posts`
--
ALTER TABLE `wp5415_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `wp5415_sieges`
--
ALTER TABLE `wp5415_sieges`
  MODIFY `siege_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `wp5415_termmeta`
--
ALTER TABLE `wp5415_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp5415_terms`
--
ALTER TABLE `wp5415_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp5415_term_taxonomy`
--
ALTER TABLE `wp5415_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp5415_usermeta`
--
ALTER TABLE `wp5415_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `wp5415_users`
--
ALTER TABLE `wp5415_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
