-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 23, 2019 at 04:43 AM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo_wp`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_email` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
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
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_email`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-09-23 00:22:05', '2019-09-23 00:22:05', '<!-- wp:paragraph -->\n<p>Cảm ơn vì đã sử dụng WordPress. Đây là bài viết đầu tiên của bạn. Sửa hoặc xóa nó, và bắt đầu bài viết của bạn nhé!</p>\n<!-- /wp:paragraph -->', 'Chào tất cả mọi người!', '', '', 'publish', 'open', 'open', '', 'chao-moi-nguoi', '', '', '2019-09-23 00:22:05', '2019-09-23 00:22:05', '', 0, 'http://localhost:82/33-cms-t2/?p=1', 0, 'post', '', 1),
(2, 1, '2019-09-23 00:22:05', '2019-09-23 00:22:05', '<!-- wp:paragraph -->\n<p>Đây là trang mẫu. Nó khác với bài viết bởi vì nó thường cố định và hiển thị trong menu của bạn. Nhiều người bắt đầu với trang Giới thiệu nơi bạn chia sẻ thông tin cho những ai ghé thăm. Nó có thể bắt đầu như thế này:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Chào bạn! Tôi là một người bán hàng, và đây là website của tôi. Tôi sống ở Hà Nội, có một gia đình nhỏ, và tôi thấy cách sử dụng WordPress rất thú vị.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... hoặc cái gì đó như thế này:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Công ty chúng tôi được thành lập năm 2010, và cung cấp dịch vụ chất lượng cho rất nhiều sự kiện tại khắp Việt Nam. Với văn phòng đặt tại Hà Nội, TP. Hồ Chí Minh cùng hơn 40 nhân sự, chúng tôi là nơi nhiều đối tác tin tưởng giao cho tổ chức các sự kiện lớn.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Là một người dùng WordPress mới, bạn nên ghé thăm <a href=\"http://localhost:82/33-cms-t2/wp-admin/\">bảng tin</a> để xóa trang này và tạo trang mới cho nội dung của chính bạn. Chúc bạn vui vẻ!</p>\n<!-- /wp:paragraph -->', 'Trang Mẫu', '', '', 'publish', 'closed', 'open', '', 'Trang mẫu', '', '', '2019-09-23 00:22:05', '2019-09-23 00:22:05', '', 0, 'http://localhost:82/33-cms-t2/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-09-23 00:22:05', '2019-09-23 00:22:05', '<!-- wp:heading --><h2>Chúng tôi là ai</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Địa chỉ website là: http://localhost:82/33-cms-t2.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Thông tin cá nhân nào bị thu thập và tại sao thu thập</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Bình luận</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Khi khách truy cập để lại bình luận trên trang web, chúng tôi thu thập dữ liệu được hiển thị trong biểu mẫu bình luận và cũng là địa chỉ IP của người truy cập và chuỗi user agent của người dùng trình duyệt để giúp phát hiện spam</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Một chuỗi ẩn danh được tạo từ địa chỉ email của bạn (còn được gọi là hash) có thể được cung cấp cho dịch vụ Gravatar để xem bạn có đang sử dụng nó hay không. Chính sách bảo mật của dịch vụ Gravatar có tại đây: https://automattic.com/privacy/. Sau khi chấp nhận bình luận của bạn, ảnh tiểu sử của bạn được hiển thị công khai trong ngữ cảnh bình luận của bạn.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Thư viện</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn tải hình ảnh lên trang web, bạn nên tránh tải lên hình ảnh có dữ liệu vị trí được nhúng (EXIF GPS) đi kèm. Khách truy cập vào trang web có thể tải xuống và giải nén bất kỳ dữ liệu vị trí nào từ hình ảnh trên trang web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Thông tin liên hệ</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn viết bình luận trong website, bạn có thể cung cấp cần nhập tên, email địa chỉ website trong cookie. Các thông tin này nhằm giúp bạn không cần nhập thông tin nhiều lần khi viết bình luận khác. Cookie này sẽ được lưu giữ trong một năm.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Nếu bạn vào trang đăng nhập, chúng tôi sẽ thiết lập một cookie tạm thời để xác định nếu trình duyệt cho phép sử dụng cookie. Cookie này không bao gồm thông tin cá nhân và sẽ được gỡ bỏ khi bạn đóng trình duyệt.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Khi bạn đăng nhập, chúng tôi sẽ thiết lập một vài cookie để lưu thông tin đăng nhập và lựa chọn hiển thị. Thông tin đăng nhập gần nhất lưu trong hai ngày, và lựa chọn hiển thị gần nhất lưu trong một năm. Nếu bạn chọn &quot;Nhớ tôi&quot;, thông tin đăng nhập sẽ được lưu trong hai tuần. Nếu bạn thoát tài khoản, thông tin cookie đăng nhập sẽ bị xoá.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Nếu bạn sửa hoặc công bố bài viết, một bản cookie bổ sung sẽ được lưu trong trình duyệt. Cookie này không chứa thông tin cá nhân và chỉ đơn giản bao gồm ID của bài viết bạn đã sửa. Nó tự động hết hạn sau 1 ngày.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Nội dung nhúng từ website khác</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Các bài viết trên trang web này có thể bao gồm nội dung được nhúng (ví dụ: video, hình ảnh, bài viết, v.v.). Nội dung được nhúng từ các trang web khác hoạt động theo cùng một cách chính xác như khi khách truy cập đã truy cập trang web khác.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Những website này có thể thu thập dữ liệu về bạn, sử dụng cookie, nhúng các trình theo dõi của bên thứ ba và giám sát tương tác của bạn với nội dung được nhúng đó, bao gồm theo dõi tương tác của bạn với nội dung được nhúng nếu bạn có tài khoản và đã đăng nhập vào trang web đó.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Phân tích</h3><!-- /wp:heading --><!-- wp:heading --><h2>Chúng tôi chia sẻ dữ liệu của bạn với ai</h2><!-- /wp:heading --><!-- wp:heading --><h2>Dữ liệu của bạn tồn tại bao lâu</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn để lại bình luận, bình luận và siêu dữ liệu của nó sẽ được giữ lại vô thời hạn. Điều này là để chúng tôi có thể tự động nhận ra và chấp nhận bất kỳ bình luận nào thay vì giữ chúng trong khu vực đợi kiểm duyệt.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Đối với người dùng đăng ký trên trang web của chúng tôi (nếu có), chúng tôi cũng lưu trữ thông tin cá nhân mà họ cung cấp trong hồ sơ người dùng của họ. Tất cả người dùng có thể xem, chỉnh sửa hoặc xóa thông tin cá nhân của họ bất kỳ lúc nào (ngoại trừ họ không thể thay đổi tên người dùng của họ). Quản trị viên trang web cũng có thể xem và chỉnh sửa thông tin đó.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Các quyền nào của bạn với dữ liệu của mình</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn có tài khoản trên trang web này hoặc đã để lại nhận xét, bạn có thể yêu cầu nhận tệp xuất dữ liệu cá nhân mà chúng tôi lưu giữ về bạn, bao gồm mọi dữ liệu bạn đã cung cấp cho chúng tôi. Bạn cũng có thể yêu cầu chúng tôi xóa mọi dữ liệu cá nhân mà chúng tôi lưu giữ về bạn. Điều này không bao gồm bất kỳ dữ liệu nào chúng tôi có nghĩa vụ giữ cho các mục đích hành chính, pháp lý hoặc bảo mật.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Các dữ liệu của bạn được gửi tới đâu</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Các bình luận của khách (không phải là thành viên) có thể được kiểm tra thông qua dịch vụ tự động phát hiện spam.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Thông tin liên hệ của bạn</h2><!-- /wp:heading --><!-- wp:heading --><h2>Thông tin bổ sung</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cách chúng tôi bảo vệ dữ liệu của bạn</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Các quá trình tiết lộ dữ liệu mà chúng tôi thực hiện</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Những bên thứ ba chúng tôi nhận dữ liệu từ đó</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Việc quyết định và/hoặc thu thập thông tin tự động mà chúng tôi áp dụng với dữ liệu người dùng</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Các yêu cầu công bố thông tin được quản lý</h3><!-- /wp:heading -->', 'Chính sách bảo mật', '', '', 'draft', 'closed', 'open', '', 'chinh-sach-bao-mat', '', '', '2019-09-23 00:22:05', '2019-09-23 00:22:05', '', 0, 'http://localhost:82/33-cms-t2/?page_id=3', 0, 'page', '', 0),
(4, 1, '2019-09-23 00:22:23', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-23 00:22:23', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/33-cms-t2/?p=4', 0, 'post', '', 0),
(5, 1, '2019-09-23 00:26:19', '0000-00-00 00:00:00', '', 'Auto Draft', '', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-23 00:26:19', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/33-cms-t2/?p=5', 0, 'post', '', 0),
(6, 1, '2019-09-23 00:32:40', '0000-00-00 00:00:00', '', 'dsa', '', '', 'draft', 'open', 'open', '', '', '', '', '2019-09-23 00:32:40', '2019-09-23 00:32:40', '', 0, 'http://localhost:82/33-cms-t2/?p=6', 0, 'post', '', 0),
(7, 1, '2019-09-23 00:37:53', '0000-00-00 00:00:00', '', 'Auto Draft', '', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-23 00:37:53', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/33-cms-t2/?p=7', 0, 'post', '', 0),
(8, 1, '2019-09-23 01:57:57', '0000-00-00 00:00:00', '', 'Auto Draft', '', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-23 01:57:57', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/33-cms-t2/?p=8', 0, 'post', '', 0),
(9, 1, '2019-09-23 02:05:19', '0000-00-00 00:00:00', '', 'Auto Draft', '', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-23 02:05:19', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/33-cms-t2/?p=9', 0, 'post', '', 0),
(10, 1, '2019-09-23 03:56:38', '2019-09-23 03:56:38', '', 'dsa', '', '', 'publish', 'open', 'open', '', 'dsa', '', '', '2019-09-23 04:03:13', '2019-09-23 04:03:13', '', 0, 'http://localhost:82/33-cms-t2/?p=10', 0, 'post', '', 0),
(11, 1, '2019-09-23 03:00:10', '2019-09-23 03:00:10', '', ';.', '', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2019-09-23 03:00:10', '2019-09-23 03:00:10', '', 10, 'http://localhost:82/33-cms-t2/2019/09/23/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2019-09-23 03:56:38', '2019-09-23 03:56:38', '', 'dsa', '', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2019-09-23 03:56:38', '2019-09-23 03:56:38', '', 10, 'http://localhost:82/33-cms-t2/2019/09/23/10-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2019-09-23 04:03:47', '2019-09-23 04:03:47', 'dsadsadasdsa', 'sua bay roi', '', '', 'publish', 'open', 'open', '', 'title', '', '', '2019-09-23 04:11:58', '2019-09-23 04:11:58', '', 0, 'http://localhost:82/33-cms-t2/?p=13', 0, 'post', '', 0),
(14, 1, '2019-09-23 04:03:47', '2019-09-23 04:03:47', '', 'title', '', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2019-09-23 04:03:47', '2019-09-23 04:03:47', '', 13, 'http://localhost:82/33-cms-t2/2019/09/23/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2019-09-23 04:03:50', '0000-00-00 00:00:00', '', 'Auto Draft', '', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-23 04:03:50', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/33-cms-t2/?p=15', 0, 'post', '', 0),
(16, 1, '2019-09-23 04:06:31', '2019-09-23 04:06:31', '', 'sa', '', '', 'publish', 'open', 'open', '', 'sa', '', '', '2019-09-23 04:06:31', '2019-09-23 04:06:31', '', 0, 'http://localhost:82/33-cms-t2/?p=16', 0, 'post', '', 0),
(17, 1, '2019-09-23 04:06:31', '2019-09-23 04:06:31', '', 'sa', '', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2019-09-23 04:06:31', '2019-09-23 04:06:31', '', 16, 'http://localhost:82/33-cms-t2/2019/09/23/16-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2019-09-23 04:07:04', '2019-09-23 04:07:04', '', 'DSADSA', '', '', 'publish', 'open', 'open', '', 'dsadsa', '', '', '2019-09-23 04:07:04', '2019-09-23 04:07:04', '', 0, 'http://localhost:82/33-cms-t2/?p=18', 0, 'post', '', 0),
(19, 1, '2019-09-23 04:07:04', '2019-09-23 04:07:04', '', 'DSADSA', '', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2019-09-23 04:07:04', '2019-09-23 04:07:04', '', 18, 'http://localhost:82/33-cms-t2/2019/09/23/18-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2019-09-23 04:11:36', '2019-09-23 04:11:36', '', 'sua bay roi', '', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2019-09-23 04:11:36', '2019-09-23 04:11:36', '', 13, 'http://localhost:82/33-cms-t2/2019/09/23/13-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2019-09-23 04:11:58', '2019-09-23 04:11:58', 'dsadsadasdsa', 'sua bay roi', '', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2019-09-23 04:11:58', '2019-09-23 04:11:58', '', 13, 'http://localhost:82/33-cms-t2/2019/09/23/13-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2019-09-23 04:14:48', '2019-09-23 04:14:48', 'dsaddsadsa', 'sua', '', '', 'publish', 'open', 'open', '', 'sua', '', '', '2019-09-23 04:14:48', '2019-09-23 04:14:48', '', 0, 'http://localhost:82/33-cms-t2/?p=22', 0, 'post', '', 0),
(23, 1, '2019-09-23 04:14:48', '2019-09-23 04:14:48', 'dsaddsadsa', 'sua', '', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2019-09-23 04:14:48', '2019-09-23 04:14:48', '', 22, 'http://localhost:82/33-cms-t2/2019/09/23/22-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2019-09-23 04:14:51', '0000-00-00 00:00:00', '', 'Auto Draft', '', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-23 04:14:51', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/33-cms-t2/?p=24', 0, 'post', '', 0),
(25, 1, '2019-09-23 04:19:20', '2019-09-23 04:19:20', 'dsaaaaaaadsa', 'dsa', '', '', 'publish', 'open', 'open', '', 'dsa-2', '', '', '2019-09-23 04:19:20', '2019-09-23 04:19:20', '', 0, 'http://localhost:82/33-cms-t2/?p=25', 0, 'post', '', 0),
(26, 1, '2019-09-23 04:19:20', '2019-09-23 04:19:20', 'dsaaaaaaadsa', 'dsa', '', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2019-09-23 04:19:20', '2019-09-23 04:19:20', '', 25, 'http://localhost:82/33-cms-t2/2019/09/23/25-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2019-09-23 04:23:12', '0000-00-00 00:00:00', '', 'Auto Draft', '', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-23 04:23:12', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/33-cms-t2/?p=27', 0, 'post', '', 0),
(28, 1, '2019-09-23 04:23:52', '2019-09-23 04:23:52', 'update ne', 'update email', '', '', 'publish', 'open', 'open', '', 'dsa-3', '', '', '2019-09-23 04:25:23', '2019-09-23 04:25:23', '', 0, 'http://localhost:82/33-cms-t2/?p=28', 0, 'post', '', 0),
(29, 1, '2019-09-23 04:23:52', '2019-09-23 04:23:52', 'dsadas', 'dsa', '', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2019-09-23 04:23:52', '2019-09-23 04:23:52', '', 28, 'http://localhost:82/33-cms-t2/2019/09/23/28-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2019-09-23 04:25:23', '2019-09-23 04:25:23', 'update ne', 'update email', '', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2019-09-23 04:25:23', '2019-09-23 04:25:23', '', 28, 'http://localhost:82/33-cms-t2/2019/09/23/28-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2019-09-23 04:25:50', '2019-09-23 04:25:50', 'addmail', 'add email', '', '', 'publish', 'open', 'open', '', 'add-email', '', '', '2019-09-23 04:25:50', '2019-09-23 04:25:50', '', 0, 'http://localhost:82/33-cms-t2/?p=31', 0, 'post', '', 0),
(32, 1, '2019-09-23 04:25:50', '2019-09-23 04:25:50', 'addmail', 'add email', '', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2019-09-23 04:25:50', '2019-09-23 04:25:50', '', 31, 'http://localhost:82/33-cms-t2/2019/09/23/31-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2019-09-23 04:28:53', '2019-09-23 04:28:53', 'sssssssssss', 'post_email ne', '', '', 'publish', 'open', 'open', '', 'post_email-ne', '', '', '2019-09-23 04:28:53', '2019-09-23 04:28:53', '', 0, 'http://localhost:82/33-cms-t2/?p=33', 0, 'post', '', 0),
(34, 1, '2019-09-23 04:28:53', '2019-09-23 04:28:53', 'sssssssssss', 'post_email ne', '', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2019-09-23 04:28:53', '2019-09-23 04:28:53', '', 33, 'http://localhost:82/33-cms-t2/2019/09/23/33-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2019-09-23 04:30:10', '2019-09-23 04:30:10', 'dsadsadsa', 'sadsa', '', '', 'publish', 'open', 'open', '', 'sadsa', '', '', '2019-09-23 04:30:10', '2019-09-23 04:30:10', '', 0, 'http://localhost:82/33-cms-t2/?p=35', 0, 'post', '', 0),
(36, 1, '2019-09-23 04:30:10', '2019-09-23 04:30:10', 'dsadsadsa', 'sadsa', '', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2019-09-23 04:30:10', '2019-09-23 04:30:10', '', 35, 'http://localhost:82/33-cms-t2/2019/09/23/35-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2019-09-23 04:30:59', '0000-00-00 00:00:00', '', 'Auto Draft', '', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-23 04:30:59', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/33-cms-t2/?p=37', 0, 'post', '', 0),
(38, 1, '2019-09-23 04:34:54', '2019-09-23 04:34:54', 'dsadsadsa', 'alo 12345', '', '', 'publish', 'open', 'open', '', 'alo-12345', '', '', '2019-09-23 04:34:54', '2019-09-23 04:34:54', '', 0, 'http://localhost:82/33-cms-t2/?p=38', 0, 'post', '', 0),
(39, 1, '2019-09-23 04:34:25', '2019-09-23 04:34:25', '', 'alo', '', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2019-09-23 04:34:25', '2019-09-23 04:34:25', '', 38, 'http://localhost:82/33-cms-t2/2019/09/23/38-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2019-09-23 04:34:54', '2019-09-23 04:34:54', 'dsadsadsa', 'alo 12345', '', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2019-09-23 04:34:54', '2019-09-23 04:34:54', '', 38, 'http://localhost:82/33-cms-t2/2019/09/23/38-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2019-09-23 04:35:07', '2019-09-23 04:35:07', 'dsadsadsadsa', 'alo12345', '', '', 'publish', 'open', 'open', '', 'alo12345', '', '', '2019-09-23 04:35:07', '2019-09-23 04:35:07', '', 0, 'http://localhost:82/33-cms-t2/?p=41', 0, 'post', '', 0),
(42, 1, '2019-09-23 04:35:07', '2019-09-23 04:35:07', 'dsadsadsadsa', 'alo12345', '', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2019-09-23 04:35:07', '2019-09-23 04:35:07', '', 41, 'http://localhost:82/33-cms-t2/2019/09/23/41-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2019-09-23 04:35:47', '2019-09-23 04:35:47', 'udpate khong dc email', 'alo ha', '', '', 'publish', 'open', 'open', '', 'alo-ha', '', '', '2019-09-23 04:36:31', '2019-09-23 04:36:31', '', 0, 'http://localhost:82/33-cms-t2/?p=43', 0, 'post', '', 0),
(44, 1, '2019-09-23 04:35:47', '2019-09-23 04:35:47', 'dsadsa', 'alo ha', '', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2019-09-23 04:35:47', '2019-09-23 04:35:47', '', 43, 'http://localhost:82/33-cms-t2/2019/09/23/43-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2019-09-23 04:36:31', '2019-09-23 04:36:31', 'udpate khong dc email', 'alo ha', '', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2019-09-23 04:36:31', '2019-09-23 04:36:31', '', 43, 'http://localhost:82/33-cms-t2/2019/09/23/43-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2019-09-23 04:39:03', '0000-00-00 00:00:00', '', 'Auto Draft', '', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-23 04:39:03', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/33-cms-t2/?p=46', 0, 'post', '', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
