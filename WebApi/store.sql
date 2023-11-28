CREATE DATABASE BookStore

ALTER TABLE users AUTO_INCREMENT = 1;

CREATE TABLE Role(
    RoleId BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    RoleName CHAR(12) NOT NULL,
    updated_at DATETIME NOT NULL,
    created_at DATETIME NOT NULL
)ENGINE=INNODB;

CREATE TABLE User(
    id BIGINT NOT NULL PRIMARY KEY,
    name VARCHAR(64) NOT NULL,
    email VARCHAR(64) NOT NULL UNIQUE,
    password VARCHAR(64) NOT NULL,
    role BIGINT NOT NULL,
    updated_at DATETIME NOT NULL,
    created_at DATETIME NOT NULL,
    remember_token VARCHAR(64),
    email_verify_at DATETIME
)ENGINE=INNODB;
CREATE TABLE size(
    SizeId BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    SizeName CHAR(12) NOT NULL
)ENGINE=INNODB;



CREATE TABLE Invoice(
	InvoiceId INT NOT NULL PRIMARY KEY,
	UserId BIGINT NOT NULL,
	WardId INT NOT NULL,
	Phone VARCHAR(16) NOT NULL,
	Address VARCHAR(64) NOT NULL,
    created_at DATETIME NOT NULL
);
CREATE TABLE InvoiceDetail(
	InvoiceId INT NOT NULL,
	ProductId INT NOT NULL,
	Price INT NOT NULL,
	Amount SMALLINT NOT NULL,
    TotalPrice INT NOT NULL
);

CREATE TABLE Message(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    member_id BIGINT NOT NULL,
    content VARCHAR(256) NOT NULL,
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE MessageView(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    message_id INT NOT NULL,
    member_id BIGINT NOT NULL,
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
)ENGINE=INNODB;


