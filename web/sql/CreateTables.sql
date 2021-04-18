/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  core i5
 * Created: Apr 4, 2021
 */


CREATE TABLE `security_question` (
  `security_question_id` int NOT NULL AUTO_INCREMENT,
  `security_question_text` varchar(255) NOT NULL,
  PRIMARY KEY (`security_question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- freelancer.user_type definition

CREATE TABLE `user_type` (
  `user_type_id` int NOT NULL AUTO_INCREMENT,
  `user_type_name` varchar(100) NOT NULL,
  PRIMARY KEY (`user_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- freelancer.users definition

CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type_id` int NOT NULL,
  `security_question_id` int NOT NULL,
  `security_answer` varchar(100) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `users_username` (`username`),
  KEY `users_FK` (`user_type_id`),
  KEY `users_FK_1` (`security_question_id`),
  CONSTRAINT `users_FK` FOREIGN KEY (`user_type_id`) REFERENCES `user_type` (`user_type_id`),
  CONSTRAINT `users_FK_1` FOREIGN KEY (`security_question_id`) REFERENCES `security_question` (`security_question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- freelancer.payment definition

CREATE TABLE `payment` (
  `payment_id` varchar(255) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `zip` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `payment_type_id` int NOT NULL,
  PRIMARY KEY (`payment_id`),
  KEY `payment_FK` (`payment_type_id`),
  CONSTRAINT `payment_FK` FOREIGN KEY (`payment_type_id`) REFERENCES `payment_type` (`payment_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- freelancer.payment_type definition

CREATE TABLE `payment_type` (
  `payment_type_id` int NOT NULL AUTO_INCREMENT,
  `payment_type_text` varchar(100) NOT NULL,
  PRIMARY KEY (`payment_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- freelancer.bank_payment_details definition

CREATE TABLE `bank_payment_details` (
  `bank_payment_details_id` int NOT NULL AUTO_INCREMENT,
  `account_number` varchar(100) NOT NULL,
  `routing_number` varchar(100) NOT NULL,
  `account_type` varchar(100) NOT NULL,
  `payment_id` varchar(255) NOT NULL,
  PRIMARY KEY (`bank_payment_details_id`),
  KEY `bank_payment_details_FK` (`payment_id`),
  CONSTRAINT `bank_payment_details_FK` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`payment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- freelancer.credit_card_payment_details definition

CREATE TABLE `credit_card_payment_details` (
  `credit_card_payment_details_id` int NOT NULL AUTO_INCREMENT,
  `credit_card_number` varchar(100) NOT NULL,
  `expiration_date` varchar(100) NOT NULL,
  `cvc` varchar(100) NOT NULL,
  `payment_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`credit_card_payment_details_id`),
  KEY `credit_card_payment_details_FK` (`payment_id`),
  CONSTRAINT `credit_card_payment_details_FK` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`payment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT INTO freelancer.payment_type
(payment_type_text)
VALUES('Credit Card');

INSERT INTO freelancer.payment_type
(payment_type_text)
VALUES('Bank');



INSERT INTO freelancer.security_question
(security_question_text)
VALUES('What\'s your pet\'s name?');



INSERT INTO freelancer.security_question
(security_question_text)
VALUES('Where did your parents meet?');

INSERT INTO freelancer.user_type
(user_type_name)
VALUES('learner');

INSERT INTO freelancer.user_type
(user_type_name)
VALUES('expert');


INSERT INTO freelancer.user_type
(user_type_id, user_type_name)
VALUES(3, 'biller');

INSERT INTO freelancer.users
(firstname, lastname, username, password, user_type_id, security_question_id, security_answer)
VALUES('ADMIN', 'ADMIN', 'admin', 'Admin2021', 3, 1, 'ANSWER');

