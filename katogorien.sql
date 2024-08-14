/*
 Navicat Premium Data Transfer

 Source Server         : 2222
 Source Server Type    : MySQL
 Source Server Version : 100408
 Source Host           : localhost:3306
 Source Schema         : vermietung

 Target Server Type    : MySQL
 Target Server Version : 100408
 File Encoding         : 65001

 Date: 26/02/2020 22:40:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for katogorien
-- ----------------------------
DROP TABLE IF EXISTS `katogorien`;
CREATE TABLE `katogorien`  (
  `Katname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of katogorien
-- ----------------------------
INSERT INTO `katogorien` VALUES ('VW/Audi', '/img/slider/1.jpg');
INSERT INTO `katogorien` VALUES ('Kleinwagen', '/img/slider/2.jpeg');
INSERT INTO `katogorien` VALUES ('luxus', '/img/bg.jpg');
INSERT INTO `katogorien` VALUES ('Sportwagen', '/img/slider/s.jpg');
INSERT INTO `katogorien` VALUES ('Sportwagen', '/img/slider/s.jpg');

-- ----------------------------
-- Table structure for kundendaten
-- ----------------------------
DROP TABLE IF EXISTS `kundendaten`;
CREATE TABLE `kundendaten`  (
  `ID` int(11) NOT NULL,
  `Name` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Nachname` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `PLZ_ORT` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Strasse` varchar(80) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Email` varchar(80) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Passwort` varchar(80) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for kundenservice
-- ----------------------------
DROP TABLE IF EXISTS `kundenservice`;
CREATE TABLE `kundenservice`  (
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `rank` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sterne` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kundenservice
-- ----------------------------
INSERT INTO `kundenservice` VALUES ('Max M.', '1st Level Supportleitung', '94');
INSERT INTO `kundenservice` VALUES ('Sascha R.', 'Auszubildender', '1');

-- ----------------------------
-- Table structure for slider
-- ----------------------------
DROP TABLE IF EXISTS `slider`;
CREATE TABLE `slider`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `date` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `pfad` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Sponsor` enum('ja','nein') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'nein',
  `Sponsor_von` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of slider
-- ----------------------------
INSERT INTO `slider` VALUES (1, 'Volkswagen', '0000-00-00 00:00:00', '/img/slider/1.jpg', 'ja', 'Schneider');
INSERT INTO `slider` VALUES (2, 'Tesla Model S', '0000-00-00 00:00:00', '/img/slider/s.jpg', 'ja', 'Telsa');
INSERT INTO `slider` VALUES (3, 'afsdaf', '2020-02-19 23:12:57', '/img/slider/1.jpg', 'nein', NULL);
INSERT INTO `slider` VALUES (4, 'dsfgdfsg', '2020-02-19 23:12:46', '/img/slider/2.jpeg', 'nein', NULL);
INSERT INTO `slider` VALUES (5, 'fdsf', '2020-02-19 23:12:51', '/img/slider/s.jpg', 'nein', NULL);

-- ----------------------------
-- Table structure for toasts
-- ----------------------------
DROP TABLE IF EXISTS `toasts`;
CREATE TABLE `toasts`  (
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nachname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `item` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of toasts
-- ----------------------------
INSERT INTO `toasts` VALUES ('Travis', 'Anne', 'laoreet ipsum. Curabitur consequat, lectus sit amet', 'eros turpis');
INSERT INTO `toasts` VALUES ('Avram', 'Brynn', 'et ultrices', 'Phasellus fermentum convallis ligula. Donec luctus aliquet odio.');
INSERT INTO `toasts` VALUES ('Carson', 'Dominique', 'lorem ipsum sodales purus, in molestie tortor nibh sit amet', 'amet ultricies sem magna nec');
INSERT INTO `toasts` VALUES ('Grant', 'Amena', 'interdum ligula eu enim. Etiam imperdiet', 'in consequat enim diam vel arcu. Curabitur');
INSERT INTO `toasts` VALUES ('Oren', 'Anastasia', 'Sed nunc est, mollis non, cursus non,', 'scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed,');
INSERT INTO `toasts` VALUES ('Akeem', 'Gail', 'id risus quis diam luctus', 'orci. Ut semper pretium neque. Morbi quis urna.');
INSERT INTO `toasts` VALUES ('Duncan', 'Whoopi', 'cursus a, enim. Suspendisse aliquet,', 'ultrices');
INSERT INTO `toasts` VALUES ('Lewis', 'Brielle', 'odio vel est tempor bibendum. Donec', 'penatibus et magnis dis parturient montes, nascetur');
INSERT INTO `toasts` VALUES ('Damian', 'Kessie', 'augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna', 'amet luctus vulputate,');
INSERT INTO `toasts` VALUES ('Amos', 'Lila', 'amet ultricies sem magna nec', 'vitae sodales nisi magna sed');
INSERT INTO `toasts` VALUES ('Reese', 'Zenia', 'magna. Sed eu eros. Nam consequat dolor vitae dolor.', 'Aliquam gravida mauris ut mi. Duis risus odio, auctor vitae,');
INSERT INTO `toasts` VALUES ('Cade', 'Whoopi', 'orci luctus et ultrices posuere cubilia Curae; Phasellus ornare. Fusce', 'sodales. Mauris blandit enim consequat purus.');
INSERT INTO `toasts` VALUES ('Acton', 'Sacha', 'Integer mollis. Integer tincidunt aliquam arcu. Aliquam', 'porttitor eros nec tellus. Nunc lectus pede, ultrices');
INSERT INTO `toasts` VALUES ('Asher', 'Anjolie', 'id sapien. Cras dolor dolor, tempus non, lacinia at, iaculis', 'Proin nisl sem, consequat nec, mollis');
INSERT INTO `toasts` VALUES ('Kamal', 'Aileen', 'enim mi tempor lorem, eget', 'augue porttitor interdum. Sed auctor');
INSERT INTO `toasts` VALUES ('Lyle', 'Hanna', 'vestibulum', 'aliquet nec, imperdiet');
INSERT INTO `toasts` VALUES ('Victor', 'Aiko', 'vel arcu. Curabitur ut odio vel est tempor bibendum. Donec', 'non nisi. Aenean eget metus. In nec');
INSERT INTO `toasts` VALUES ('Quinn', 'Brittany', 'arcu. Nunc mauris.', 'id nunc interdum feugiat. Sed nec metus facilisis lorem');
INSERT INTO `toasts` VALUES ('Mufutau', 'MacKensie', 'ligula tortor, dictum eu, placerat eget, venenatis', 'velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor');
INSERT INTO `toasts` VALUES ('Maxwell', 'Chava', 'lacus. Quisque imperdiet, erat nonummy', 'adipiscing elit. Aliquam auctor, velit eget');
INSERT INTO `toasts` VALUES ('Shad', 'Celeste', 'eu nibh vulputate mauris sagittis placerat. Cras', 'Donec consectetuer mauris id sapien.');
INSERT INTO `toasts` VALUES ('Lucian', 'Casey', 'ultrices sit amet,', 'cursus et, eros. Proin ultrices.');
INSERT INTO `toasts` VALUES ('Herrod', 'Quin', 'orci luctus et ultrices posuere cubilia Curae; Donec', 'nisi nibh lacinia');
INSERT INTO `toasts` VALUES ('Jacob', 'Orla', 'mollis. Phasellus libero mauris, aliquam eu,', 'dui');
INSERT INTO `toasts` VALUES ('Evan', 'Shelly', 'in felis. Nulla tempor', 'Suspendisse tristique');
INSERT INTO `toasts` VALUES ('Laith', 'Iris', 'Ut', 'sed consequat auctor, nunc');
INSERT INTO `toasts` VALUES ('Cody', 'Sandra', 'vel est tempor bibendum. Donec felis orci, adipiscing non,', 'laoreet');
INSERT INTO `toasts` VALUES ('Owen', 'Rebecca', 'hendrerit. Donec porttitor tellus non magna. Nam ligula', 'dolor quam, elementum at, egestas a,');
INSERT INTO `toasts` VALUES ('Orson', 'Tasha', 'Nam porttitor scelerisque neque. Nullam', 'egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae,');
INSERT INTO `toasts` VALUES ('Chandler', 'Claudia', 'amet, risus. Donec nibh enim, gravida', 'tellus faucibus leo, in lobortis tellus justo sit amet');
INSERT INTO `toasts` VALUES ('Stephen', 'Debra', 'fermentum risus, at fringilla purus', 'Nulla eget');
INSERT INTO `toasts` VALUES ('Emerson', 'Quyn', 'ligula. Donec luctus aliquet odio. Etiam ligula tortor,', 'sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus');
INSERT INTO `toasts` VALUES ('Oliver', 'Sophia', 'ut eros non enim commodo hendrerit. Donec', 'felis eget varius ultrices, mauris ipsum');
INSERT INTO `toasts` VALUES ('Garrett', 'Dakota', 'sed orci lobortis augue scelerisque mollis. Phasellus libero mauris,', 'tristique aliquet.');
INSERT INTO `toasts` VALUES ('Christian', 'Amity', 'Proin non massa', 'In nec');
INSERT INTO `toasts` VALUES ('Raymond', 'Yuri', 'sit amet ante.', 'leo elementum sem, vitae aliquam eros turpis non');
INSERT INTO `toasts` VALUES ('Louis', 'Nell', 'dapibus id, blandit at,', 'Etiam ligula tortor, dictum eu, placerat eget,');
INSERT INTO `toasts` VALUES ('Abel', 'Halee', 'facilisi. Sed neque. Sed eget lacus. Mauris', 'facilisis. Suspendisse commodo');
INSERT INTO `toasts` VALUES ('Avram', 'Leandra', 'Nulla facilisis. Suspendisse commodo tincidunt nibh.', 'velit egestas lacinia. Sed');
INSERT INTO `toasts` VALUES ('Adrian', 'Jana', 'nonummy ut, molestie in, tempus eu, ligula.', 'tincidunt dui augue eu tellus. Phasellus elit pede, malesuada');
INSERT INTO `toasts` VALUES ('Mufutau', 'Vivian', 'Proin nisl sem, consequat nec, mollis', 'a, magna. Lorem ipsum dolor sit amet, consectetuer');
INSERT INTO `toasts` VALUES ('Andrew', 'Kevyn', 'sed orci lobortis augue scelerisque mollis. Phasellus libero', 'nec, eleifend');
INSERT INTO `toasts` VALUES ('Amal', 'Anika', 'eu nibh vulputate', 'vel arcu. Curabitur ut odio');
INSERT INTO `toasts` VALUES ('Tate', 'Basia', 'a, arcu. Sed', 'mi fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet,');
INSERT INTO `toasts` VALUES ('Finn', 'Sierra', 'Nunc commodo auctor velit.', 'sodales. Mauris');
INSERT INTO `toasts` VALUES ('Fletcher', 'Barbara', 'vulputate, lacus. Cras interdum. Nunc sollicitudin', 'convallis, ante lectus convallis est, vitae sodales nisi magna sed');
INSERT INTO `toasts` VALUES ('Garrison', 'Yeo', 'sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem', 'malesuada vel, convallis');
INSERT INTO `toasts` VALUES ('Dolan', 'Naida', 'ullamcorper, velit in', 'lacus pede sagittis augue,');
INSERT INTO `toasts` VALUES ('Buckminster', 'Chantale', 'quam. Curabitur vel lectus.', 'tellus id nunc');
INSERT INTO `toasts` VALUES ('Hamilton', 'Barbara', 'erat eget', 'arcu imperdiet');
INSERT INTO `toasts` VALUES ('Vaughan', 'Cailin', 'pharetra, felis eget varius', 'vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin');
INSERT INTO `toasts` VALUES ('Dane', 'Jolie', 'facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc', 'dolor. Fusce');
INSERT INTO `toasts` VALUES ('Lane', 'Demetria', 'iaculis, lacus pede sagittis augue, eu tempor erat neque', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur');
INSERT INTO `toasts` VALUES ('Nissim', 'Kelsie', 'tristique neque venenatis lacus. Etiam bibendum fermentum metus.', 'semper egestas, urna justo faucibus lectus, a');
INSERT INTO `toasts` VALUES ('Kasimir', 'Dara', 'orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare,', 'placerat. Cras dictum ultricies ligula. Nullam enim. Sed');
INSERT INTO `toasts` VALUES ('Steven', 'MacKenzie', 'hendrerit consectetuer, cursus et, magna. Praesent interdum', 'Donec est. Nunc ullamcorper, velit');
INSERT INTO `toasts` VALUES ('Hamilton', 'Shelly', 'arcu. Vestibulum ut eros non', 'Quisque fringilla euismod enim.');
INSERT INTO `toasts` VALUES ('Dillon', 'Naomi', 'sem elit, pharetra ut, pharetra sed, hendrerit a, arcu. Sed', 'mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies');
INSERT INTO `toasts` VALUES ('Luke', 'Anne', 'Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede.', 'ultricies sem magna');
INSERT INTO `toasts` VALUES ('Reuben', 'Judith', 'eget tincidunt dui augue eu tellus. Phasellus elit pede, malesuada', 'Integer tincidunt aliquam');
INSERT INTO `toasts` VALUES ('Drake', 'Zena', 'ac libero nec ligula consectetuer rhoncus. Nullam', 'sed libero. Proin sed turpis');
INSERT INTO `toasts` VALUES ('Jerry', 'Kyla', 'non, vestibulum nec,', 'Proin velit. Sed malesuada augue ut lacus.');
INSERT INTO `toasts` VALUES ('Griffin', 'Tamara', 'Sed', 'eget');
INSERT INTO `toasts` VALUES ('Arthur', 'Wendy', 'Nullam lobortis', 'habitant morbi tristique');
INSERT INTO `toasts` VALUES ('Lee', 'Taylor', 'arcu. Vestibulum ante ipsum primis in', 'commodo hendrerit. Donec porttitor tellus non magna. Nam');
INSERT INTO `toasts` VALUES ('Steven', 'Aspen', 'commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies', 'tincidunt dui augue eu tellus. Phasellus elit');
INSERT INTO `toasts` VALUES ('Yasir', 'Brynne', 'Curabitur ut odio vel est tempor bibendum. Donec felis', 'ut, sem. Nulla interdum. Curabitur dictum.');
INSERT INTO `toasts` VALUES ('Barrett', 'Lucy', 'sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris', 'eget, venenatis a, magna. Lorem ipsum dolor sit');
INSERT INTO `toasts` VALUES ('Brett', 'Sopoline', 'luctus vulputate, nisi sem semper erat, in consectetuer ipsum', 'congue');
INSERT INTO `toasts` VALUES ('Hamish', 'Lesley', 'pretium aliquet, metus urna convallis erat, eget tincidunt dui', 'lacus. Mauris non dui');
INSERT INTO `toasts` VALUES ('Elijah', 'Rhona', 'Phasellus ornare. Fusce mollis. Duis sit amet', 'enim commodo hendrerit. Donec porttitor tellus non magna. Nam');
INSERT INTO `toasts` VALUES ('Luke', 'Chiquita', 'libero mauris, aliquam', 'Donec tincidunt. Donec vitae');
INSERT INTO `toasts` VALUES ('Alec', 'Bianca', 'ornare egestas ligula. Nullam', 'nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque');
INSERT INTO `toasts` VALUES ('Orson', 'Tanisha', 'Duis mi enim, condimentum eget, volutpat ornare,', 'Nunc laoreet lectus quis massa. Mauris vestibulum, neque');
INSERT INTO `toasts` VALUES ('Stuart', 'Yen', 'dui,', 'habitant morbi tristique senectus et netus et malesuada fames ac');
INSERT INTO `toasts` VALUES ('Hop', 'Stacey', 'urna. Nunc quis arcu vel quam dignissim pharetra. Nam ac', 'velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque');
INSERT INTO `toasts` VALUES ('Lane', 'Isabelle', 'euismod est', 'Donec tempor, est ac mattis semper, dui lectus rutrum urna,');
INSERT INTO `toasts` VALUES ('Alden', 'Elaine', 'gravida sagittis. Duis', 'sit amet diam eu');
INSERT INTO `toasts` VALUES ('Judah', 'Adena', 'egestas a, scelerisque sed, sapien. Nunc', 'tempus mauris erat eget ipsum.');
INSERT INTO `toasts` VALUES ('Griffin', 'Alyssa', 'rutrum', 'dictum. Phasellus in felis. Nulla');
INSERT INTO `toasts` VALUES ('Gray', 'Hollee', 'dui augue eu tellus. Phasellus elit pede, malesuada vel,', 'natoque penatibus et magnis dis parturient montes, nascetur');
INSERT INTO `toasts` VALUES ('Dennis', 'Cameran', 'eget laoreet posuere, enim nisl elementum purus,', 'mauris erat eget ipsum. Suspendisse sagittis.');
INSERT INTO `toasts` VALUES ('Trevor', 'Martha', 'Curabitur consequat, lectus sit amet luctus', 'natoque penatibus');
INSERT INTO `toasts` VALUES ('Quinn', 'Quinn', 'Aliquam ornare, libero', 'vel arcu. Curabitur ut odio vel est tempor bibendum. Donec');
INSERT INTO `toasts` VALUES ('Isaac', 'Martena', 'euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget', 'cursus purus. Nullam scelerisque neque sed sem egestas');
INSERT INTO `toasts` VALUES ('Dillon', 'Wyoming', 'imperdiet', 'tempus risus. Donec egestas. Duis');
INSERT INTO `toasts` VALUES ('Forrest', 'Sharon', 'ipsum primis in', 'non ante bibendum ullamcorper. Duis');
INSERT INTO `toasts` VALUES ('Stone', 'Cassidy', 'elementum sem, vitae aliquam eros turpis non', 'arcu. Vivamus sit amet');
INSERT INTO `toasts` VALUES ('Tobias', 'Glenna', 'cursus non, egestas a, dui. Cras pellentesque. Sed dictum.', 'In lorem. Donec elementum, lorem ut aliquam iaculis,');
INSERT INTO `toasts` VALUES ('Slade', 'Germane', 'mauris eu elit. Nulla facilisi. Sed', 'odio. Aliquam vulputate ullamcorper magna. Sed eu eros. Nam');
INSERT INTO `toasts` VALUES ('Wallace', 'Laurel', 'In', 'malesuada augue');
INSERT INTO `toasts` VALUES ('Joel', 'Ainsley', 'laoreet posuere, enim nisl elementum purus, accumsan interdum', 'facilisis non, bibendum sed,');
INSERT INTO `toasts` VALUES ('Lyle', 'Lilah', 'ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere', 'elit fermentum risus, at');
INSERT INTO `toasts` VALUES ('Leo', 'Chelsea', 'euismod est arcu ac orci. Ut', 'risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed');
INSERT INTO `toasts` VALUES ('Bevis', 'Maya', 'Sed dictum.', 'Aenean egestas hendrerit neque. In');
INSERT INTO `toasts` VALUES ('Lionel', 'Joan', 'a', 'nisi dictum augue malesuada malesuada.');
INSERT INTO `toasts` VALUES ('Declan', 'Gwendolyn', 'taciti sociosqu ad litora torquent per', 'elementum purus, accumsan interdum libero dui nec');
INSERT INTO `toasts` VALUES ('Hop', 'Rosalyn', 'malesuada vel, venenatis', 'molestie arcu. Sed eu nibh vulputate mauris');
INSERT INTO `toasts` VALUES ('Kareem', 'Serina', 'nibh dolor, nonummy ac, feugiat non,', 'netus et');
INSERT INTO `toasts` VALUES ('Travis', 'Sacha', 'Quisque tincidunt', 'non dui nec urna suscipit nonummy.');

SET FOREIGN_KEY_CHECKS = 1;
