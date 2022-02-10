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

INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Abram Fennick', 'afennick0@theguardian.com', '374288975929067', 'americanexpress');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Stefania Bridewell', 'sbridewell1@auda.org.au', '5100145733661871', 'mastercard');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Esra Longlands', 'elonglands2@census.gov', '375221342529780', 'americanexpress');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Sebastiano Crumbie', 'scrumbie3@admin.ch', '5100138511734770', 'mastercard');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Dorie Higgen', 'dhiggen4@answers.com', '5576761500203641', 'mastercard');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Rochette Bricksey', 'rbricksey5@4shared.com', '5341769327704778', 'mastercard');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Elmore Quartermain', 'equartermain6@list-manage.com', '4041372131748', 'visa');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Gasper Coop', 'gcoop7@yahoo.co.jp', '5489418727024666', 'mastercard');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Martyn Roubottom', 'mroubottom8@unblog.fr', '4041372228163', 'visa');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Lelah Bobasch', 'lbobasch9@bravesites.com', '372301067240327', 'americanexpress');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Katya Blakeslee', 'kblakesleea@berkeley.edu', '5405406952412863', 'mastercard');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Robert Mussetti', 'rmussettib@macromedia.com', '337941794118249', 'americanexpress');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Rossie Pabel', 'rpabelc@scientificamerican.com', '4017954573218', 'visa');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Julita Eastmead', 'jeastmeadd@seesaa.net', '4017955488796', 'visa');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Norrie Gerriessen', 'ngerriessene@storify.com', '4017952790828987', 'visa');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Lexine Squires', 'lsquiresf@toplist.cz', '4017951867175', 'visa');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Gusty Carp', 'gcarpg@list-manage.com', '374283728504903', 'americanexpress');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Renata Ivimey', 'rivimeyh@nature.com', '5010129099336699', 'mastercard');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Cassandry Euels', 'ceuelsi@tumblr.com', '4907560444480973', 'visa');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Kacy Milverton', 'kmilvertonj@si.edu', '4355239031004093', 'visa');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Tobye Baldetti', 'tbaldettik@angelfire.com', '4041591030283', 'visa');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Francis Risman', 'frismanl@ucsd.edu', '5100137358315602', 'mastercard');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Nicolette Carmo', 'ncarmom@squarespace.com', '5100170297981242', 'mastercard');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Weber Lidbetter', 'wlidbettern@biblegateway.com', '5267648053818178', 'mastercard');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Obadiah Jacobowicz', 'ojacobowiczo@gmpg.org', '5048376269303803', 'mastercard');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Romona Tysall', 'rtysallp@loc.gov', '5515838971576590', 'mastercard');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Jemimah Tessier', 'jtessierq@mail.ru', '374283759161623', 'americanexpress');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Finn Stoodale', 'fstoodaler@cbc.ca', '4980751998070019', 'visa');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Carie Caldicott', 'ccaldicotts@youtu.be', '4017951853403324', 'visa');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Philipa Leathwood', 'pleathwoodt@usatoday.com', '4041599552397253', 'visa');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Hoebart MacKeig', 'hmackeigu@usnews.com', '372301601824974', 'americanexpress');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Sarge Jaan', 'sjaanv@mapquest.com', '4041597068477', 'visa');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Lonny Janecki', 'ljaneckiw@pen.io', '4663891007313', 'visa');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Karlen Drewes', 'kdrewesx@tmall.com', '4041371753585379', 'visa');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Tildie Harradine', 'tharradiney@wikispaces.com', '5048372658133745', 'mastercard');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Christiane Gantlett', 'cgantlettz@t.co', '5185534547941991', 'mastercard');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Locke Filipowicz', 'lfilipowicz10@amazon.co.uk', '372301625996493', 'americanexpress');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Emmye Furman', 'efurman11@reference.com', '374622977359008', 'americanexpress');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Earl Bettinson', 'ebettinson12@live.com', '374283614083483', 'americanexpress');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Willdon MacCrachen', 'wmaccrachen13@cpanel.net', '5420641014463931', 'mastercard');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Glynis Holtom', 'gholtom14@bing.com', '348530572254990', 'americanexpress');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Cristine Rue', 'crue15@comsenz.com', '374622622664380', 'americanexpress');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Seth Pratty', 'spratty16@uol.com.br', '374622320980518', 'americanexpress');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Simonne Collocott', 'scollocott17@php.net', '5421615438207735', 'mastercard');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Catie Yvon', 'cyvon18@ucoz.ru', '4041591588140', 'visa');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Earl Margrett', 'emargrett19@huffingtonpost.com', '374283145021119', 'americanexpress');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Caldwell Gershom', 'cgershom1a@unesco.org', '5010127098616947', 'mastercard');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Weylin Wagstaffe', 'wwagstaffe1b@google.pl', '5106863713287210', 'mastercard');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Rosanne Thyer', 'rthyer1c@linkedin.com', '4041379326799666', 'visa');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Caty Titford', 'ctitford1d@angelfire.com', '4041599213022', 'visa');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Dione Donnel', 'ddonnel1e@fastcompany.com', '374622627326035', 'americanexpress');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Jemmy Ibel', 'jibel1f@privacy.gov.au', '5149702752816936', 'mastercard');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Dot Stuckow', 'dstuckow1g@sphinn.com', '5366312472118351', 'mastercard');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Benjamen Glaze', 'bglaze1h@chicagotribune.com', '4041595482828599', 'visa');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Trace Gerrets', 'tgerrets1i@goo.ne.jp', '374283751859513', 'americanexpress');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Kassi Fruchter', 'kfruchter1j@clickbank.net', '337941644138512', 'americanexpress');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Thane Burrett', 'tburrett1k@yandex.ru', '4041379893902', 'visa');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Stinky Millhouse', 'smillhouse1l@japanpost.jp', '337941720187714', 'americanexpress');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Conny Witty', 'cwitty1m@state.gov', '372301555393703', 'americanexpress');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Welby Roath', 'wroath1n@dailymotion.com', '337941404411513', 'americanexpress');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Burl Dodgshun', 'bdodgshun1o@wiley.com', '374622123513540', 'americanexpress');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Jessamyn Paradin', 'jparadin1p@umich.edu', '4041376599709232', 'visa');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Christiano Targett', 'ctargett1q@cisco.com', '4651071581659542', 'visa');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Godwin Acomb', 'gacomb1r@guardian.co.uk', '5002353069486843', 'mastercard');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Emmet Eldred', 'eeldred1s@webeden.co.uk', '374283986572485', 'americanexpress');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Katrinka McGinnell', 'kmcginnell1t@printfriendly.com', '5010129318213034', 'mastercard');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Ileane Naton', 'inaton1u@cargocollective.com', '372301054777661', 'americanexpress');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Hayley Pear', 'hpear1v@bing.com', '5108758627694626', 'mastercard');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Deborah Spencook', 'dspencook1w@sfgate.com', '4041599867413', 'visa');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Barbe Poel', 'bpoel1x@w3.org', '5134957482579595', 'mastercard');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Tarrance Griffe', 'tgriffe1y@wp.com', '5010128370813962', 'mastercard');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Adolf Albrighton', 'aalbrighton1z@about.com', '5100143825044692', 'mastercard');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Emmy Sunner', 'esunner20@wunderground.com', '5440092405475082', 'mastercard');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Trina Beau', 'tbeau21@friendfeed.com', '374288712350668', 'americanexpress');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Carny Dengate', 'cdengate22@irs.gov', '4041373483320', 'visa');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Darin Rime', 'drime23@irs.gov', '5002356355080451', 'mastercard');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Darsie Menego', 'dmenego24@digg.com', '4017955787437', 'visa');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Whitaker Abramzon', 'wabramzon25@time.com', '4041595105545', 'visa');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Cos Knevett', 'cknevett26@netvibes.com', '337941558553805', 'americanexpress');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Cathy Caunter', 'ccaunter27@nsw.gov.au', '4017952260080556', 'visa');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Nanon Baldoni', 'nbaldoni28@google.ca', '4017956617283565', 'visa');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Bengt Baudou', 'bbaudou29@unc.edu', '4371018555368', 'visa');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Binny Noller', 'bnoller2a@mysql.com', '4041378951336471', 'visa');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Gerhardt Tomasoni', 'gtomasoni2b@ftc.gov', '4041371297495036', 'visa');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Ermin Whyatt', 'ewhyatt2c@youku.com', '5100149228015940', 'mastercard');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Erny Lawlee', 'elawlee2d@ca.gov', '344918145042048', 'americanexpress');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Rorie Quarmby', 'rquarmby2e@redcross.org', '372301391598713', 'americanexpress');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Elmira Pullin', 'epullin2f@pbs.org', '5108752592685016', 'mastercard');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Breena Oglethorpe', 'boglethorpe2g@irs.gov', '5306941095989716', 'mastercard');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Angelo Pattenden', 'apattenden2h@prnewswire.com', '4041371773995', 'visa');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Hartwell Milleton', 'hmilleton2i@loc.gov', '5010121808374954', 'mastercard');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Elora Tyrie', 'etyrie2j@bandcamp.com', '337941843469080', 'americanexpress');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Francene Godmer', 'fgodmer2k@google.nl', '5508214943248792', 'mastercard');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Neil Medley', 'nmedley2l@drupal.org', '4017954290250', 'visa');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Erek Rillett', 'erillett2m@abc.net.au', '374622841572372', 'americanexpress');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Moira Wayne', 'mwayne2n@whitehouse.gov', '5010129559980721', 'mastercard');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Babette Willerstone', 'bwillerstone2o@yandex.ru', '5048379546091431', 'mastercard');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Hugh Ricards', 'hricards2p@npr.org', '4158671918388893', 'visa');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Linn Eyeington', 'leyeington2q@reverbnation.com', '374622220235096', 'americanexpress');
INSERT INTO customer (full_name, email, cc_number, cc_type) VALUES ('Deloris Skuce', 'dskuce2r@xinhuanet.com', '372301039152055', 'americanexpress');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                             %
% Question 1.e                                                                %
%                                                                             %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
INSERT INTO stock (stock_name, stock_symbol, industry, sector, market, price) VALUES ('Turkish Investment Fund, Inc. (The)', 'TKF', 'n/a', 'n/a', 'NYSE', 876.62);
INSERT INTO stock (stock_name, stock_symbol, industry, sector, market, price) VALUES ('Delta Air Lines, Inc.', 'DAL', 'Air Freight/Delivery Services', 'Transportation', 'NYSE', 159.47);
INSERT INTO stock (stock_name, stock_symbol, industry, sector, market, price) VALUES ('Forward Pharma A/S', 'FWP', 'Major Pharmaceuticals', 'Health Care', 'NASDAQ', 305.17);
INSERT INTO stock (stock_name, stock_symbol, industry, sector, market, price) VALUES ('Integer Holdings Corporation', 'ITGR', 'Industrial Machinery/Components', 'Miscellaneous', 'NYSE', 1280.53);
INSERT INTO stock (stock_name, stock_symbol, industry, sector, market, price) VALUES ('Bank of America Corporation', 'BML^I', 'n/a', 'n/a', 'NYSE', 161.88);
INSERT INTO stock (stock_name, stock_symbol, industry, sector, market, price) VALUES ('Transglobe Energy Corp', 'TGA', 'Oil & Gas Production', 'Energy', 'NASDAQ', 473.05);
INSERT INTO stock (stock_name, stock_symbol, industry, sector, market, price) VALUES ('Ericsson', 'ERIC', 'Radio And Television Broadcasting And Communications Equipment', 'Technology', 'NASDAQ', 65.3);
INSERT INTO stock (stock_name, stock_symbol, industry, sector, market, price) VALUES ('Build-A-Bear Workshop, Inc.', 'BBW', 'Recreational Products/Toys', 'Consumer Services', 'NYSE', 614.23);
INSERT INTO stock (stock_name, stock_symbol, industry, sector, market, price) VALUES ('HCA Healthcare, Inc.', 'HCA', 'Hospital/Nursing Management', 'Health Care', 'NYSE', 341.73);
INSERT INTO stock (stock_name, stock_symbol, industry, sector, market, price) VALUES ('Arista Networks, Inc.', 'ANET', 'Computer Communications Equipment', 'Technology', 'NYSE', 837.73);
INSERT INTO stock (stock_name, stock_symbol, industry, sector, market, price) VALUES ('Allstate Corporation (The)', 'ALL^A', 'n/a', 'n/a', 'NYSE', 849.88);
INSERT INTO stock (stock_name, stock_symbol, industry, sector, market, price) VALUES ('Western Asset/Claymore U.S. Treasury Inflation Prot Secs Fd', 'WIA', 'n/a', 'n/a', 'NYSE', 362.19);
INSERT INTO stock (stock_name, stock_symbol, industry, sector, market, price) VALUES ('Ballard Power Systems, Inc.', 'BLDP', 'Industrial Machinery/Components', 'Energy', 'NASDAQ', 176.7);
INSERT INTO stock (stock_name, stock_symbol, industry, sector, market, price) VALUES ('The KEYW Holding Corporation', 'KEYW', 'EDP Services', 'Technology', 'NASDAQ', 194.86);
INSERT INTO stock (stock_name, stock_symbol, industry, sector, market, price) VALUES ('Titan Pharmaceuticals, Inc.', 'TTNP', 'Biotechnology: Biological Products (No Diagnostic Substances)', 'Health Care', 'NASDAQ', 1469.92);
INSERT INTO stock (stock_name, stock_symbol, industry, sector, market, price) VALUES ('BlackRock Capital Investment Corporation', 'BKCC', 'n/a', 'n/a', 'NASDAQ', 1449.66);
INSERT INTO stock (stock_name, stock_symbol, industry, sector, market, price) VALUES ('Hudson Global, Inc.', 'HSON', 'Professional Services', 'Technology', 'NASDAQ', 354.5);
INSERT INTO stock (stock_name, stock_symbol, industry, sector, market, price) VALUES ('PIMCO California Municipal Income Fund III', 'PZC', 'n/a', 'n/a', 'NYSE', 25.72);
INSERT INTO stock (stock_name, stock_symbol, industry, sector, market, price) VALUES ('AptarGroup, Inc.', 'ATR', 'Plastic Products', 'Consumer Non-Durables', 'NYSE', 679.4);
INSERT INTO stock (stock_name, stock_symbol, industry, sector, market, price) VALUES ('Texas Capital Bancshares, Inc.', 'TCBIW', 'Major Banks', 'Finance', 'NASDAQ', 760.91);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                             %
% Question 1.f                                                                %
%                                                                             %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%	

INSERT INTO portfolio (c_email,s_symbol,quantity)
SELECT c.email,s.stock_symbol,ROUND(RANDOM()*99) + 1
FROM customer AS c, stock AS s
ORDER BY RANDOM()
LIMIT 500;

