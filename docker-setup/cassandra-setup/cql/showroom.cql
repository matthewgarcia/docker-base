CREATE TABLE showroom (
    key_ VARCHAR,
    date_ VARCHAR,
    count_ INT,
    PRIMARY KEY ((key_), date_)
);

CREATE TABLE showroom_merch (
    key_ VARCHAR,
    date_ VARCHAR,
    merchant INT,
    merchantname VARCHAR,
    count_ INT,
    PRIMARY KEY ((key_), date_, merchant, merchantname)
);

CREATE TABLE showroom_manu (
    key_ VARCHAR,
    date_ VARCHAR,
    manufacturer INT,
    manufacturername VARCHAR,
    count_ INT,
    PRIMARY KEY ((key_), date_, manufacturer, manufacturername)
);

CREATE TABLE showroom_loc (
    key_ VARCHAR,
    date_ VARCHAR,
    location INT,
    count_ INT,
    PRIMARY KEY ((key_), date_, location)
);

