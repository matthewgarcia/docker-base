CREATE TABLE productview (
    key_ VARCHAR,
    date_ VARCHAR,
    count_ INT,
    PRIMARY KEY ((key_), date_)
);

CREATE TABLE productview_manu (
    key_ VARCHAR,
    date_ VARCHAR,
    manufacturer INT,
    manufacturername VARCHAR,
    count_ INT,
    PRIMARY KEY ((key_), date_, manufacturer, manufacturername)
);

CREATE TABLE productview_merch (
    key_ VARCHAR,
    date_ VARCHAR,
    merchant INT,
    merchantname VARCHAR,
    count_ INT,
    PRIMARY KEY ((key_), date_, merchant, merchantname)
);

