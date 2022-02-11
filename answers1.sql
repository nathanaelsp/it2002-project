%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                             %
% Project Titik Merah Trading Dot Com (Question 1)                            %
%                                                                             %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                             %
% Student numbers of ALL team members                                         %
%                                                                             %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% member 1: A0219743Y
% member 2: A0200704Y
% member 3: A0184578L

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                             %
% Question 1.a                                                                %
%                                                                             %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

CREATE TABLE IF NOT EXISTS customer (
	full_name VARCHAR(50) NOT NULL,
	email VARCHAR(50) PRIMARY KEY 
		CHECK (email LIKE '%@%'),
	cc_number VARCHAR(16) NOT NULL,
	cc_type VARCHAR(50) NOT NULL 
		CHECK (cc_type = 'americanexpress' OR cc_type = 'visa' OR cc_type = 'mastercard')
);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                             %
% Question 1.b                                                                %
%                                                                             %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

CREATE TABLE IF NOT EXISTS stock (
	stock_name VARCHAR(100) NOT NULL,
	stock_symbol VARCHAR(50) PRIMARY KEY,
	industry VARCHAR(100) NOT NULL,
	sector VARCHAR(100) NOT NULL,
	market VARCHAR(100) NOT NULL,
	price DECIMAL(10,2) NOT NULL
		CHECK (price >= 0)
);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                             %
% Question 1.c                                                                %
%                                                                             %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

CREATE TABLE portfolio 
(
	c_email VARCHAR(50),
	s_symbol VARCHAR(50),
	quantity NUMERIC NOT NULL,
	FOREIGN KEY (c_email) REFERENCES customer(email)
		ON UPDATE CASCADE
		ON DELETE CASCADE
		DEFERRABLE INITIALLY DEFERRED,
	FOREIGN KEY (s_symbol) REFERENCES stock(stock_symbol)
		ON UPDATE CASCADE
		ON DELETE CASCADE
		DEFERRABLE INITIALLY DEFERRED
);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                             %
% Question 1.d                                                                %
%                                                                             %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Gasper Coop', 'gcoop7@yahoo.co.jp', '5489418727024666', 'mastercard');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Martyn Roubottom', 'mroubottom8@unblog.fr', '4041372228163', 'visa');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Lelah Bobasch', 'lbobasch9@bravesites.com', '372301067240327', 'americanexpress');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                             %
% Question 1.e                                                                %
%                                                                             %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

INSERT INTO stock (stock_name, stock_symbol, industry, sector, market, price) VALUES ('Turkish Investment Fund, Inc. (The)', 'TKF', 'n/a', 'n/a', 'NYSE', 876.62);
INSERT INTO stock (stock_name, stock_symbol, industry, sector, market, price) VALUES ('Delta Air Lines, Inc.', 'DAL', 'Air Freight/Delivery Services', 'Transportation', 'NYSE', 159.47);
INSERT INTO stock (stock_name, stock_symbol, industry, sector, market, price) VALUES ('Forward Pharma A/S', 'FWP', 'Major Pharmaceuticals', 'Health Care', 'NASDAQ', 305.17);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                             %
% Question 1.f                                                                %
%                                                                             %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%	

INSERT INTO portfolio (c_email, s_symbol,quantity)
SELECT c.email,s.stock_symbol,num_series
FROM customer AS c, stock AS s, generate_series(1,100) AS num_series
ORDER BY RANDOM()
LIMIT 500;

