DROP TABLE IF EXISTS comments;

CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_body` text NOT NULL,
  `posted_by` varchar(60) NOT NULL,
  `posted_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `removed` varchar(3) NOT NULL,
  `post_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `posted_by` (`posted_by`),
  KEY `posted_to` (`posted_to`),
  KEY `post_id` (`post_id`),
  CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`posted_by`) REFERENCES `users` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`posted_to`) REFERENCES `users` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `comments_ibfk_3` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO comments VALUES("2","Will pass today","jess_mccready","lupe_garcia","2023-01-06 19:39:44","no","37");
INSERT INTO comments VALUES("3","Hey yourself","jess_mccready","lupe_garcia","2023-01-06 19:39:53","no","36");
INSERT INTO comments VALUES("4","Nah, Im good","jess_mccready","lupe_garcia","2023-01-06 19:40:15","no","16");
INSERT INTO comments VALUES("5","nope","lupe_garcia","maybelle_fox","2023-01-06 20:19:53","no","39");
INSERT INTO comments VALUES("6","agreed","lupe_garcia","jess_mccready","2023-01-06 20:20:01","no","38");
INSERT INTO comments VALUES("7","i have! fantastic quality","jess_mccready","maybelle_fox","2023-01-06 21:19:45","no","39");
INSERT INTO comments VALUES("8","No worries","lupe_garcia","lupe_garcia","2023-01-06 23:41:02","no","37");
INSERT INTO comments VALUES("9","Next time you are on tho","lupe_garcia","lupe_garcia","2023-01-07 00:09:29","no","37");
INSERT INTO comments VALUES("10","Hook me up","lupe_garcia","lupe_garcia","2023-01-07 00:11:03","no","36");
INSERT INTO comments VALUES("11","Have fun sulking at home","lupe_garcia","lupe_garcia","2023-01-07 00:14:10","no","16");
INSERT INTO comments VALUES("12","puts the 2009 version to shame","jess_mccready","maybelle_fox","2023-01-07 00:34:21","no","39");
INSERT INTO comments VALUES("14","honestly, 2009 was way ahead of its time","lupe_garcia","maybelle_fox","2023-01-08 00:40:31","no","39");
INSERT INTO comments VALUES("15","true","jess_mccready","maybelle_fox","2023-01-08 00:41:25","no","39");
INSERT INTO comments VALUES("16","but still","jess_mccready","maybelle_fox","2023-01-08 00:41:53","no","39");
INSERT INTO comments VALUES("17","point taken","lupe_garcia","maybelle_fox","2023-01-08 00:42:47","no","39");
INSERT INTO comments VALUES("19","ypu should give it a go!","jess_mccready","maybelle_fox","2023-01-08 16:36:24","no","39");
INSERT INTO comments VALUES("21","Never heard of it...","maxine_chapman","jess_mccready","2023-01-12 19:39:55","no","4");
INSERT INTO comments VALUES("23","fr!!","margot_robbie","lupe_garcia","2023-01-12 19:43:42","no","52");
INSERT INTO comments VALUES("24","No way","margot_robbie","lupe_garcia","2023-01-12 19:44:02","no","16");
INSERT INTO comments VALUES("25","How is she?!","margot_robbie","lupe_garcia","2023-01-12 19:44:13","no","15");
INSERT INTO comments VALUES("26","jack\'s are far better","margot_robbie","jess_mccready","2023-01-12 19:45:19","no","38");
INSERT INTO comments VALUES("29","Period.","lupe_garcia","margot_robbie","2023-01-12 20:12:44","no","54");
INSERT INTO comments VALUES("30","Loving it","margot_robbie","lupe_garcia","2023-01-12 20:14:05","no","57");
INSERT INTO comments VALUES("31","fr","margot_robbie","margot_robbie","2023-01-12 20:14:24","no","54");
INSERT INTO comments VALUES("32","#FreeIran","esti_gonzalez","margot_robbie","2023-01-14 16:08:15","no","60");
INSERT INTO comments VALUES("33","what nonsense are you talikng??","esti_gonzalez","lupe_garcia","2023-01-14 16:08:38","no","52");
INSERT INTO comments VALUES("34","good!!","esti_gonzalez","lupe_garcia","2023-01-14 16:08:50","no","15");
INSERT INTO comments VALUES("35","come visit Cuba, we miss you! <3","esti_gonzalez","lupe_garcia","2023-01-14 16:09:10","no","14");
INSERT INTO comments VALUES("36","What kind of question is that?","lupe_garcia","jess_mccready","2023-01-14 16:58:46","no","1");
INSERT INTO comments VALUES("37","a simple one","jess_mccready","jess_mccready","2023-01-14 16:59:00","no","1");
INSERT INTO comments VALUES("38","Such a lovely evening with splendid company!","emma_watson","lupe_garcia","2023-01-14 20:03:45","no","62");
INSERT INTO comments VALUES("39","<3","lupe_garcia","lupe_garcia","2023-01-14 20:04:31","no","62");
INSERT INTO comments VALUES("40","Same","lupe_garcia","maxine_chapman","2023-01-16 17:18:23","no","4");
INSERT INTO comments VALUES("41","Absolutely I would","lupe_garcia","shirley_berlant","2023-01-17 00:14:44","no","77");
INSERT INTO comments VALUES("42","fghj","emma_watson","lupe_garcia","2023-01-19 02:40:06","no","84");
INSERT INTO comments VALUES("43","Absolutely!","emma_watson","lupe_garcia","2023-01-19 03:07:03","no","87");
INSERT INTO comments VALUES("44","Really?!","jess_mccready","jess_mccready","2023-01-19 11:43:51","no","94");
INSERT INTO comments VALUES("45","sdfff","lupe_garcia","jess_mccready","2023-01-19 12:35:44","no","103");
INSERT INTO comments VALUES("46","kjhl;\'","lupe_garcia","lupe_garcia","2023-05-26 18:44:37","no","16");
INSERT INTO comments VALUES("47","Slayed!","jess_mccready","lupe_garcia","2023-06-13 23:34:26","no","109");

DROP TABLE IF EXISTS friend_requests;

CREATE TABLE `friend_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `friend_requests_ibfk_1` (`user_to`),
  KEY `friend_requests_ibfk_2` (`user_from`),
  CONSTRAINT `friend_requests_ibfk_1` FOREIGN KEY (`user_to`) REFERENCES `users` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `friend_requests_ibfk_2` FOREIGN KEY (`user_from`) REFERENCES `users` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO friend_requests VALUES("19","marco_vovchok","lupe_garcia");
INSERT INTO friend_requests VALUES("22","maybelle_fox","maxine_chapman");
INSERT INTO friend_requests VALUES("23","jo_deluca","maxine_chapman");
INSERT INTO friend_requests VALUES("24","greta_gill","maxine_chapman");
INSERT INTO friend_requests VALUES("36","esti_gonzalez","lupe_garcia");
INSERT INTO friend_requests VALUES("37","margot_robbie","lupe_garcia");
INSERT INTO friend_requests VALUES("38","maybelle_fox","jess_mccready");
INSERT INTO friend_requests VALUES("39","jess_mccready","marco_vovchok");
INSERT INTO friend_requests VALUES("40","emma_watson","margot_robbie");
INSERT INTO friend_requests VALUES("41","margot_robbie","jess_mccready");
INSERT INTO friend_requests VALUES("43","maybelle_fox","lupe_garcia");
INSERT INTO friend_requests VALUES("44","yevhen_malaniuk","lupe_garcia");
INSERT INTO friend_requests VALUES("45","jo_deluca","lupe_garcia");

DROP TABLE IF EXISTS likes;

CREATE TABLE `likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(60) NOT NULL,
  `post_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`),
  KEY `username` (`username`),
  CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`username`) REFERENCES `users` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO likes VALUES("16","maybelle_fox","37");
INSERT INTO likes VALUES("17","carson_shaw","38");
INSERT INTO likes VALUES("20","maybelle_fox","39");
INSERT INTO likes VALUES("21","maybelle_fox","36");
INSERT INTO likes VALUES("22","lupe_garcia","39");
INSERT INTO likes VALUES("23","lupe_garcia","38");
INSERT INTO likes VALUES("24","jess_mccready","39");
INSERT INTO likes VALUES("26","jess_mccready","37");
INSERT INTO likes VALUES("27","jess_mccready","36");
INSERT INTO likes VALUES("30","lina_kostenko","46");
INSERT INTO likes VALUES("31","lina_kostenko","45");
INSERT INTO likes VALUES("32","lesya_ukrainka","47");
INSERT INTO likes VALUES("33","lina_kostenko","47");
INSERT INTO likes VALUES("34","lina_kostenko","48");
INSERT INTO likes VALUES("35","lina_kostenko","49");
INSERT INTO likes VALUES("36","maxine_chapman","38");
INSERT INTO likes VALUES("40","margot_robbie","37");
INSERT INTO likes VALUES("41","margot_robbie","36");
INSERT INTO likes VALUES("43","margot_robbie","16");
INSERT INTO likes VALUES("44","margot_robbie","15");
INSERT INTO likes VALUES("45","margot_robbie","13");
INSERT INTO likes VALUES("46","margot_robbie","38");
INSERT INTO likes VALUES("51","margot_robbie","4");
INSERT INTO likes VALUES("52","margot_robbie","1");
INSERT INTO likes VALUES("57","lupe_garcia","55");
INSERT INTO likes VALUES("59","lupe_garcia","54");
INSERT INTO likes VALUES("60","margot_robbie","57");
INSERT INTO likes VALUES("61","margot_robbie","54");
INSERT INTO likes VALUES("62","lupe_garcia","49");
INSERT INTO likes VALUES("63","lupe_garcia","46");
INSERT INTO likes VALUES("64","lupe_garcia","45");
INSERT INTO likes VALUES("65","lupe_garcia","58");
INSERT INTO likes VALUES("66","esti_gonzalez","61");
INSERT INTO likes VALUES("67","esti_gonzalez","57");
INSERT INTO likes VALUES("68","esti_gonzalez","60");
INSERT INTO likes VALUES("69","esti_gonzalez","56");
INSERT INTO likes VALUES("70","esti_gonzalez","39");
INSERT INTO likes VALUES("71","esti_gonzalez","16");
INSERT INTO likes VALUES("73","esti_gonzalez","15");
INSERT INTO likes VALUES("74","esti_gonzalez","14");
INSERT INTO likes VALUES("75","esti_gonzalez","13");
INSERT INTO likes VALUES("76","lupe_garcia","60");
INSERT INTO likes VALUES("77","lupe_garcia","53");
INSERT INTO likes VALUES("79","emma_watson","60");
INSERT INTO likes VALUES("80","emma_watson","54");
INSERT INTO likes VALUES("81","emma_watson","53");
INSERT INTO likes VALUES("83","lupe_garcia","62");
INSERT INTO likes VALUES("84","lupe_garcia","36");
INSERT INTO likes VALUES("86","lupe_garcia","13");
INSERT INTO likes VALUES("87","lupe_garcia","57");
INSERT INTO likes VALUES("88","lupe_garcia","68");
INSERT INTO likes VALUES("90","shirley_berlant","77");
INSERT INTO likes VALUES("91","lupe_garcia","51");
INSERT INTO likes VALUES("92","lupe_garcia","85");
INSERT INTO likes VALUES("93","lupe_garcia","84");
INSERT INTO likes VALUES("94","lupe_garcia","61");
INSERT INTO likes VALUES("95","lupe_garcia","94");
INSERT INTO likes VALUES("96","emma_watson","84");
INSERT INTO likes VALUES("97","emma_watson","62");
INSERT INTO likes VALUES("98","emma_watson","87");
INSERT INTO likes VALUES("99","lupe_garcia","98");
INSERT INTO likes VALUES("100","jess_mccready","94");
INSERT INTO likes VALUES("101","jess_mccready","103");
INSERT INTO likes VALUES("103","taylor_swift","16");
INSERT INTO likes VALUES("104","lupe_garcia","107");
INSERT INTO likes VALUES("105","lupe_garcia","103");
INSERT INTO likes VALUES("106","lupe_garcia","16");
INSERT INTO likes VALUES("107","lupe_garcia","109");
INSERT INTO likes VALUES("108","taylor_swift","104");
INSERT INTO likes VALUES("109","jess_mccready","109");
INSERT INTO likes VALUES("111","jess_mccready","16");

DROP TABLE IF EXISTS messages;

CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL,
  `body` text NOT NULL,
  `date` datetime NOT NULL,
  `opened` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_to` (`user_to`),
  KEY `user_from` (`user_from`),
  CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`user_to`) REFERENCES `users` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`user_from`) REFERENCES `users` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO messages VALUES("2","jess_mccready","lupe_garcia","Hey Jess","2023-01-05 19:21:56","yes","yes","no");
INSERT INTO messages VALUES("3","lupe_garcia","jess_mccready","Hi Lupe","2023-01-05 19:42:50","yes","yes","no");
INSERT INTO messages VALUES("4","jess_mccready","lupe_garcia","Whatcha up to?","2023-01-05 19:49:19","yes","yes","no");
INSERT INTO messages VALUES("5","lupe_garcia","jess_mccready","nothing much","2023-01-05 19:51:06","yes","yes","no");
INSERT INTO messages VALUES("6","lupe_garcia","jess_mccready","why?","2023-01-05 19:51:10","yes","yes","no");
INSERT INTO messages VALUES("7","jess_mccready","lupe_garcia","Hi Lupe","2023-01-05 19:51:19","yes","yes","no");
INSERT INTO messages VALUES("8","lupe_garcia","jess_mccready","man, you\'re scaring me","2023-01-05 19:51:54","yes","yes","no");
INSERT INTO messages VALUES("9","jess_mccready","lupe_garcia","don\'t be a baby, the chat is acting up","2023-01-05 19:52:30","yes","yes","no");
INSERT INTO messages VALUES("10","jess_mccready","lupe_garcia","so i was thinking","2023-01-05 19:52:46","yes","yes","no");
INSERT INTO messages VALUES("11","jess_mccready","lupe_garcia","we should go to vi\'s tonight\r\n","2023-01-05 19:53:07","yes","yes","no");
INSERT INTO messages VALUES("12","jess_mccready","lupe_garcia","you game?","2023-01-05 19:53:15","yes","yes","no");
INSERT INTO messages VALUES("13","lupe_garcia","jess_mccready","sure, why not","2023-01-05 19:53:22","yes","yes","no");
INSERT INTO messages VALUES("14","lupe_garcia","jess_mccready","be at yours at 8","2023-01-05 19:53:33","yes","yes","no");
INSERT INTO messages VALUES("15","lupe_garcia","jess_mccready","oi and get shaw to come","2023-01-05 19:53:53","yes","yes","no");
INSERT INTO messages VALUES("16","jess_mccready","lupe_garcia","uh fine","2023-01-05 19:54:22","yes","yes","no");
INSERT INTO messages VALUES("17","jess_mccready","lupe_garcia","but you are buying","2023-01-05 20:05:59","yes","yes","no");
INSERT INTO messages VALUES("19","jess_mccready","carson_shaw","Hi Jess!\r\n","2023-01-06 19:56:02","yes","yes","no");
INSERT INTO messages VALUES("20","jess_mccready","carson_shaw","Fancy a walk?","2023-01-06 19:56:15","yes","yes","no");
INSERT INTO messages VALUES("21","lupe_garcia","carson_shaw","Hey Lupe! Catch tonight?","2023-01-06 20:16:23","yes","yes","no");
INSERT INTO messages VALUES("22","lupe_garcia","maybelle_fox","Have you seen the new Avatar yet?","2023-01-06 20:17:36","yes","yes","no");
INSERT INTO messages VALUES("23","lupe_garcia","shirley_berlant","Lupe!! ¿Hablas español?","2023-01-06 20:18:35","yes","yes","no");
INSERT INTO messages VALUES("24","lupe_garcia","esti_gonzalez","Leaving tonight. Give me a ride?","2023-01-06 20:19:26","yes","yes","no");
INSERT INTO messages VALUES("25","lupe_garcia","greta_gill","Garcia,no one will pick you over Shaw","2023-01-06 20:56:09","yes","yes","no");
INSERT INTO messages VALUES("26","lupe_garcia","jo_deluca","Thanks, bud","2023-01-06 20:56:34","yes","yes","no");
INSERT INTO messages VALUES("27","lupe_garcia","margot_robbie","Hello, gorge","2023-01-06 20:57:11","yes","yes","no");
INSERT INTO messages VALUES("28","esti_gonzalez","lupe_garcia","Course, kid","2023-01-06 21:01:00","yes","yes","no");
INSERT INTO messages VALUES("29","lupe_garcia","jess_mccready","sure","2023-01-06 21:20:32","yes","yes","no");
INSERT INTO messages VALUES("30","lupe_garcia","jess_mccready","first round on me","2023-01-06 21:20:41","yes","yes","no");
INSERT INTO messages VALUES("31","lupe_garcia","jess_mccready","Lupe, where are you?","2023-01-07 23:51:35","yes","yes","no");
INSERT INTO messages VALUES("36","lesya_ukrainka","lina_kostenko","Не знаю, чи побачу Вас, чи ні...","2023-01-11 21:57:14","yes","yes","no");
INSERT INTO messages VALUES("37","lesya_ukrainka","lina_kostenko","А може, власне, і не в тому справа.","2023-01-11 21:57:42","yes","yes","no");
INSERT INTO messages VALUES("38","lupe_garcia","margot_robbie","HI!!!!","2023-01-12 20:15:58","yes","yes","no");
INSERT INTO messages VALUES("39","margot_robbie","lupe_garcia","HI!","2023-01-14 15:48:56","no","yes","no");
INSERT INTO messages VALUES("40","lina_kostenko","margot_robbie","Hey","2023-01-14 15:56:03","no","no","no");
INSERT INTO messages VALUES("41","lupe_garcia","jess_mccready","no way you are making us wait this long\r\n","2023-01-14 16:06:14","yes","yes","no");
INSERT INTO messages VALUES("42","lupe_garcia","esti_gonzalez","thanks!","2023-01-14 16:06:43","yes","yes","no");
INSERT INTO messages VALUES("43","jess_mccready","maxine_chapman","Hello Jess! Can you venmo me back fro the coffee?","2023-01-17 15:53:05","yes","yes","no");
INSERT INTO messages VALUES("44","lupe_garcia","emma_watson","Dear Lupe, thank you for being such wonderful company last evening!","2023-01-19 03:11:17","yes","yes","no");
INSERT INTO messages VALUES("45","lupe_garcia","emma_watson","Please, send all the best wishes to your family, I loved meeting them","2023-01-19 03:11:40","yes","yes","no");
INSERT INTO messages VALUES("46","lupe_garcia","greta_gill","Hello, how is it oging?","2023-01-19 11:28:02","yes","yes","no");
INSERT INTO messages VALUES("47","emma_watson","lupe_garcia","Will do, it was a pleasure to have you over!","2023-01-19 11:29:58","no","no","no");
INSERT INTO messages VALUES("48","selena_gomez","taylor_swift","Hi!\r\n","2023-06-13 23:19:10","no","no","no");

DROP TABLE IF EXISTS notifications;

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `link` varchar(100) NOT NULL,
  `datetime` datetime NOT NULL,
  `opened` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_to` (`user_to`),
  KEY `user_from` (`user_from`),
  CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`user_to`) REFERENCES `users` (`username`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `notifications_ibfk_2` FOREIGN KEY (`user_from`) REFERENCES `users` (`username`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO notifications VALUES("2","jess_mccready","lupe_garcia","Lupe Garcia commented on a post you commented on","post.php?id=37","2023-01-06 23:41:02","no","yes");
INSERT INTO notifications VALUES("3","jess_mccready","lupe_garcia","Lupe Garcia commented on a post you commented on","post.php?id=37","2023-01-07 00:09:29","no","yes");
INSERT INTO notifications VALUES("4","jess_mccready","lupe_garcia","Lupe Garcia commented on a post you commented on","post.php?id=36","2023-01-07 00:11:03","no","yes");
INSERT INTO notifications VALUES("5","jess_mccready","lupe_garcia","Lupe Garcia commented on a post you commented on","post.php?id=16","2023-01-07 00:14:10","yes","yes");
INSERT INTO notifications VALUES("6","jess_mccready","lupe_garcia","Lupe Garcia liked on your post","post.php?id=17","2023-01-07 00:17:25","no","yes");
INSERT INTO notifications VALUES("7","maybelle_fox","jess_mccready","Jess McCready commented on your post","post.php?id=39","2023-01-07 00:34:21","yes","yes");
INSERT INTO notifications VALUES("8","lupe_garcia","jess_mccready","Jess McCready commented onc your profile post","post.php?id=39","2023-01-07 00:34:21","yes","yes");
INSERT INTO notifications VALUES("9","lupe_garcia","jess_mccready","Jess McCready liked on your post","post.php?id=37","2023-01-07 00:34:24","yes","yes");
INSERT INTO notifications VALUES("10","lupe_garcia","jess_mccready","Jess McCready liked on your post","post.php?id=36","2023-01-07 00:36:28","no","yes");
INSERT INTO notifications VALUES("11","lupe_garcia","jess_mccready","Jess McCready liked on your post","post.php?id=29","2023-01-07 00:36:31","no","yes");
INSERT INTO notifications VALUES("12","lupe_garcia","jess_mccready","Jess McCready liked on your post","post.php?id=18","2023-01-07 00:36:34","no","yes");
INSERT INTO notifications VALUES("13","jess_mccready","lupe_garcia","Lupe Garcia commented on your post","post.php?id=22","2023-01-07 18:20:09","no","yes");
INSERT INTO notifications VALUES("14","maybelle_fox","jess_mccready","Jess McCready commented on your post","post.php?id=39","2023-01-08 00:40:31","yes","yes");
INSERT INTO notifications VALUES("15","lupe_garcia","jess_mccready","Jess McCready commented onc your profile post","post.php?id=39","2023-01-08 00:40:31","yes","yes");
INSERT INTO notifications VALUES("16","maybelle_fox","jess_mccready","Jess McCready commented on your post","post.php?id=39","2023-01-08 00:41:25","yes","yes");
INSERT INTO notifications VALUES("17","lupe_garcia","jess_mccready","Jess McCready commented onc your profile post","post.php?id=39","2023-01-08 00:41:25","yes","yes");
INSERT INTO notifications VALUES("18","maybelle_fox","jess_mccready","Jess McCready commented on your post","post.php?id=39","2023-01-08 00:41:53","yes","yes");
INSERT INTO notifications VALUES("19","lupe_garcia","jess_mccready","Jess McCready commented onc your profile post","post.php?id=39","2023-01-08 00:41:53","yes","yes");
INSERT INTO notifications VALUES("20","maybelle_fox","lupe_garcia","Lupe Garcia commented on your post","post.php?id=39","2023-01-08 00:42:47","yes","yes");
INSERT INTO notifications VALUES("21","jess_mccready","lupe_garcia","Lupe Garcia commented on a post you commented on","post.php?id=39","2023-01-08 00:42:47","yes","yes");
INSERT INTO notifications VALUES("22","lupe_garcia","jess_mccready","Jess McCready commented on your post","post.php?id=18","2023-01-08 00:46:09","no","yes");
INSERT INTO notifications VALUES("23","maybelle_fox","jess_mccready","Jess McCready commented on your post","post.php?id=39","2023-01-08 16:36:24","yes","yes");
INSERT INTO notifications VALUES("24","lupe_garcia","jess_mccready","Jess McCready commented onc your profile post","post.php?id=39","2023-01-08 16:36:24","yes","yes");
INSERT INTO notifications VALUES("25","lesya_ukrainka","lina_kostenko","Lina Kostenko posted on your profile","post.php?id=48","2023-01-11 21:56:40","no","yes");
INSERT INTO notifications VALUES("26","lesya_ukrainka","lina_kostenko","Lina Kostenko liked on your post","post.php?id=47","2023-01-11 21:56:46","yes","yes");
INSERT INTO notifications VALUES("27","jess_mccready","maxine_chapman","Maxine Chapman liked on your post","post.php?id=38","2023-01-12 19:39:26","yes","yes");
INSERT INTO notifications VALUES("28","jess_mccready","maxine_chapman","Maxine Chapman liked on your post","post.php?id=22","2023-01-12 19:39:28","no","yes");
INSERT INTO notifications VALUES("29","jess_mccready","maxine_chapman","Maxine Chapman liked on your post","post.php?id=21","2023-01-12 19:39:29","no","yes");
INSERT INTO notifications VALUES("30","jess_mccready","maxine_chapman","Maxine Chapman liked on your post","post.php?id=19","2023-01-12 19:39:31","no","yes");
INSERT INTO notifications VALUES("31","jess_mccready","maxine_chapman","Maxine Chapman commented on your post","post.php?id=19","2023-01-12 19:39:43","no","yes");
INSERT INTO notifications VALUES("32","jess_mccready","maxine_chapman","Maxine Chapman commented on your post","post.php?id=4","2023-01-12 19:39:55","yes","yes");
INSERT INTO notifications VALUES("33","jess_mccready","maxine_chapman","Maxine Chapman commented on your post","post.php?id=10","2023-01-12 19:40:05","no","yes");
INSERT INTO notifications VALUES("34","lupe_garcia","margot_robbie","Margot Robbie commented on your post","post.php?id=52","2023-01-12 19:43:42","no","yes");
INSERT INTO notifications VALUES("35","lupe_garcia","margot_robbie","Margot Robbie liked on your post","post.php?id=37","2023-01-12 19:43:44","yes","yes");
INSERT INTO notifications VALUES("36","lupe_garcia","margot_robbie","Margot Robbie liked on your post","post.php?id=36","2023-01-12 19:43:48","no","yes");
INSERT INTO notifications VALUES("37","lupe_garcia","margot_robbie","Margot Robbie liked on your post","post.php?id=29","2023-01-12 19:43:51","no","yes");
INSERT INTO notifications VALUES("38","lupe_garcia","margot_robbie","Margot Robbie liked on your post","post.php?id=16","2023-01-12 19:43:59","yes","yes");
INSERT INTO notifications VALUES("39","lupe_garcia","margot_robbie","Margot Robbie commented on your post","post.php?id=16","2023-01-12 19:44:02","yes","yes");
INSERT INTO notifications VALUES("40","jess_mccready","margot_robbie","Margot Robbie commented on a post you commented on","post.php?id=16","2023-01-12 19:44:02","yes","yes");
INSERT INTO notifications VALUES("41","lupe_garcia","margot_robbie","Margot Robbie liked on your post","post.php?id=15","2023-01-12 19:44:04","no","yes");
INSERT INTO notifications VALUES("42","lupe_garcia","margot_robbie","Margot Robbie commented on your post","post.php?id=15","2023-01-12 19:44:13","no","yes");
INSERT INTO notifications VALUES("43","lupe_garcia","margot_robbie","Margot Robbie liked on your post","post.php?id=13","2023-01-12 19:44:18","yes","yes");
INSERT INTO notifications VALUES("44","jess_mccready","margot_robbie","Margot Robbie posted on your profile","post.php?id=54","2023-01-12 19:44:42","yes","yes");
INSERT INTO notifications VALUES("45","jess_mccready","margot_robbie","Margot Robbie liked on your post","post.php?id=38","2023-01-12 19:44:45","yes","yes");
INSERT INTO notifications VALUES("46","jess_mccready","margot_robbie","Margot Robbie commented on your post","post.php?id=38","2023-01-12 19:45:19","yes","yes");
INSERT INTO notifications VALUES("47","lupe_garcia","margot_robbie","Margot Robbie commented on a post you commented on","post.php?id=38","2023-01-12 19:45:19","no","yes");
INSERT INTO notifications VALUES("48","jess_mccready","margot_robbie","Margot Robbie liked on your post","post.php?id=22","2023-01-12 19:45:23","no","yes");
INSERT INTO notifications VALUES("49","jess_mccready","margot_robbie","Margot Robbie liked on your post","post.php?id=19","2023-01-12 19:45:26","no","yes");
INSERT INTO notifications VALUES("50","jess_mccready","margot_robbie","Margot Robbie liked on your post","post.php?id=10","2023-01-12 19:45:27","no","yes");
INSERT INTO notifications VALUES("51","jess_mccready","margot_robbie","Margot Robbie liked on your post","post.php?id=9","2023-01-12 19:45:28","no","yes");
INSERT INTO notifications VALUES("52","jess_mccready","margot_robbie","Margot Robbie liked on your post","post.php?id=4","2023-01-12 19:45:30","yes","yes");
INSERT INTO notifications VALUES("53","jess_mccready","margot_robbie","Margot Robbie liked on your post","post.php?id=1","2023-01-12 19:45:31","yes","yes");
INSERT INTO notifications VALUES("54","carson_shaw","lupe_garcia","Lupe Garcia liked on your post","post.php?id=6","2023-01-12 19:46:01","no","no");
INSERT INTO notifications VALUES("55","carson_shaw","lupe_garcia","Lupe Garcia liked on your post","post.php?id=7","2023-01-12 19:46:01","no","no");
INSERT INTO notifications VALUES("56","carson_shaw","lupe_garcia","Lupe Garcia liked on your post","post.php?id=8","2023-01-12 19:46:02","no","no");
INSERT INTO notifications VALUES("57","carson_shaw","lupe_garcia","Lupe Garcia liked on your post","post.php?id=11","2023-01-12 19:46:03","no","no");
INSERT INTO notifications VALUES("58","carson_shaw","lupe_garcia","Lupe Garcia posted on your profile","post.php?id=55","2023-01-12 19:46:20","no","no");
INSERT INTO notifications VALUES("59","carson_shaw","lupe_garcia","Lupe Garcia commented on your post","post.php?id=11","2023-01-12 19:46:29","no","no");
INSERT INTO notifications VALUES("60","carson_shaw","lupe_garcia","Lupe Garcia commented on your post","post.php?id=6","2023-01-12 19:46:43","no","no");
INSERT INTO notifications VALUES("61","margot_robbie","lupe_garcia","Lupe Garcia liked on your post","post.php?id=54","2023-01-12 20:12:32","yes","yes");
INSERT INTO notifications VALUES("62","margot_robbie","lupe_garcia","Lupe Garcia liked on your post","post.php?id=54","2023-01-12 20:12:35","yes","yes");
INSERT INTO notifications VALUES("63","margot_robbie","lupe_garcia","Lupe Garcia commented on your post","post.php?id=54","2023-01-12 20:12:44","yes","yes");
INSERT INTO notifications VALUES("64","jess_mccready","lupe_garcia","Lupe Garcia commented onc your profile post","post.php?id=54","2023-01-12 20:12:44","yes","yes");
INSERT INTO notifications VALUES("65","lupe_garcia","margot_robbie","Margot Robbie liked on your post","post.php?id=57","2023-01-12 20:14:00","no","yes");
INSERT INTO notifications VALUES("66","lupe_garcia","margot_robbie","Margot Robbie commented on your post","post.php?id=57","2023-01-12 20:14:05","no","yes");
INSERT INTO notifications VALUES("67","jess_mccready","margot_robbie","Margot Robbie commented onc your profile post","post.php?id=54","2023-01-12 20:14:24","yes","yes");
INSERT INTO notifications VALUES("68","lupe_garcia","margot_robbie","Margot Robbie commented on a post you commented on","post.php?id=54","2023-01-12 20:14:24","yes","yes");
INSERT INTO notifications VALUES("69","lina_kostenko","lupe_garcia","Lupe Garciaaa liked on your post","post.php?id=49","2023-01-12 20:17:28","no","no");
INSERT INTO notifications VALUES("70","lina_kostenko","lupe_garcia","Lupe Garciaaa liked on your post","post.php?id=46","2023-01-12 20:17:29","no","no");
INSERT INTO notifications VALUES("71","lina_kostenko","lupe_garcia","Lupe Garciaaa liked on your post","post.php?id=45","2023-01-12 20:17:30","no","no");
INSERT INTO notifications VALUES("72","lina_kostenko","lupe_garcia","Lupe Garciaaa posted on your profile","post.php?id=58","2023-01-12 20:17:38","no","no");
INSERT INTO notifications VALUES("73","lupe_garcia","margot_robbie","Margot Robbie posted on your profile","post.php?id=59","2023-01-14 15:57:12","no","yes");
INSERT INTO notifications VALUES("74","lupe_garcia","margot_robbie","Margot Robbie posted on your profile","post.php?id=60","2023-01-14 15:57:48","no","yes");
INSERT INTO notifications VALUES("75","lupe_garcia","esti_gonzalez","Esti Gonzalez liked on your post","post.php?id=57","2023-01-14 16:08:04","no","yes");
INSERT INTO notifications VALUES("76","margot_robbie","esti_gonzalez","Esti Gonzalez liked on your post","post.php?id=60","2023-01-14 16:08:06","no","no");
INSERT INTO notifications VALUES("77","margot_robbie","esti_gonzalez","Esti Gonzalez commented on your post","post.php?id=60","2023-01-14 16:08:15","no","no");
INSERT INTO notifications VALUES("78","lupe_garcia","esti_gonzalez","Esti Gonzalez commented onc your profile post","post.php?id=60","2023-01-14 16:08:15","no","yes");
INSERT INTO notifications VALUES("79","lupe_garcia","esti_gonzalez","Esti Gonzalez liked on your post","post.php?id=56","2023-01-14 16:08:18","no","yes");
INSERT INTO notifications VALUES("80","maybelle_fox","esti_gonzalez","Esti Gonzalez liked on your post","post.php?id=39","2023-01-14 16:08:20","no","yes");
INSERT INTO notifications VALUES("81","lupe_garcia","esti_gonzalez","Esti Gonzalez commented on your post","post.php?id=52","2023-01-14 16:08:38","no","yes");
INSERT INTO notifications VALUES("82","margot_robbie","esti_gonzalez","Esti Gonzalez commented on a post you commented on","post.php?id=52","2023-01-14 16:08:38","no","no");
INSERT INTO notifications VALUES("83","lupe_garcia","esti_gonzalez","Esti Gonzalez liked on your post","post.php?id=16","2023-01-14 16:08:41","yes","yes");
INSERT INTO notifications VALUES("84","lupe_garcia","esti_gonzalez","Esti Gonzalez liked on your post","post.php?id=18","2023-01-14 16:08:44","no","yes");
INSERT INTO notifications VALUES("85","lupe_garcia","esti_gonzalez","Esti Gonzalez liked on your post","post.php?id=15","2023-01-14 16:08:45","no","yes");
INSERT INTO notifications VALUES("86","lupe_garcia","esti_gonzalez","Esti Gonzalez commented on your post","post.php?id=15","2023-01-14 16:08:50","no","yes");
INSERT INTO notifications VALUES("87","margot_robbie","esti_gonzalez","Esti Gonzalez commented on a post you commented on","post.php?id=15","2023-01-14 16:08:50","no","no");
INSERT INTO notifications VALUES("88","lupe_garcia","esti_gonzalez","Esti Gonzalez liked on your post","post.php?id=14","2023-01-14 16:08:53","yes","yes");
INSERT INTO notifications VALUES("89","lupe_garcia","esti_gonzalez","Esti Gonzalez commented on your post","post.php?id=14","2023-01-14 16:09:10","yes","yes");
INSERT INTO notifications VALUES("90","lupe_garcia","esti_gonzalez","Esti Gonzalez liked on your post","post.php?id=13","2023-01-14 16:09:13","yes","yes");
INSERT INTO notifications VALUES("91","margot_robbie","lupe_garcia","Lupe Garciaaa liked on your post","post.php?id=60","2023-01-14 16:47:39","no","no");
INSERT INTO notifications VALUES("92","jess_mccready","lupe_garcia","Lupe Garciaaa commented on your post","post.php?id=1","2023-01-14 16:58:46","yes","yes");
INSERT INTO notifications VALUES("93","lupe_garcia","jess_mccready","Jess McCready commented on a post you commented on","post.php?id=1","2023-01-14 16:59:00","no","yes");
INSERT INTO notifications VALUES("94","margot_robbie","lupe_garcia","Lupe Garciaaa posted on your profile","post.php?id=62","2023-01-14 20:02:23","no","no");
INSERT INTO notifications VALUES("95","margot_robbie","lupe_garcia","Lupe Garciaaa liked on your post","post.php?id=53","2023-01-14 20:02:26","no","no");
INSERT INTO notifications VALUES("96","margot_robbie","emma_watson","Emma Watson liked on your post","post.php?id=60","2023-01-14 20:03:13","no","no");
INSERT INTO notifications VALUES("97","margot_robbie","emma_watson","Emma Watson liked on your post","post.php?id=54","2023-01-14 20:03:14","no","no");
INSERT INTO notifications VALUES("98","margot_robbie","emma_watson","Emma Watson liked on your post","post.php?id=53","2023-01-14 20:03:16","no","no");
INSERT INTO notifications VALUES("99","lupe_garcia","emma_watson","Emma Watson liked on your post","post.php?id=62","2023-01-14 20:03:26","yes","yes");
INSERT INTO notifications VALUES("100","lupe_garcia","emma_watson","Emma Watson commented on your post","post.php?id=62","2023-01-14 20:03:45","yes","yes");
INSERT INTO notifications VALUES("101","margot_robbie","emma_watson","Emma Watson commented onc your profile post","post.php?id=62","2023-01-14 20:03:45","no","no");
INSERT INTO notifications VALUES("102","margot_robbie","lupe_garcia","Lupe Garciaaa commented onc your profile post","post.php?id=62","2023-01-14 20:04:31","no","no");
INSERT INTO notifications VALUES("103","emma_watson","lupe_garcia","Lupe Garciaaa commented on a post you commented on","post.php?id=62","2023-01-14 20:04:31","yes","yes");
INSERT INTO notifications VALUES("104","margot_robbie","jess_mccready","Jess McCready liked on your post","post.php?id=60","2023-01-15 17:25:13","no","no");
INSERT INTO notifications VALUES("105","maxine_chapman","lupe_garcia","Lupe Garcia posted on your profile","post.php?id=65","2023-01-15 17:28:56","no","yes");
INSERT INTO notifications VALUES("106","lupe_garcia","jo_deluca","Jo DeLuca posted on your profile","post.php?id=67","2023-01-15 21:11:18","yes","yes");
INSERT INTO notifications VALUES("107","lupe_garcia","maybelle_fox","Maybelle Fox posted on your profile","post.php?id=69","2023-01-16 16:52:37","yes","yes");
INSERT INTO notifications VALUES("108","maxine_chapman","lupe_garcia","Lupe Garciaaa commented on your post","post.php?id=4","2023-01-16 17:18:23","yes","yes");
INSERT INTO notifications VALUES("109","jess_mccready","lupe_garcia","Lupe Garciaaa commented onc your profile post","post.php?id=4","2023-01-16 17:18:23","no","yes");
INSERT INTO notifications VALUES("110","shirley_berlant","lupe_garcia","Lupe Garciaaa liked on your post","post.php?id=57","2023-01-16 17:20:49","yes","yes");
INSERT INTO notifications VALUES("111","maybelle_fox","lupe_garcia","Lupe Garciaaa liked on your post","post.php?id=68","2023-01-16 17:21:57","yes","yes");
INSERT INTO notifications VALUES("112","lupe_garcia","maybelle_fox","Maybelle Fox posted on your profile","post.php?id=76","2023-01-16 17:25:14","yes","yes");
INSERT INTO notifications VALUES("114","shirley_berlant","lupe_garcia","Lupe Garciaaa commented on your post","post.php?id=77","2023-01-17 00:14:44","no","no");
INSERT INTO notifications VALUES("115","maxine_chapman","lupe_garcia","Lupe Garcia liked on your post","post.php?id=51","2023-01-17 21:59:24","no","no");
INSERT INTO notifications VALUES("116","esti_gonzalez","lupe_garcia","Lupe Garcia liked on your post","post.php?id=61","2023-01-18 15:51:14","no","yes");
INSERT INTO notifications VALUES("117","esti_gonzalez","lupe_garcia","Lupe Garcia posted on your profile","post.php?id=87","2023-01-18 15:52:24","yes","yes");
INSERT INTO notifications VALUES("118","lupe_garcia","esti_gonzalez","Esti Gonzalez posted on your profile","post.php?id=88","2023-01-18 15:55:50","yes","yes");
INSERT INTO notifications VALUES("119","jess_mccready","lupe_garcia","Lupe Garcia liked on your post","post.php?id=94","2023-01-18 22:48:00","yes","yes");
INSERT INTO notifications VALUES("120","lupe_garcia","emma_watson","Emmaa Watson liked on your post","post.php?id=84","2023-01-19 02:40:00","no","yes");
INSERT INTO notifications VALUES("121","lupe_garcia","emma_watson","Emmaa Watson commented on your post","post.php?id=84","2023-01-19 02:40:06","no","yes");
INSERT INTO notifications VALUES("122","lupe_garcia","emma_watson","Emmaa Watson liked on your post","post.php?id=62","2023-01-19 02:40:14","yes","yes");
INSERT INTO notifications VALUES("123","lupe_garcia","emma_watson","Emmaa Watson liked on your post","post.php?id=87","2023-01-19 03:06:51","yes","yes");
INSERT INTO notifications VALUES("124","lupe_garcia","emma_watson","Emmaa Watson commented on your post","post.php?id=87","2023-01-19 03:07:03","yes","yes");
INSERT INTO notifications VALUES("125","esti_gonzalez","emma_watson","Emmaa Watson commented onc your profile post","post.php?id=87","2023-01-19 03:07:03","no","no");
INSERT INTO notifications VALUES("126","emma_watson","lupe_garcia","Lupe Garcia liked on your post","post.php?id=98","2023-01-19 11:29:32","no","no");
INSERT INTO notifications VALUES("127","jess_mccready","lupe_garcia","Lupe Garcia liked on your post","post.php?id=103","2023-01-19 12:35:38","no","yes");
INSERT INTO notifications VALUES("128","jess_mccready","lupe_garcia","Lupe Garcia commented on your post","post.php?id=103","2023-01-19 12:35:44","no","yes");
INSERT INTO notifications VALUES("129","lupe_garcia","taylor_swift","Taylor Swift liked on your post","post.php?id=16","2023-01-19 12:37:29","yes","yes");
INSERT INTO notifications VALUES("130","jess_mccready","lupe_garcia","Lupe Garcia posted on your profile","post.php?id=105","2023-01-19 12:38:55","no","yes");
INSERT INTO notifications VALUES("131","jess_mccready","lupe_garcia","Lupe Garcia commented on a post you commented on","post.php?id=16","2023-05-26 18:44:37","yes","yes");
INSERT INTO notifications VALUES("132","margot_robbie","lupe_garcia","Lupe Garcia commented on a post you commented on","post.php?id=16","2023-05-26 18:44:37","no","no");
INSERT INTO notifications VALUES("133","jess_mccready","lupe_garcia","Lupe Garcia liked on your post","post.php?id=103","2023-06-06 17:44:29","no","yes");
INSERT INTO notifications VALUES("134","lupe_garcia","jess_mccready","Jess McCready liked on your post","post.php?id=109","2023-06-13 23:34:21","no","no");
INSERT INTO notifications VALUES("135","lupe_garcia","jess_mccready","Jess McCready commented on your post","post.php?id=109","2023-06-13 23:34:26","no","no");
INSERT INTO notifications VALUES("136","lupe_garcia","jess_mccready","Jess McCready liked on your post","post.php?id=16","2023-06-13 23:37:02","no","no");
INSERT INTO notifications VALUES("137","lupe_garcia","jess_mccready","Jess McCready liked on your post","post.php?id=16","2023-06-13 23:37:03","no","no");

DROP TABLE IF EXISTS posts;

CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `likes` int(11) NOT NULL,
  `body` text NOT NULL,
  `added_by` varchar(60) NOT NULL,
  `user_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL,
  `image` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `added_by` (`added_by`),
  CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`added_by`) REFERENCES `users` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO posts VALUES("1","1","So you\'re a pitcher?","jess_mccready","none","2022-11-13 00:37:09","no","no","");
INSERT INTO posts VALUES("4","1","Moose Jaw? Saskatchewan? Canada?","maxine_chapman","jess_mccready","2022-11-13 00:43:35","no","no","");
INSERT INTO posts VALUES("13","3","Just perfected the forkpitch","lupe_garcia","none","2022-11-13 15:39:37","no","yes","");
INSERT INTO posts VALUES("14","1","Back home in Texas","lupe_garcia","none","2022-11-13 15:47:29","no","yes","");
INSERT INTO posts VALUES("15","2","Gave a call to Esti","jess_mccready","lupe_garcia","2022-11-13 15:47:32","no","no","");
INSERT INTO posts VALUES("16","5","Gotta go to Vi\'s. Care to join?","lupe_garcia","none","2022-11-13 16:54:08","no","no","");
INSERT INTO posts VALUES("36","4","Hey, hermano","lupe_garcia","jess_mccready","2023-01-05 13:14:24","no","no","");
INSERT INTO posts VALUES("37","3","Wanna play catch?","lupe_garcia","jess_mccready","2023-01-05 15:05:30","no","no","");
INSERT INTO posts VALUES("38","4","De Luca has the best arms","jess_mccready","none","2023-01-06 19:39:31","no","no","");
INSERT INTO posts VALUES("39","4","Have you seen the new Avatar yet?","maybelle_fox","lupe_garcia","2023-01-06 20:14:34","no","no","");
INSERT INTO posts VALUES("43","0","i-","maybelle_fox","none","2023-01-10 19:03:37","no","yes","");
INSERT INTO posts VALUES("45","2","Буває, часом сліпну від краси.\r\nСпинюсь, не тямлю, що воно за диво,—\r\nоці степи, це небо, ці ліси,\r\nусе так гарно, чисто, незрадливо,\r\nусе як є — дорога, явори,\r\nусе моє, все зветься — Україна.\r\nТака краса, висока і нетлінна,\r\nщо хоч спинись і з Богом говори.","lina_kostenko","none","2023-01-11 21:38:48","no","no","");
INSERT INTO posts VALUES("46","2","І як тепер тебе забути?\r\nДуша до краю добрела.\r\nТакої дивної отрути\r\nя ще ніколи не пила\r\nТакої чистої печалі,\r\nТакої спраглої жаги,\r\nТакого зойку у мовчанні,\r\nТакого сяйва навкруги.\r\nТакої зоряної тиші.\r\nТакого безміру в добі!..\r\nЦе, може, навіть і не вірші,\r\nА квіти, кинуті тобі.","lina_kostenko","none","2023-01-11 21:40:05","no","no","");
INSERT INTO posts VALUES("47","2","Ні долі, ні волі у мене нема,\nЗосталася тільки надія одна:\nНадія вернутись ще раз на Вкраїну,\nПоглянути ще раз на рідну країну,\nПоглянути ще раз на синій Дніпро, –\nТам жити чи вмерти, мені все одно;\nПоглянути ще раз на степ, могилки,\nВостаннє згадати палкії гадки…\nНі долі, ні волі у мене нема,\nЗосталася тільки надія одна.","lesya_ukrainka","none","2023-01-11 21:45:08","no","no","");
INSERT INTO posts VALUES("48","1","Не знаю, чи побачу Вас, чи ні. А може, власне, і не в тому справа. А головне, що десь вдалечині є хтось такий, як невтоленна спрага. Я не покличу щастя не моє. Луна луни туди не долітає. Я думаю про Вас. Я знаю, що Ви є. Моя душа й від цього вже світає.","lina_kostenko","lesya_ukrainka","2023-01-11 21:56:40","no","no","");
INSERT INTO posts VALUES("49","2","Мої кохані, милі вороги! Я мушу вам освідчитись в симпатії. Якби було вас менше навкруги, — людина може вдаритись в апатію.","lina_kostenko","none","2023-01-11 21:58:34","no","no","");
INSERT INTO posts VALUES("50","0","About to watch Grey\'s Anatomy!","maxine_chapman","none","2023-01-12 19:39:13","no","no","");
INSERT INTO posts VALUES("51","1","Vogue has a beautiful woman like Florence Pugh on the cover of their magazine and this is the best they can do? Like be for real, I’m getting sick of American Vogue","maxine_chapman","none","2023-01-12 19:40:44","no","yes","");
INSERT INTO posts VALUES("52","0","When JK Rowling trends I\'m reminded that there is an entire generation that didn\'t hear the word NO often enough growing up, and now that Joanne has said NO to them, their reaction going forward is to throw a tantrum (often mantrum) at the mere mention of her name. Spoiled brats.","lupe_garcia","none","2023-01-12 19:41:44","no","no","");
INSERT INTO posts VALUES("53","2","The time has finally come. Always knew it would. Was just a question of when. Jacob Rees-Mogg now, with no where else to turn, has finally played his last Brexiteer card: “Warning Remainers are deliberately undermining Brexit as they look to make UK a failure”","margot_robbie","none","2023-01-12 19:43:29","no","no","");
INSERT INTO posts VALUES("54","3","A soft Brexit was never \"on the table\" and then subsequently scuppered by Remainers out of purity. This is a myth. ","margot_robbie","jess_mccready","2023-01-12 19:44:42","no","no","");
INSERT INTO posts VALUES("55","1","Just read that John Lydon after backing Brexit has got himself an Irish passport because he’s sick of the hassle at airports. What an embarrassment he has become.","lupe_garcia","carson_shaw","2023-01-12 19:46:20","no","no","");
INSERT INTO posts VALUES("56","1","Capy slay!","lupe_garcia","none","2023-01-12 20:13:32","no","yes","");
INSERT INTO posts VALUES("57","3","Listening to Joan Jett on CapyMusic","shirley_berlant","lupe_garcia","2023-01-12 20:13:53","no","no","");
INSERT INTO posts VALUES("58","1","Slay","lupe_garcia","lina_kostenko","2023-01-12 20:17:38","no","yes","");
INSERT INTO posts VALUES("59","0","Dear world. Today, the bloodthirsty Islamist regime in Iran has executed 2 more innocent protesters:\r\n\r\n#MohammadMehdiKarami \r\n#MohammadHosseini \r\n\r\nThese innocent idealistic young men put their lives in danger for democracy in Iran. We are mourning as a nation. Help us save others.","margot_robbie","lupe_garcia","2023-01-14 15:57:12","no","yes","");
INSERT INTO posts VALUES("60","3","As Iranians, no matter what our political affiliation is, we have one common enemy: the Islamist regime in Iran. We must get united and focus our attention on getting rid of this virus which has infected our culture for decades. Our revolution is here.","margot_robbie","lupe_garcia","2023-01-14 15:57:48","no","no","");
INSERT INTO posts VALUES("61","2","Let\'s unite to end a dictatorial regime in IRAN and a global terrorist organization.","esti_gonzalez","none","2023-01-14 16:07:51","no","yes","");
INSERT INTO posts VALUES("62","2","Fantastic event last might. Many congrats to Margot and our mutual friend Emma! A game-changer.","lupe_garcia","margot_robbie","2023-01-14 20:02:23","no","no","");
INSERT INTO posts VALUES("66","0","Sir Keir Starmer again refuses to stand by his previous commitment to abolish university tuition fees","jo_deluca","none","2023-01-15 21:10:38","no","no","");
INSERT INTO posts VALUES("67","0","Is it even acceptable for Prime Minister Rishi Sunak to use private healthcare instead of the NHS?","jo_deluca","lupe_garcia","2023-01-15 21:11:18","no","no","");
INSERT INTO posts VALUES("68","1","If the club want to stop fan violence they should threaten to give the guy a season ticket, not a ban.","maybelle_fox","none","2023-01-16 16:51:53","no","no","");
INSERT INTO posts VALUES("74","0","<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/N5DG0x0OxYY\'></iframe><br>","maybelle_fox","none","2023-01-16 16:54:48","no","no","");
INSERT INTO posts VALUES("75","0","Live love laugh","lupe_garcia","none","2023-01-16 17:24:02","no","yes","");
INSERT INTO posts VALUES("76","0","Just fascinated by the complete resurgence of obviously misogynist tropes from people who evidently take it as a given that they\'re the goodies (and that they\'ll never be- gasp- 53 themselves).","maybelle_fox","lupe_garcia","2023-01-16 17:25:14","no","no","");
INSERT INTO posts VALUES("77","1","Would you intervene if you saw someone being sexually harassed on public transport?","shirley_berlant","none","2023-01-16 23:23:44","no","yes","");
INSERT INTO posts VALUES("82","0","","lupe_garcia","none","2023-01-18 00:43:07","no","yes","assets/images/posts/63c7247b6446eforgotten songs.jpg");
INSERT INTO posts VALUES("83","0","hello everybody","lupe_garcia","none","2023-01-18 02:02:58","no","yes","");
INSERT INTO posts VALUES("84","2","Sad news that Sir Alan Budd has died - he helped enormously in advising us on how to design and then launch the new Office for Budget Responsibility 13 years ago. A great public servant whose work will continue to benefit generations to come. Thank you, Alan","lupe_garcia","none","2023-01-18 02:33:01","no","no","");
INSERT INTO posts VALUES("85","1","Hello","lupe_garcia","none","2023-01-18 14:19:32","no","yes","");
INSERT INTO posts VALUES("86","0","Do you support the nurses strike?","esti_gonzalez","none","2023-01-18 15:16:54","no","no","");
INSERT INTO posts VALUES("87","1","The collapse of what was always a fragile train service in the UK is the most vivid example of dysfunctional Britain. As Nick Robinson pointed out on Today, Ukraine has a better train service than the UK.","lupe_garcia","esti_gonzalez","2023-01-18 15:52:24","no","no","");
INSERT INTO posts VALUES("88","0","Ditched the car with the help of NEW Elizabeth Line walking routes. Departing from each station, these walks are an exploration of the local area, full of secret hidden gems. Really enjoyed it!","esti_gonzalez","lupe_garcia","2023-01-18 15:55:50","no","no","");
INSERT INTO posts VALUES("89","0","","lupe_garcia","none","2023-01-18 17:03:39","no","yes","assets/images/posts/63c80a4b97cc3🪄.jpg");
INSERT INTO posts VALUES("90","0","fdgg dfhfhd","lupe_garcia","none","2023-01-18 17:07:14","no","yes","");
INSERT INTO posts VALUES("91","0","Madonna will take to the O2 Arena on 14 October as part of her Celebration Tour. So excited about it! What\'s your favourite Madonna song?","carson_shaw","none","2023-01-18 22:35:09","no","no","");
INSERT INTO posts VALUES("94","2","A Christmas light show has been left abandoned in Crystal Palace park as its organisers went into administration.","jess_mccready","none","2023-01-18 22:43:40","no","no","assets/images/posts/63c859fcc5e05circus.jpg");
INSERT INTO posts VALUES("97","0","I am sending so much love to you, hoping you’re ok and as well and happy as you can be in these strange times. And again, thank you to everyone working so hard to keep us safe and well. \nE \nXx","emma_watson","none","2023-01-19 04:51:55","no","no","");
INSERT INTO posts VALUES("98","1","\"Whether you support Ukrainian funding or not, the fundamental question is the American people deserve to know how their money is being spent - especially when we\'re talking about $120 billion of it.\"","emma_watson","none","2023-01-19 11:22:26","no","no","");
INSERT INTO posts VALUES("99","0","I see how Ukraine perseveres and fights every day, including to keep the electricity grid, water, and heat working. $125 million more in U.S. support for urgent energy needs will reinforce your brave and innovative work.","esti_gonzalez","none","2023-01-19 11:25:31","no","no","");
INSERT INTO posts VALUES("100","0","The United States will continue to support Ukraine for as long as it takes. Ukraine must be able to defend itself and be in the strongest possible position at the negotiating table when the time comes.","greta_gill","none","2023-01-19 11:27:14","no","no","");
INSERT INTO posts VALUES("101","0","Beautiful dress!","margot_robbie","none","2023-01-19 11:28:55","no","no","assets/images/posts/63c90d577ed8cEmma Watson batb.jpg");
INSERT INTO posts VALUES("102","0","new post! hello! jhgk","lupe_garcia","none","2023-01-19 11:41:12","no","yes","assets/images/posts/63c91038e3a99you know when girls just.jpg");
INSERT INTO posts VALUES("103","2","Stand with Ukraine","jess_mccready","none","2023-01-19 11:44:19","no","no","");
INSERT INTO posts VALUES("104","1","It fills me with such pride and joy to announce that my version of Speak Now will be out July 7 (just in time for July 9th, iykyk 😆) I first made Speak Now, completely self-written, between the ages of 18 and 20. Pre-order now at http://taylor.lnk.to/SpeakNowTaylorsVersion 💜💜💜","taylor_swift","none","2023-01-19 12:36:04","no","no","assets/images/posts/647f5169c2dadspeak_now.jpg");
INSERT INTO posts VALUES("105","0","hfhdgf dfgg","lupe_garcia","jess_mccready","2023-01-19 12:38:55","no","yes","");
INSERT INTO posts VALUES("106","0",",kjjlk","lupe_garcia","none","2023-01-26 18:49:26","no","yes","assets/images/posts/63d2af16c2afdcircus.jpg");
INSERT INTO posts VALUES("107","1",",kjjlk kkk","lupe_garcia","none","2023-01-26 18:49:31","no","yes","assets/images/posts/63d2af1ba2cdccircus.jpg");
INSERT INTO posts VALUES("108","0","No words appear before me in the aftermath","lupe_garcia","none","2023-05-26 18:45:00","no","no","");
INSERT INTO posts VALUES("109","2","me and ma girls","lupe_garcia","none","2023-06-06 18:07:41","no","no","assets/images/posts/647f4bbd64c84Gallery _ earthygemini.jpg");
INSERT INTO posts VALUES("110","0","Some\r\n","taylor_swift","none","2023-06-06 18:31:53","no","yes","assets/images/posts/647f5169c2dadspeak_now.jpg");
INSERT INTO posts VALUES("111","0","idle hands and all that","jess_mccready","none","2023-06-13 23:34:49","no","yes","assets/images/posts/6488d2e9c2cbebomb headers.jpg");
INSERT INTO posts VALUES("113","0","<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/XnbCSboujF4\'></iframe><br>","jess_mccready","none","2023-06-14 14:43:38","no","no","");
INSERT INTO posts VALUES("114","0","Ahhhhh Detroit that was so much fun!! First time I performed at Ford Field was singing the anthem there in 2006 and I remember thinking it felt impossible for a place to be that big, I was sooo insanely nervous - Thanks to those crowds this weekend for your endless energy and extremely loud scream-singing, you made us feel right at home. See you very soon Pittsburgh 🫶","taylor_swift","none","2023-06-14 15:57:48","no","no","");
INSERT INTO posts VALUES("115","0","Karma is that girl like 💕","taylor_swift","none","2023-06-14 15:58:25","no","no","");
INSERT INTO posts VALUES("116","0","Just had the wildest three nights in Arlington, TX. So proud to be the first artist to play 3 nights at AT&T Stadium & basically just wanted to say I’m counting down the seconds til we hit the stage in Tampa next week. Love u mean it seriously wow 😮","taylor_swift","none","2023-06-14 15:58:50","no","no","");
INSERT INTO posts VALUES("117","0","WELL. Last night was a rush. Thank you to everyone in that glorious Glendale night 2 crowd for giving us all you had and more. Counting down the hours til we get to play again. See you in Vegas 😆","taylor_swift","none","2023-06-14 15:59:16","no","no","");
INSERT INTO posts VALUES("118","0","The Lavender Haze video is out now. There is lots of lavender. There is lots of haze. ","taylor_swift","none","2023-06-14 16:00:17","no","no","assets/images/posts/6489b9e1a5b22lavender.jpg");
INSERT INTO posts VALUES("119","0","<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/h8DLofLM7No\'></iframe><br>","taylor_swift","none","2023-06-14 16:01:05","no","no","");
INSERT INTO posts VALUES("120","0","Anti hero but make it acoustic 🥲","taylor_swift","none","2023-06-14 16:01:25","no","no","");
INSERT INTO posts VALUES("121","0","UM. Looks like I’ll get to see more of your beautiful faces than previously expected… we’re adding 8 shows to the tour 😆","taylor_swift","none","2023-06-14 16:01:42","no","no","");
INSERT INTO posts VALUES("122","0","Can I ask you a question… did you ever wonder who was responsible for those immaculate crowd vocals?","taylor_swift","none","2023-06-14 16:06:19","no","no","");

DROP TABLE IF EXISTS trends;

CREATE TABLE `trends` (
  `title` varchar(50) NOT NULL,
  `hits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO trends VALUES("Brexit","3");
INSERT INTO trends VALUES("Vogue","2");
INSERT INTO trends VALUES("Sick","2");
INSERT INTO trends VALUES("Finally","2");
INSERT INTO trends VALUES("Remainers","2");
INSERT INTO trends VALUES("Slay","2");
INSERT INTO trends VALUES("Watch","1");
INSERT INTO trends VALUES("Greys","1");
INSERT INTO trends VALUES("Anatomy","1");
INSERT INTO trends VALUES("Beautiful","3");
INSERT INTO trends VALUES("Woman","1");
INSERT INTO trends VALUES("Florence","1");
INSERT INTO trends VALUES("Pugh","1");
INSERT INTO trends VALUES("Cover","1");
INSERT INTO trends VALUES("Magazine","1");
INSERT INTO trends VALUES("Real","1");
INSERT INTO trends VALUES("Getting","2");
INSERT INTO trends VALUES("American","2");
INSERT INTO trends VALUES("JK","1");
INSERT INTO trends VALUES("Rowling","1");
INSERT INTO trends VALUES("Trends","1");
INSERT INTO trends VALUES("Reminded","1");
INSERT INTO trends VALUES("Entire","1");
INSERT INTO trends VALUES("Generation","1");
INSERT INTO trends VALUES("Didnt","1");
INSERT INTO trends VALUES("Hear","1");
INSERT INTO trends VALUES("Word","1");
INSERT INTO trends VALUES("Growing","1");
INSERT INTO trends VALUES("Joanne","1");
INSERT INTO trends VALUES("Reaction","1");
INSERT INTO trends VALUES("Forward","1");
INSERT INTO trends VALUES("Throw","1");
INSERT INTO trends VALUES("Tantrum","1");
INSERT INTO trends VALUES("Mantrum","1");
INSERT INTO trends VALUES("Mere","1");
INSERT INTO trends VALUES("Mention","1");
INSERT INTO trends VALUES("Name","1");
INSERT INTO trends VALUES("Spoiled","1");
INSERT INTO trends VALUES("Brats","1");
INSERT INTO trends VALUES("Time","3");
INSERT INTO trends VALUES("Question","3");
INSERT INTO trends VALUES("Jacob","1");
INSERT INTO trends VALUES("ReesMogg","1");
INSERT INTO trends VALUES("Played","1");
INSERT INTO trends VALUES("Brexiteer","1");
INSERT INTO trends VALUES("Card","1");
INSERT INTO trends VALUES("Warning","1");
INSERT INTO trends VALUES("Deliberately","1");
INSERT INTO trends VALUES("Undermining","1");
INSERT INTO trends VALUES("Look","1");
INSERT INTO trends VALUES("UK","3");
INSERT INTO trends VALUES("Failure","1");
INSERT INTO trends VALUES("Soft","1");
INSERT INTO trends VALUES("Table","2");
INSERT INTO trends VALUES("Subsequently","1");
INSERT INTO trends VALUES("Scuppered","1");
INSERT INTO trends VALUES("Purity","1");
INSERT INTO trends VALUES("Myth","1");
INSERT INTO trends VALUES("Read","1");
INSERT INTO trends VALUES("John","1");
INSERT INTO trends VALUES("Lydon","1");
INSERT INTO trends VALUES("Irish","1");
INSERT INTO trends VALUES("Passport","1");
INSERT INTO trends VALUES("Hes","1");
INSERT INTO trends VALUES("Hassle","1");
INSERT INTO trends VALUES("Airports","1");
INSERT INTO trends VALUES("Embarrassment","1");
INSERT INTO trends VALUES("Capy","1");
INSERT INTO trends VALUES("Listening","1");
INSERT INTO trends VALUES("Joan","1");
INSERT INTO trends VALUES("Jett","1");
INSERT INTO trends VALUES("CapyMusic","1");
INSERT INTO trends VALUES("Dear","1");
INSERT INTO trends VALUES("World","1");
INSERT INTO trends VALUES("Bloodthirsty","1");
INSERT INTO trends VALUES("Islamist","2");
INSERT INTO trends VALUES("Regime","3");
INSERT INTO trends VALUES("Iran","4");
INSERT INTO trends VALUES("Executed","1");
INSERT INTO trends VALUES("2","2");
INSERT INTO trends VALUES("Innocent","2");
INSERT INTO trends VALUES("ProtestersrnrnMohammadMehdiKarami","1");
INSERT INTO trends VALUES("RnMohammadHosseini","1");
INSERT INTO trends VALUES("RnrnThese","1");
INSERT INTO trends VALUES("Idealistic","1");
INSERT INTO trends VALUES("Lives","1");
INSERT INTO trends VALUES("Danger","1");
INSERT INTO trends VALUES("Democracy","1");
INSERT INTO trends VALUES("Mourning","1");
INSERT INTO trends VALUES("Nation","1");
INSERT INTO trends VALUES("Help","2");
INSERT INTO trends VALUES("Save","1");
INSERT INTO trends VALUES("Iranians","1");
INSERT INTO trends VALUES("Matter","1");
INSERT INTO trends VALUES("Political","1");
INSERT INTO trends VALUES("Affiliation","1");
INSERT INTO trends VALUES("Common","1");
INSERT INTO trends VALUES("Enemy","1");
INSERT INTO trends VALUES("United","2");
INSERT INTO trends VALUES("Focus","1");
INSERT INTO trends VALUES("Attention","1");
INSERT INTO trends VALUES("Rid","1");
INSERT INTO trends VALUES("Virus","1");
INSERT INTO trends VALUES("Infected","1");
INSERT INTO trends VALUES("Culture","1");
INSERT INTO trends VALUES("Decades","1");
INSERT INTO trends VALUES("Revolution","1");
INSERT INTO trends VALUES("Unite","1");
INSERT INTO trends VALUES("Dictatorial","1");
INSERT INTO trends VALUES("Global","1");
INSERT INTO trends VALUES("Terrorist","1");
INSERT INTO trends VALUES("Organization","1");
INSERT INTO trends VALUES("Fantastic","1");
INSERT INTO trends VALUES("Event","1");
INSERT INTO trends VALUES("Congrats","1");
INSERT INTO trends VALUES("Margot","1");
INSERT INTO trends VALUES("Mutual","1");
INSERT INTO trends VALUES("Friend","1");
INSERT INTO trends VALUES("Emma","4");
INSERT INTO trends VALUES("Gamechanger","1");
INSERT INTO trends VALUES("Sir","2");
INSERT INTO trends VALUES("Keir","2");
INSERT INTO trends VALUES("Starmer","2");
INSERT INTO trends VALUES("Refuses","2");
INSERT INTO trends VALUES("Stand","3");
INSERT INTO trends VALUES("Previous","2");
INSERT INTO trends VALUES("Commitment","2");
INSERT INTO trends VALUES("Abolish","2");
INSERT INTO trends VALUES("University","2");
INSERT INTO trends VALUES("Tuition","2");
INSERT INTO trends VALUES("Fees","2");
INSERT INTO trends VALUES("Acceptable","1");
INSERT INTO trends VALUES("Prime","1");
INSERT INTO trends VALUES("Minister","1");
INSERT INTO trends VALUES("Rishi","1");
INSERT INTO trends VALUES("Sunak","1");
INSERT INTO trends VALUES("Private","1");
INSERT INTO trends VALUES("Healthcare","1");
INSERT INTO trends VALUES("Instead","1");
INSERT INTO trends VALUES("NHS","1");
INSERT INTO trends VALUES("Club","1");
INSERT INTO trends VALUES("Stop","1");
INSERT INTO trends VALUES("Fan","1");
INSERT INTO trends VALUES("Violence","1");
INSERT INTO trends VALUES("Threaten","1");
INSERT INTO trends VALUES("Guy","1");
INSERT INTO trends VALUES("Season","1");
INSERT INTO trends VALUES("Ticket","1");
INSERT INTO trends VALUES("Ban","1");
INSERT INTO trends VALUES("Fascinated","1");
INSERT INTO trends VALUES("Complete","1");
INSERT INTO trends VALUES("Resurgence","1");
INSERT INTO trends VALUES("Obviously","1");
INSERT INTO trends VALUES("Misogynist","1");
INSERT INTO trends VALUES("Tropes","1");
INSERT INTO trends VALUES("People","2");
INSERT INTO trends VALUES("Evidently","1");
INSERT INTO trends VALUES("Theyre","1");
INSERT INTO trends VALUES("Goodies","1");
INSERT INTO trends VALUES("Theyll","1");
INSERT INTO trends VALUES("Gasp","1");
INSERT INTO trends VALUES("53","1");
INSERT INTO trends VALUES("Themselves","1");
INSERT INTO trends VALUES("Intervene","1");
INSERT INTO trends VALUES("Sexually","1");
INSERT INTO trends VALUES("Harassed","1");
INSERT INTO trends VALUES("Public","1");
INSERT INTO trends VALUES("Transport","1");
INSERT INTO trends VALUES("Gorgeous","3");
INSERT INTO trends VALUES("Night","3");
INSERT INTO trends VALUES("Forgotten","1");
INSERT INTO trends VALUES("Songs","1");
INSERT INTO trends VALUES("Egrdfg","1");
INSERT INTO trends VALUES("Hjkl","2");
INSERT INTO trends VALUES("Collapse","1");
INSERT INTO trends VALUES("Fragile","1");
INSERT INTO trends VALUES("Train","2");
INSERT INTO trends VALUES("Service","2");
INSERT INTO trends VALUES("Vivid","1");
INSERT INTO trends VALUES("Example","1");
INSERT INTO trends VALUES("Dysfunctional","1");
INSERT INTO trends VALUES("Britain","1");
INSERT INTO trends VALUES("Nick","1");
INSERT INTO trends VALUES("Robinson","1");
INSERT INTO trends VALUES("Ukraine","5");
INSERT INTO trends VALUES("Ditched","1");
INSERT INTO trends VALUES("Car","1");
INSERT INTO trends VALUES("Elizabeth","1");
INSERT INTO trends VALUES("Line","1");
INSERT INTO trends VALUES("Walking","1");
INSERT INTO trends VALUES("Routes","1");
INSERT INTO trends VALUES("Departing","1");
INSERT INTO trends VALUES("Station","1");
INSERT INTO trends VALUES("Walks","1");
INSERT INTO trends VALUES("Exploration","1");
INSERT INTO trends VALUES("Local","1");
INSERT INTO trends VALUES("Secret","1");
INSERT INTO trends VALUES("Hidden","1");
INSERT INTO trends VALUES("Gems","1");
INSERT INTO trends VALUES("Enjoyed","1");
INSERT INTO trends VALUES("Fdgg","1");
INSERT INTO trends VALUES("Madonna","2");
INSERT INTO trends VALUES("O2","1");
INSERT INTO trends VALUES("Arena","1");
INSERT INTO trends VALUES("14","1");
INSERT INTO trends VALUES("October","1");
INSERT INTO trends VALUES("Celebration","1");
INSERT INTO trends VALUES("Tour","2");
INSERT INTO trends VALUES("Excited","1");
INSERT INTO trends VALUES("Whats","1");
INSERT INTO trends VALUES("Favourite","1");
INSERT INTO trends VALUES("Song","1");
INSERT INTO trends VALUES("Christmas","2");
INSERT INTO trends VALUES("Light","2");
INSERT INTO trends VALUES("Left","2");
INSERT INTO trends VALUES("Abandoned","2");
INSERT INTO trends VALUES("Crystal","2");
INSERT INTO trends VALUES("Palace","2");
INSERT INTO trends VALUES("Park","2");
INSERT INTO trends VALUES("Organisers","2");
INSERT INTO trends VALUES("Administration","2");
INSERT INTO trends VALUES("Circus","1");
INSERT INTO trends VALUES("Sending","1");
INSERT INTO trends VALUES("Love","2");
INSERT INTO trends VALUES("Hoping","1");
INSERT INTO trends VALUES("Youre","1");
INSERT INTO trends VALUES("Ok","1");
INSERT INTO trends VALUES("Happy","1");
INSERT INTO trends VALUES("Strange","1");
INSERT INTO trends VALUES("Times","1");
INSERT INTO trends VALUES("Thank","2");
INSERT INTO trends VALUES("Hard","1");
INSERT INTO trends VALUES("Safe","1");
INSERT INTO trends VALUES("RnE","1");
INSERT INTO trends VALUES("RnXx","1");
INSERT INTO trends VALUES("Support","3");
INSERT INTO trends VALUES("Ukrainian","1");
INSERT INTO trends VALUES("Funding","1");
INSERT INTO trends VALUES("Fundamental","1");
INSERT INTO trends VALUES("Deserve","1");
INSERT INTO trends VALUES("Money","1");
INSERT INTO trends VALUES("Spent","1");
INSERT INTO trends VALUES("Especially","1");
INSERT INTO trends VALUES("Talking","1");
INSERT INTO trends VALUES("120","1");
INSERT INTO trends VALUES("Billion","1");
INSERT INTO trends VALUES("Perseveres","1");
INSERT INTO trends VALUES("Fights","1");
INSERT INTO trends VALUES("Day","1");
INSERT INTO trends VALUES("Including","1");
INSERT INTO trends VALUES("Electricity","1");
INSERT INTO trends VALUES("Grid","1");
INSERT INTO trends VALUES("Water","1");
INSERT INTO trends VALUES("Heat","1");
INSERT INTO trends VALUES("125","1");
INSERT INTO trends VALUES("Million","1");
INSERT INTO trends VALUES("Urgent","1");
INSERT INTO trends VALUES("Energy","2");
INSERT INTO trends VALUES("Reinforce","1");
INSERT INTO trends VALUES("Brave","1");
INSERT INTO trends VALUES("Innovative","1");
INSERT INTO trends VALUES("Continue","1");
INSERT INTO trends VALUES("Takes","1");
INSERT INTO trends VALUES("Able","1");
INSERT INTO trends VALUES("Defend","1");
INSERT INTO trends VALUES("Strongest","1");
INSERT INTO trends VALUES("Position","1");
INSERT INTO trends VALUES("Negotiating","1");
INSERT INTO trends VALUES("Comes","1");
INSERT INTO trends VALUES("Dress","1");
INSERT INTO trends VALUES("Post","1");
INSERT INTO trends VALUES("Sdffsdf","1");
INSERT INTO trends VALUES("Hfh","1");
INSERT INTO trends VALUES("Kjjlk","2");
INSERT INTO trends VALUES("Ghjkl","1");
INSERT INTO trends VALUES("Somern","1");
INSERT INTO trends VALUES("Idle","2");
INSERT INTO trends VALUES("Hands","2");
INSERT INTO trends VALUES("Ahhhhh","1");
INSERT INTO trends VALUES("Detroit","1");
INSERT INTO trends VALUES("Fun","1");
INSERT INTO trends VALUES("Performed","1");
INSERT INTO trends VALUES("Ford","1");
INSERT INTO trends VALUES("Field","1");
INSERT INTO trends VALUES("Singing","1");
INSERT INTO trends VALUES("Anthem","1");
INSERT INTO trends VALUES("2006","1");
INSERT INTO trends VALUES("Remember","1");
INSERT INTO trends VALUES("Thinking","1");
INSERT INTO trends VALUES("Impossible","1");
INSERT INTO trends VALUES("Sooo","1");
INSERT INTO trends VALUES("Insanely","1");
INSERT INTO trends VALUES("Nervous","1");
INSERT INTO trends VALUES("Thanks","1");
INSERT INTO trends VALUES("Crowds","1");
INSERT INTO trends VALUES("Weekend","1");
INSERT INTO trends VALUES("Endless","1");
INSERT INTO trends VALUES("Extremely","1");
INSERT INTO trends VALUES("Loud","1");
INSERT INTO trends VALUES("Screamsinging","1");
INSERT INTO trends VALUES("Feel","1");
INSERT INTO trends VALUES("Home","1");
INSERT INTO trends VALUES("Soon","1");
INSERT INTO trends VALUES("Pittsburgh","1");
INSERT INTO trends VALUES("Karma","1");
INSERT INTO trends VALUES("Girl","1");
INSERT INTO trends VALUES("Wildest","1");
INSERT INTO trends VALUES("Nights","2");
INSERT INTO trends VALUES("Arlington","1");
INSERT INTO trends VALUES("TX","1");
INSERT INTO trends VALUES("Proud","1");
INSERT INTO trends VALUES("Artist","1");
INSERT INTO trends VALUES("Play","2");
INSERT INTO trends VALUES("3","1");
INSERT INTO trends VALUES("ATT","1");
INSERT INTO trends VALUES("Stadium","1");
INSERT INTO trends VALUES("Basically","1");
INSERT INTO trends VALUES("Counting","2");
INSERT INTO trends VALUES("Til","2");
INSERT INTO trends VALUES("Hit","1");
INSERT INTO trends VALUES("Stage","1");
INSERT INTO trends VALUES("Tampa","1");
INSERT INTO trends VALUES("Week","1");
INSERT INTO trends VALUES("Mean","1");
INSERT INTO trends VALUES("Seriously","1");
INSERT INTO trends VALUES("Wow","1");
INSERT INTO trends VALUES("Rush","1");
INSERT INTO trends VALUES("Glorious","1");
INSERT INTO trends VALUES("Glendale","1");
INSERT INTO trends VALUES("Crowd","2");
INSERT INTO trends VALUES("Giving","1");
INSERT INTO trends VALUES("Hours","1");
INSERT INTO trends VALUES("Vegas","1");
INSERT INTO trends VALUES("Lavender","2");
INSERT INTO trends VALUES("Haze","2");
INSERT INTO trends VALUES("Video","1");
INSERT INTO trends VALUES("Lots","2");
INSERT INTO trends VALUES("Anti","1");
INSERT INTO trends VALUES("Hero","1");
INSERT INTO trends VALUES("Acoustic","1");
INSERT INTO trends VALUES("UM","1");
INSERT INTO trends VALUES("Looks","1");
INSERT INTO trends VALUES("Previously","1");
INSERT INTO trends VALUES("Expected","1");
INSERT INTO trends VALUES("Adding","1");
INSERT INTO trends VALUES("8","1");
INSERT INTO trends VALUES("Responsible","1");
INSERT INTO trends VALUES("Immaculate","1");
INSERT INTO trends VALUES("Vocals","1");

DROP TABLE IF EXISTS users;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `signup_date` date NOT NULL,
  `profile_pic` varchar(255) NOT NULL,
  `num_posts` int(11) NOT NULL,
  `num_likes` int(11) NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `friend_array` text NOT NULL,
  `user_blocked` varchar(3) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO users VALUES("5","Jess","McCready","jess_mccready","mccready@baseball.com","d8578edf8458ce06fbc5bb76a58c5ca4","2022-11-12","assets/images/profile_pics/jess_mccreadyf7eacb3bd45fddd31b7e26a0605e783cn.jpeg","16","23","no",",lupe_garcia,carson_shaw,greta_gill, esti_gonzalez,maxine_chapman,","no");
INSERT INTO users VALUES("6","Lupe","Garcia","lupe_garcia","lux@baseball.com","d8578edf8458ce06fbc5bb76a58c5ca4","2022-11-12","assets/images/profile_pics/lupe_garcia60ed0eab95c02a30bab7afea23944c64n.jpeg","26","38","no",",jess_mccready,shirley_berlant,carson_shaw,emma_watson,maxine_chapman,greta_gill,","no");
INSERT INTO users VALUES("8","Maybelle","Fox","maybelle_fox","fox@gmail.com","d8578edf8458ce06fbc5bb76a58c5ca4","2023-01-04","assets/images/profile_pics/maybelle_fox90167eb24a01aea9108edf1225a15daan.jpeg","3","5","no",",carson_shaw,","no");
INSERT INTO users VALUES("9","Carson","Shaw","carson_shaw","shaw@baseball.com","d8578edf8458ce06fbc5bb76a58c5ca4","2023-01-06","assets/images/profile_pics/carson_shaw6c737064ec1c294adaa003af0cf417e9n.jpeg","0","5","no",",jess_mccready,maybelle_fox,lupe_garcia,","no");
INSERT INTO users VALUES("10","Greta","Gill","greta_gill","greta.gill@yahoo.com","d8578edf8458ce06fbc5bb76a58c5ca4","2023-01-06","assets/images/profile_pics/greta_gill2739f67c317ad8de82b201d89e382c7cn.jpeg","1","0","no",",lupe_garcia,","no");
INSERT INTO users VALUES("11","Emma","Watson","emma_watson","emma_watson@hollywood.co.uk","d8578edf8458ce06fbc5bb76a58c5ca4","2023-01-06","assets/images/profile_pics/emma_watson08db8bd27244b71b76bacee2209d51f6n.jpeg","2","1","no",",margot_robbie,lupe_garcia,lina_kostenko,","no");
INSERT INTO users VALUES("12","Jo","DeLuca","jo_deluca","jodeluca@gmail.com","d8578edf8458ce06fbc5bb76a58c5ca4","2023-01-06","assets/images/profile_pics/jo_delucafff6e4d97f30ee16887206c69180af2dn.jpeg","2","0","no",",","no");
INSERT INTO users VALUES("13","Shirley","Berlant","shirley_berlant","berlant@gmail.com","d8578edf8458ce06fbc5bb76a58c5ca4","2023-01-06","assets/images/profile_pics/shirley_berlantc5d5696ec99bb9d5cfcbe15bfec56338n.jpeg","1","2","no",",lupe_garcia,","yes");
INSERT INTO users VALUES("14","Maxine","Chapman","maxine_chapman","max_chap@gmail.com","d8578edf8458ce06fbc5bb76a58c5ca4","2023-01-06","assets/images/profile_pics/maxine_chapman5850e286ec15a1e728d66506e1e1639dn.jpeg","2","1","no",",jess_mccready,esti_gonzalez,lupe_garcia,","no");
INSERT INTO users VALUES("15","Esti","Gonzalez","esti_gonzalez","esti@gmail.com","d8578edf8458ce06fbc5bb76a58c5ca4","2023-01-06","assets/images/profile_pics/esti_gonzalez7031751584eb78f06da888006f07e15en.jpeg","3","2","no",",maxine_chapman,","no");
INSERT INTO users VALUES("16","Margot","Robbie","margot_robbie","margot_robbie@hollywood.co.uk","d8578edf8458ce06fbc5bb76a58c5ca4","2023-01-06","assets/images/profile_pics/margot_robbie8cbeb1dd90e196f606a8f9d3fe105dbcn.jpeg","5","8","no",",","no");
INSERT INTO users VALUES("17","Lesya","Ukrainka","lesya_ukrainka","ukrainka@poetry.co.ua","d8578edf8458ce06fbc5bb76a58c5ca4","2023-01-11","assets/images/profile_pics/Леся_Українкаf8a2cd9220a54a974a6092f7cc50bf4an.jpeg","1","2","no",",olha_kobylianska,lina_kostenko,","no");
INSERT INTO users VALUES("18","Olha","Kobylianska ","olha_kobylianska","kobylianska@poetry.co.ua","d8578edf8458ce06fbc5bb76a58c5ca4","2023-01-11","assets/images/profile_pics/olha_kobylianskac74fc02cbfe6c79485b1fbcd5d814ea9n.jpeg","0","0","no",",lesya_ukrainka,","no");
INSERT INTO users VALUES("19","Marco","Vovchok","marco_vovchok","marco_vovchok@poetry.co.ua","d8578edf8458ce06fbc5bb76a58c5ca4","2023-01-11","assets/images/profile_pics/marco_vovchoka7500c973d386aa4190f22d5ed12a834n.jpeg","0","0","no",",","no");
INSERT INTO users VALUES("20","Ivan","Franko","ivan_franko","franko@poetry.co.ua","d8578edf8458ce06fbc5bb76a58c5ca4","2023-01-11","assets/images/profile_pics/ivan_frankofed09222b7c82de6efb655af1527cfa8n.jpeg","0","0","no",",","no");
INSERT INTO users VALUES("21","Mykola","Khvylovy","mykola_khvylovy","khvylovy@poetry.co.ua","d8578edf8458ce06fbc5bb76a58c5ca4","2023-01-11","assets/images/profile_pics/mykola_khvylovye2a9fc1214e2b9cd71c3e26d43cc0412n.jpeg","0","0","no",",","no");
INSERT INTO users VALUES("22","Vasyl","Symonenko","vasyl_symonenko","vasyl_symonenko@poetry.co.ua","d8578edf8458ce06fbc5bb76a58c5ca4","2023-01-11","assets/images/profile_pics/vasyl_symonenko891bba4da5f6fb2652146adf32e21233n.jpeg","0","0","no",",","no");
INSERT INTO users VALUES("23","Ivan","Drach","ivan_drach","drach@poetry.co.ua","d8578edf8458ce06fbc5bb76a58c5ca4","2023-01-11","assets/images/profile_pics/ivan_drache654d1db80647f0d7abd3649839ae7bbn.jpeg","0","0","no",",","no");
INSERT INTO users VALUES("24","Yevhen","Malaniuk","yevhen_malaniuk","malaniuk@poetry.co.ua","d8578edf8458ce06fbc5bb76a58c5ca4","2023-01-11","assets/images/profile_pics/yevhen_malaniuk3f1a5d632f79066cbcf60e79cd75561en.jpeg","0","0","no",",","no");
INSERT INTO users VALUES("25","Lina","Kostenko","lina_kostenko","lina_kostenko@poetry.co.ua","d8578edf8458ce06fbc5bb76a58c5ca4","2023-01-11","assets/images/profile_pics/lina_kostenkod791b0707c05df8c9d5ed5e90dc58909n.jpeg","4","7","no",",lesya_ukrainka,lesya_ukrainka,","no");
INSERT INTO users VALUES("26","admin","","admin","admin@gmail.com","21232f297a57a5a743894a0e4a801fc3","2023-01-15","assets/images/profile_pics/defaults/head_deep_blue.png","0","0","no",",","no");
INSERT INTO users VALUES("28","Taylor","Swift","taylor_swift","taylor_swift@gmail.com","d8578edf8458ce06fbc5bb76a58c5ca4","2023-01-19","assets/images/profile_pics/taylor_swift320183270a1cd8133accde97c92fdf83n.jpeg","10","1","no",",selena_gomez,","no");
INSERT INTO users VALUES("29","Selena","Gomez","selena_gomez","selenagomez@gmail.com","d8578edf8458ce06fbc5bb76a58c5ca4","2023-06-13","assets/images/profile_pics/selena_gomez06dedd72e7a7265fb73b0531e569c7b5n.jpeg","0","0","no",",taylor_swift,","no");

