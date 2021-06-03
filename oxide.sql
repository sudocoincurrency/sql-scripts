CREATE TABLE users (
    pass text NOT NULL UNIQUE,
    coin float NOT NULL default 0,
    id int NOT NULL UNIQUE
);

CREATE TABLE config (
    id int default 1 NOT NULL UNIQUE,
    coinsMined DOUBLE(21, 17) default 0 NOT NULL,
    coinCap float default 350 NOT NULL
);

CREATE TABLE transactions (
    sendingUserId int NOT NULL,
    recievingUserId int NOT NULL,
    amountTransferred float NOT NULL,
    transactionId int NOT NULL UNIQUE,
    reason text NOT NULL
);

CREATE TABLE items (
    itemName text NOT NULL,
    amountToCharge float NOT NULL,
    sellerId int NOT NULL,
    stock int NOT NULL,
    itemId int NOT NULL UNIQUE,
    category text NOT NULL,
    contactSeller text NOT NULL,
    descr text NOT NULL
);
