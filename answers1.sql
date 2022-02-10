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
	email VARCHAR(50) PRIMARY KEY,
	cc_number VARCHAR(50) NOT NULL,
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
	price VARCHAR(100) NOT NULL
);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                             %
% Question 1.c                                                                %
%                                                                             %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
CREATE TABLE portfolio 
(
	id INT NOT NULL, % Can be removed I think, after implementing code 1.f
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
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Lexine Squires', 'lsquiresf@toplist.cz', '4017951867175', 'visa');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Gusty Carp', 'gcarpg@list-manage.com', '374283728504903', 'americanexpress');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Renata Ivimey', 'rivimeyh@nature.com', '5010129099336699', 'mastercard');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                             %
% Question 1.e                                                                %
%                                                                             %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
INSERT INTO stock (stock_name, stock_symbol, industry, sector, market, price) VALUES ('Hugoton Royalty Trust', 'HGT', 'Oil & Gas Production', 'Energy', 'NYSE', '$1040.60');
INSERT INTO stock (stock_name, stock_symbol, industry, sector, market, price) VALUES ('Public Storage', 'PSA^U', 'Real Estate Investment Trusts', 'Consumer Services', 'NYSE', '$606.17');
INSERT INTO stock (stock_name, stock_symbol, industry, sector, market, price) VALUES ('Donnelley Financial Solutions, Inc.', 'DFIN', 'Other Consumer Services', 'Consumer Services', 'NYSE', '$2799.72');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                             %
% Question 1.f                                                                %
%                                                                             %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
INSERT INTO portfolio (c_email,s_symbol,quantity)
SELECT c.email,s.stock_symbol,ROUND(RANDOM()*99+1)
FROM customer AS c, stock AS s
ORDER BY RANDOM()
LIMIT 500

