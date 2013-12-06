CREATE TABLE store_alert_showroom (
    key_ VARCHAR,
    date_ VARCHAR,
    store_alert INT,
    showrooming INT,
    PRIMARY KEY ((key_), date_)
);

CREATE TABLE store_alert_showroom_loc (
    key_ VARCHAR,
    date_ VARCHAR,
    location INT,
    store_alert INT,
    showrooming INT,
    PRIMARY KEY ((key_), date_, location)
);

CREATE TABLE store_alert_showroom_udid (
    key_ VARCHAR,
    date_ VARCHAR,
    udid VARCHAR,
    store_alert INT,
    showrooming INT,
    PRIMARY KEY ((key_), date_, udid)
);
