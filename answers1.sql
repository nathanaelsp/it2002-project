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
CREATE TABLE customer (
	full_name VARCHAR(50) NOT NULL,
	email VARCHAR(50) PRIMARY KEY,
	cc_number VARCHAR(50) NOT NULL,
	cc_type VARCHAR(50) NOT NULL
);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                             %
% Question 1.b                                                                %
%                                                                             %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
CREATE TABLE stock (
	stock_name VARCHAR(50),
	stock_symbol VARCHAR(50),
	industry VARCHAR(50),
	sector VARCHAR(50),
	market VARCHAR(50),
	price VARCHAR(50)
);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                             %
% Question 1.c                                                                %
%                                                                             %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
CREATE TABLE portfolio 
(
	entry_id INT NOT NULL,
	quantity NUMERIC NOT NULL,
	c_email VARCHAR(50) PRIMARY KEY,
	s_symbol VARCHAR(50) NOT NULL,
	FOREIGN KEY (c_email) REFERENCES customer(email),
	FOREIGN KEY (s_symbol) REFERENCES stock(symbol)
);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                             %
% Question 1.d                                                                %
%                                                                             %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

insert into customer (full_name, email, cc_number, cc_type) values ('Abram Fennick', 'afennick0@theguardian.com', '374288975929067', 'americanexpress');
insert into customer (full_name, email, cc_number, cc_type) values ('Stefania Bridewell', 'sbridewell1@auda.org.au', '5100145733661871', 'mastercard');
insert into customer (full_name, email, cc_number, cc_type) values ('Esra Longlands', 'elonglands2@census.gov', '375221342529780', 'americanexpress');
insert into customer (full_name, email, cc_number, cc_type) values ('Sebastiano Crumbie', 'scrumbie3@admin.ch', '5100138511734770', 'mastercard');
insert into customer (full_name, email, cc_number, cc_type) values ('Dorie Higgen', 'dhiggen4@answers.com', '5576761500203641', 'mastercard');
insert into customer (full_name, email, cc_number, cc_type) values ('Rochette Bricksey', 'rbricksey5@4shared.com', '5341769327704778', 'mastercard');
insert into customer (full_name, email, cc_number, cc_type) values ('Elmore Quartermain', 'equartermain6@list-manage.com', '4041372131748', 'visa');
insert into customer (full_name, email, cc_number, cc_type) values ('Gasper Coop', 'gcoop7@yahoo.co.jp', '5489418727024666', 'mastercard');
insert into customer (full_name, email, cc_number, cc_type) values ('Martyn Roubottom', 'mroubottom8@unblog.fr', '4041372228163', 'visa');
insert into customer (full_name, email, cc_number, cc_type) values ('Lelah Bobasch', 'lbobasch9@bravesites.com', '372301067240327', 'americanexpress');
insert into customer (full_name, email, cc_number, cc_type) values ('Katya Blakeslee', 'kblakesleea@berkeley.edu', '5405406952412863', 'mastercard');
insert into customer (full_name, email, cc_number, cc_type) values ('Robert Mussetti', 'rmussettib@macromedia.com', '337941794118249', 'americanexpress');
insert into customer (full_name, email, cc_number, cc_type) values ('Rossie Pabel', 'rpabelc@scientificamerican.com', '4017954573218', 'visa');
insert into customer (full_name, email, cc_number, cc_type) values ('Julita Eastmead', 'jeastmeadd@seesaa.net', '4017955488796', 'visa');
insert into customer (full_name, email, cc_number, cc_type) values ('Norrie Gerriessen', 'ngerriessene@storify.com', '4017952790828987', 'visa');
insert into customer (full_name, email, cc_number, cc_type) values ('Lexine Squires', 'lsquiresf@toplist.cz', '4017951867175', 'visa');
insert into customer (full_name, email, cc_number, cc_type) values ('Gusty Carp', 'gcarpg@list-manage.com', '374283728504903', 'americanexpress');
insert into customer (full_name, email, cc_number, cc_type) values ('Renata Ivimey', 'rivimeyh@nature.com', '5010129099336699', 'mastercard');
insert into customer (full_name, email, cc_number, cc_type) values ('Cassandry Euels', 'ceuelsi@tumblr.com', '4907560444480973', 'visa');
insert into customer (full_name, email, cc_number, cc_type) values ('Kacy Milverton', 'kmilvertonj@si.edu', '4355239031004093', 'visa');
insert into customer (full_name, email, cc_number, cc_type) values ('Tobye Baldetti', 'tbaldettik@angelfire.com', '4041591030283', 'visa');
insert into customer (full_name, email, cc_number, cc_type) values ('Francis Risman', 'frismanl@ucsd.edu', '5100137358315602', 'mastercard');
insert into customer (full_name, email, cc_number, cc_type) values ('Nicolette Carmo', 'ncarmom@squarespace.com', '5100170297981242', 'mastercard');
insert into customer (full_name, email, cc_number, cc_type) values ('Weber Lidbetter', 'wlidbettern@biblegateway.com', '5267648053818178', 'mastercard');
insert into customer (full_name, email, cc_number, cc_type) values ('Obadiah Jacobowicz', 'ojacobowiczo@gmpg.org', '5048376269303803', 'mastercard');
insert into customer (full_name, email, cc_number, cc_type) values ('Romona Tysall', 'rtysallp@loc.gov', '5515838971576590', 'mastercard');
insert into customer (full_name, email, cc_number, cc_type) values ('Jemimah Tessier', 'jtessierq@mail.ru', '374283759161623', 'americanexpress');
insert into customer (full_name, email, cc_number, cc_type) values ('Finn Stoodale', 'fstoodaler@cbc.ca', '4980751998070019', 'visa');
insert into customer (full_name, email, cc_number, cc_type) values ('Carie Caldicott', 'ccaldicotts@youtu.be', '4017951853403324', 'visa');
insert into customer (full_name, email, cc_number, cc_type) values ('Philipa Leathwood', 'pleathwoodt@usatoday.com', '4041599552397253', 'visa');
insert into customer (full_name, email, cc_number, cc_type) values ('Hoebart MacKeig', 'hmackeigu@usnews.com', '372301601824974', 'americanexpress');
insert into customer (full_name, email, cc_number, cc_type) values ('Sarge Jaan', 'sjaanv@mapquest.com', '4041597068477', 'visa');
insert into customer (full_name, email, cc_number, cc_type) values ('Lonny Janecki', 'ljaneckiw@pen.io', '4663891007313', 'visa');
insert into customer (full_name, email, cc_number, cc_type) values ('Karlen Drewes', 'kdrewesx@tmall.com', '4041371753585379', 'visa');
insert into customer (full_name, email, cc_number, cc_type) values ('Tildie Harradine', 'tharradiney@wikispaces.com', '5048372658133745', 'mastercard');
insert into customer (full_name, email, cc_number, cc_type) values ('Christiane Gantlett', 'cgantlettz@t.co', '5185534547941991', 'mastercard');
insert into customer (full_name, email, cc_number, cc_type) values ('Locke Filipowicz', 'lfilipowicz10@amazon.co.uk', '372301625996493', 'americanexpress');
insert into customer (full_name, email, cc_number, cc_type) values ('Emmye Furman', 'efurman11@reference.com', '374622977359008', 'americanexpress');
insert into customer (full_name, email, cc_number, cc_type) values ('Earl Bettinson', 'ebettinson12@live.com', '374283614083483', 'americanexpress');
insert into customer (full_name, email, cc_number, cc_type) values ('Willdon MacCrachen', 'wmaccrachen13@cpanel.net', '5420641014463931', 'mastercard');
insert into customer (full_name, email, cc_number, cc_type) values ('Glynis Holtom', 'gholtom14@bing.com', '348530572254990', 'americanexpress');
insert into customer (full_name, email, cc_number, cc_type) values ('Cristine Rue', 'crue15@comsenz.com', '374622622664380', 'americanexpress');
insert into customer (full_name, email, cc_number, cc_type) values ('Seth Pratty', 'spratty16@uol.com.br', '374622320980518', 'americanexpress');
insert into customer (full_name, email, cc_number, cc_type) values ('Simonne Collocott', 'scollocott17@php.net', '5421615438207735', 'mastercard');
insert into customer (full_name, email, cc_number, cc_type) values ('Catie Yvon', 'cyvon18@ucoz.ru', '4041591588140', 'visa');
insert into customer (full_name, email, cc_number, cc_type) values ('Earl Margrett', 'emargrett19@huffingtonpost.com', '374283145021119', 'americanexpress');
insert into customer (full_name, email, cc_number, cc_type) values ('Caldwell Gershom', 'cgershom1a@unesco.org', '5010127098616947', 'mastercard');
insert into customer (full_name, email, cc_number, cc_type) values ('Weylin Wagstaffe', 'wwagstaffe1b@google.pl', '5106863713287210', 'mastercard');
insert into customer (full_name, email, cc_number, cc_type) values ('Rosanne Thyer', 'rthyer1c@linkedin.com', '4041379326799666', 'visa');
insert into customer (full_name, email, cc_number, cc_type) values ('Caty Titford', 'ctitford1d@angelfire.com', '4041599213022', 'visa');
insert into customer (full_name, email, cc_number, cc_type) values ('Dione Donnel', 'ddonnel1e@fastcompany.com', '374622627326035', 'americanexpress');
insert into customer (full_name, email, cc_number, cc_type) values ('Jemmy Ibel', 'jibel1f@privacy.gov.au', '5149702752816936', 'mastercard');
insert into customer (full_name, email, cc_number, cc_type) values ('Dot Stuckow', 'dstuckow1g@sphinn.com', '5366312472118351', 'mastercard');
insert into customer (full_name, email, cc_number, cc_type) values ('Benjamen Glaze', 'bglaze1h@chicagotribune.com', '4041595482828599', 'visa');
insert into customer (full_name, email, cc_number, cc_type) values ('Trace Gerrets', 'tgerrets1i@goo.ne.jp', '374283751859513', 'americanexpress');
insert into customer (full_name, email, cc_number, cc_type) values ('Kassi Fruchter', 'kfruchter1j@clickbank.net', '337941644138512', 'americanexpress');
insert into customer (full_name, email, cc_number, cc_type) values ('Thane Burrett', 'tburrett1k@yandex.ru', '4041379893902', 'visa');
insert into customer (full_name, email, cc_number, cc_type) values ('Stinky Millhouse', 'smillhouse1l@japanpost.jp', '337941720187714', 'americanexpress');
insert into customer (full_name, email, cc_number, cc_type) values ('Conny Witty', 'cwitty1m@state.gov', '372301555393703', 'americanexpress');
insert into customer (full_name, email, cc_number, cc_type) values ('Welby Roath', 'wroath1n@dailymotion.com', '337941404411513', 'americanexpress');
insert into customer (full_name, email, cc_number, cc_type) values ('Burl Dodgshun', 'bdodgshun1o@wiley.com', '374622123513540', 'americanexpress');
insert into customer (full_name, email, cc_number, cc_type) values ('Jessamyn Paradin', 'jparadin1p@umich.edu', '4041376599709232', 'visa');
insert into customer (full_name, email, cc_number, cc_type) values ('Christiano Targett', 'ctargett1q@cisco.com', '4651071581659542', 'visa');
insert into customer (full_name, email, cc_number, cc_type) values ('Godwin Acomb', 'gacomb1r@guardian.co.uk', '5002353069486843', 'mastercard');
insert into customer (full_name, email, cc_number, cc_type) values ('Emmet Eldred', 'eeldred1s@webeden.co.uk', '374283986572485', 'americanexpress');
insert into customer (full_name, email, cc_number, cc_type) values ('Katrinka McGinnell', 'kmcginnell1t@printfriendly.com', '5010129318213034', 'mastercard');
insert into customer (full_name, email, cc_number, cc_type) values ('Ileane Naton', 'inaton1u@cargocollective.com', '372301054777661', 'americanexpress');
insert into customer (full_name, email, cc_number, cc_type) values ('Hayley Pear', 'hpear1v@bing.com', '5108758627694626', 'mastercard');
insert into customer (full_name, email, cc_number, cc_type) values ('Deborah Spencook', 'dspencook1w@sfgate.com', '4041599867413', 'visa');
insert into customer (full_name, email, cc_number, cc_type) values ('Barbe Poel', 'bpoel1x@w3.org', '5134957482579595', 'mastercard');
insert into customer (full_name, email, cc_number, cc_type) values ('Tarrance Griffe', 'tgriffe1y@wp.com', '5010128370813962', 'mastercard');
insert into customer (full_name, email, cc_number, cc_type) values ('Adolf Albrighton', 'aalbrighton1z@about.com', '5100143825044692', 'mastercard');
insert into customer (full_name, email, cc_number, cc_type) values ('Emmy Sunner', 'esunner20@wunderground.com', '5440092405475082', 'mastercard');
insert into customer (full_name, email, cc_number, cc_type) values ('Trina Beau', 'tbeau21@friendfeed.com', '374288712350668', 'americanexpress');
insert into customer (full_name, email, cc_number, cc_type) values ('Carny Dengate', 'cdengate22@irs.gov', '4041373483320', 'visa');
insert into customer (full_name, email, cc_number, cc_type) values ('Darin Rime', 'drime23@irs.gov', '5002356355080451', 'mastercard');
insert into customer (full_name, email, cc_number, cc_type) values ('Darsie Menego', 'dmenego24@digg.com', '4017955787437', 'visa');
insert into customer (full_name, email, cc_number, cc_type) values ('Whitaker Abramzon', 'wabramzon25@time.com', '4041595105545', 'visa');
insert into customer (full_name, email, cc_number, cc_type) values ('Cos Knevett', 'cknevett26@netvibes.com', '337941558553805', 'americanexpress');
insert into customer (full_name, email, cc_number, cc_type) values ('Cathy Caunter', 'ccaunter27@nsw.gov.au', '4017952260080556', 'visa');
insert into customer (full_name, email, cc_number, cc_type) values ('Nanon Baldoni', 'nbaldoni28@google.ca', '4017956617283565', 'visa');
insert into customer (full_name, email, cc_number, cc_type) values ('Bengt Baudou', 'bbaudou29@unc.edu', '4371018555368', 'visa');
insert into customer (full_name, email, cc_number, cc_type) values ('Binny Noller', 'bnoller2a@mysql.com', '4041378951336471', 'visa');
insert into customer (full_name, email, cc_number, cc_type) values ('Gerhardt Tomasoni', 'gtomasoni2b@ftc.gov', '4041371297495036', 'visa');
insert into customer (full_name, email, cc_number, cc_type) values ('Ermin Whyatt', 'ewhyatt2c@youku.com', '5100149228015940', 'mastercard');
insert into customer (full_name, email, cc_number, cc_type) values ('Erny Lawlee', 'elawlee2d@ca.gov', '344918145042048', 'americanexpress');
insert into customer (full_name, email, cc_number, cc_type) values ('Rorie Quarmby', 'rquarmby2e@redcross.org', '372301391598713', 'americanexpress');
insert into customer (full_name, email, cc_number, cc_type) values ('Elmira Pullin', 'epullin2f@pbs.org', '5108752592685016', 'mastercard');
insert into customer (full_name, email, cc_number, cc_type) values ('Breena Oglethorpe', 'boglethorpe2g@irs.gov', '5306941095989716', 'mastercard');
insert into customer (full_name, email, cc_number, cc_type) values ('Angelo Pattenden', 'apattenden2h@prnewswire.com', '4041371773995', 'visa');
insert into customer (full_name, email, cc_number, cc_type) values ('Hartwell Milleton', 'hmilleton2i@loc.gov', '5010121808374954', 'mastercard');
insert into customer (full_name, email, cc_number, cc_type) values ('Elora Tyrie', 'etyrie2j@bandcamp.com', '337941843469080', 'americanexpress');
insert into customer (full_name, email, cc_number, cc_type) values ('Francene Godmer', 'fgodmer2k@google.nl', '5508214943248792', 'mastercard');
insert into customer (full_name, email, cc_number, cc_type) values ('Neil Medley', 'nmedley2l@drupal.org', '4017954290250', 'visa');
insert into customer (full_name, email, cc_number, cc_type) values ('Erek Rillett', 'erillett2m@abc.net.au', '374622841572372', 'americanexpress');
insert into customer (full_name, email, cc_number, cc_type) values ('Moira Wayne', 'mwayne2n@whitehouse.gov', '5010129559980721', 'mastercard');
insert into customer (full_name, email, cc_number, cc_type) values ('Babette Willerstone', 'bwillerstone2o@yandex.ru', '5048379546091431', 'mastercard');
insert into customer (full_name, email, cc_number, cc_type) values ('Hugh Ricards', 'hricards2p@npr.org', '4158671918388893', 'visa');
insert into customer (full_name, email, cc_number, cc_type) values ('Linn Eyeington', 'leyeington2q@reverbnation.com', '374622220235096', 'americanexpress');
insert into customer (full_name, email, cc_number, cc_type) values ('Deloris Skuce', 'dskuce2r@xinhuanet.com', '372301039152055', 'americanexpress');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                             %
% Question 1.e                                                                %
%                                                                             %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
insert into stock (stock_name, stock_symbol, industry, sector, market, price) values ('Global X Social Media ETF', 'SOCL', 'n/a', 'n/a', 'NASDAQ', '$535.93');
insert into stock (stock_name, stock_symbol, industry, sector, market, price) values ('Hugoton Royalty Trust', 'HGT', 'Oil & Gas Production', 'Energy', 'NYSE', '$1040.60');
insert into stock (stock_name, stock_symbol, industry, sector, market, price) values ('Public Storage', 'PSA^U', 'Real Estate Investment Trusts', 'Consumer Services', 'NYSE', '$606.17');
insert into stock (stock_name, stock_symbol, industry, sector, market, price) values ('Donnelley Financial Solutions, Inc.', 'DFIN', 'Other Consumer Services', 'Consumer Services', 'NYSE', '$2799.72');
insert into stock (stock_name, stock_symbol, industry, sector, market, price) values ('Pingtan Marine Enterprise Ltd.', 'PME', 'n/a', 'n/a', 'NASDAQ', '$287.69');
insert into stock (stock_name, stock_symbol, industry, sector, market, price) values ('Vanguard Russell 3000 ETF', 'VTHR', 'n/a', 'n/a', 'NASDAQ', '$2744.53');
insert into stock (stock_name, stock_symbol, industry, sector, market, price) values ('Apollo Investment Corporation', 'AIY', 'n/a', 'n/a', 'NYSE', '$1496.86');
insert into stock (stock_name, stock_symbol, industry, sector, market, price) values ('Royal Dutch Shell PLC', 'RDS.B', 'n/a', 'n/a', 'NYSE', '$2053.72');
insert into stock (stock_name, stock_symbol, industry, sector, market, price) values ('Federated Premier Intermediate Municipal Income Fund', 'FPT', 'n/a', 'n/a', 'NYSE', '$2692.33');
insert into stock (stock_name, stock_symbol, industry, sector, market, price) values ('Bank of Hawaii Corporation', 'BOH', 'Major Banks', 'Finance', 'NYSE', '$2106.76');
insert into stock (stock_name, stock_symbol, industry, sector, market, price) values ('GTY Technology Holdings, Inc.', 'GTYHW', 'Business Services', 'Finance', 'NASDAQ', '$1297.46');
insert into stock (stock_name, stock_symbol, industry, sector, market, price) values ('Teekay LNG Partners L.P.', 'TGP^A', 'n/a', 'n/a', 'NYSE', '$421.28');
insert into stock (stock_name, stock_symbol, industry, sector, market, price) values ('Centene Corporation', 'CNC', 'Medical Specialities', 'Health Care', 'NYSE', '$1004.87');
insert into stock (stock_name, stock_symbol, industry, sector, market, price) values ('Baidu, Inc.', 'BIDU', 'Computer Software: Programming, Data Processing', 'Technology', 'NASDAQ', '$123.91');
insert into stock (stock_name, stock_symbol, industry, sector, market, price) values ('California Water  Service Group Holding', 'CWT', 'Water Supply', 'Public Utilities', 'NYSE', '$2146.51');
insert into stock (stock_name, stock_symbol, industry, sector, market, price) values ('Kirby Corporation', 'KEX', 'Marine Transportation', 'Consumer Services', 'NYSE', '$1459.40');
insert into stock (stock_name, stock_symbol, industry, sector, market, price) values ('Basic Energy Services, Inc.', 'BAS', 'Oilfield Services/Equipment', 'Energy', 'NYSE', '$633.87');
insert into stock (stock_name, stock_symbol, industry, sector, market, price) values ('SPX Corporation', 'SPXC', 'Industrial Machinery/Components', 'Technology', 'NYSE', '$1150.39');
insert into stock (stock_name, stock_symbol, industry, sector, market, price) values ('Meridian Bioscience Inc.', 'VIVO', 'Biotechnology: In Vitro & In Vivo Diagnostic Substances', 'Health Care', 'NASDAQ', '$2004.69');
insert into stock (stock_name, stock_symbol, industry, sector, market, price) values ('Akamai Technologies, Inc.', 'AKAM', 'Business Services', 'Miscellaneous', 'NASDAQ', '$177.64');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                             %
% Question 1.f                                                                %
%                                                                             %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
INSERT INTO portfolio(entry_id, quantity)
SELECT i AS entry_id, ROUND(RANDOM()*100)
FROM generate_series(1,500) AS i;

SELECT * FROM portfolio;
