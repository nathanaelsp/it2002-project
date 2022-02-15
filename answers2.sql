%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                             %
% Project Titik Merah Trading Dot Com (Question 2)                            %
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
% Question 2.a                                                                %
%                                                                             %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Return Credit Card type with the highest numbers of users

SELECT cc_type
FROM customer
GROUP BY cc_type
HAVING COUNT(cc_type) >= (SELECT MAX(total_users) 
						  FROM (SELECT COUNT(cc_type) AS total_users
								FROM customer
								GROUP BY cc_type) AS max_value);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                             %
% Question 2.b                                                                %
%                                                                             %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Filter out email addresses whose owner hold any IBM stocks (from customer table) and return the remaining full name(s) and email(s)

SELECT c.full_name, c.email
FROM customer c
WHERE c.email NOT IN (
	SELECT DISTINCT c.email
	FROM customer c, stock s, portfolio p
	WHERE p.c_email = c.email AND p.s_symbol = s.stock_symbol
	AND s.stock_name = 'International Business Machines Corporation')
ORDER BY c.email;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                             %
% Question 2.c                                                                %
%                                                                             %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Take the sum product of the quantity of IBM stocks managed by the portal (from portfolio table) and the stock price (from stock table)

SELECT sum(p.quantity * s.price) AS total_value
FROM portfolio p, stock s
WHERE s.stock_symbol = p.s_symbol AND s.stock_name = 'International Business Machines Corporation';

SELECT s1.total_quantity * s2.price AS total_value
FROM (SELECT SUM(quantity) AS total_quantity
      FROM portfolio
      WHERE s_symbol = 'IBM'
      GROUP BY s_symbol ) AS s1,
      (SELECT price
       FROM stock
       WHERE stock_symbol = 'IBM' 
      LIMIT 1) AS s2 ;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                             %
% Question 2.d                                                                %
%                                                                             %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Return the full name of customer(s) with the largest portfolio total value

SELECT c.full_name
FROM customer AS c, portfolio AS p1, stock AS s1
WHERE c.email = p1.c_email AND p1.s_symbol = s1.stock_symbol
GROUP BY full_name
HAVING SUM(p1.quantity * s1.price) >= (SELECT MAX(total_value) 
									   FROM (SELECT SUM(p2.quantity * s2.price) AS total_value
											 FROM portfolio AS p2, stock AS s2
											 WHERE p2.s_symbol = s2.stock_symbol
											 GROUP BY c_email)
									   AS max_portfolio_values);
