CREATE TABLE pricing (
    key_ VARCHAR,
    date_ VARCHAR,
    price FLOAT,
    PRIMARY KEY ((key_), date_, price)
);

CREATE TABLE pricing_merch (
    key_ VARCHAR,
    date_ VARCHAR,
    merchant INT,
    merchantname VARCHAR,
    price FLOAT,
    PRIMARY KEY ((key_), date_, merchant, merchantname, price)
);

