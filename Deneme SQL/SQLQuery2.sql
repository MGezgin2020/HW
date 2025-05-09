--------Database (Veritaban�)
-------- Veritaban� verilerimizi g�venli bir �ekilde depolamam�za imkan verir. Ayn� anda birden fazla ki�i ba�lanabilir ve CRUD i�lemleri yapabilir.Excel'de tekki�i olabilir. G�venlik �nemli. 
-------- Database 2'ye ayr�l�r
-------- 1. SQL 2.NoSQL
-------- 1.SQL: Verileri d�zenli bir �ekilde tablolarda saklarlar. Ayr�ca tablolar aras�nda ili�kisel olarak verileri depolarlar. 
-------- SQL veritabanlar� �ok kuralc�d�r. Bir tabloda bulunan s�tunlar d���nda bir veri ilgili tabloya eklenemez.
-------- SQL veritabanlar� piyasada �ok�a kullan�l�r (Learning Management System - LMS e-commerce CRM CMS SAP etc SQL kullan�r., Piyasada kullan�lan SQL t�rleri Oracle(bu efsane bir dev..onda s�z dizimleri biraz de�i�ebilir) , MS SQL , PostgreSQL (bu free) , MySQL)
-------- select * from Categories
-------- select * from Products
--------2. NoSQL : Verilerin d�zensiz bir �ekilde documentlarda belgelerde saklan�r. Herhangi bir tablo yap�s� ya da tablolar aras�nda ili�ki s�z konusu -----   de�ildir.
------use Northwind
-------- select * from Categories
-------- Herhangi bir tablodan veri getirme.   --> select veri okumas�nda kullan�l�r
--------sELECT * FROM Orders
-------- Product tablosundan ProductName , UnitPrice , UnitsInStock s�tunlar�n� listeleyiniz
------SELECT ProductName,
------		UnitPrice ,
------		UnitsInStock
------FROM Products

-------- Orders tablosundan CustomerID OrderDate ShipName s�tunlar�n� listeleyiniz.

------select CustomerID, 
------OrderDate,
------ShipName
------from Orders

-------- Employees tablosundan FirstName LastName ve Title s�tunlar�n� listeleyiniz

------select 
------FirstName, 
------LastName, 
------Title 
------from Employees

------ Products tablosundan ProductName, ve stoktaki �r�n� satarsam ne kadar gelir elde edece�imi bulal�m
----select ProductName ,
----(UnitPrice * UnitsInStock * (1-Discontinued) as Income
----from Products
----SELECT
----	OrderID,
----	FORMAT (OrderDate , 'dd.MM.yyyyy') as OrderDate,
----	ShipName,
----	ShipCountry
----FROM Orders

----SELECT 
----	OrderID,
----	UnitPrice,
----	Quantity,
----	FORMAT(UnitPrice * Quantity * (1-Discount), 'C','tr-TR') as Income
----FROM [Order Details]

----SELECT
----	-- DISTINCT City   --> Bir s�tundaki biricik de�erleri d�ner.. pe�pe�e iki sat�ra DISTINCT yazsak d�nm�yor
----	DISTINCT Country
----FROM Employees
------ Where: Anahtar s�zc��� ile Query'lerimizde filtreler uygulayabiliyoruz.
------ UnitPrice 20.00'den b�y�k olan kay�tlar� listeleyin ProductName, UnitPrice , UnitsinStock, QuantityPerUnit
----SELECT
----	ProductName,
----	UnitPrice, 
----	UnitsInStock, 
----	QuantityPerUnit
----FROM Products
----WHERE UnitPrice > 20.00

------ UnitsInStock 100 ile 120 aras�nda olan �r�nleri bilgileri ile listeleyiniz

------Path I
----SELECT * FROM Products
----WHERE UnitsInStock >= 100 and UnitsInStock <= 120
------Path II
----SELECT * FROM Products
----WHERE UnitsInStock BETWEEN 100 and 120
---- OrderID, CustomerID, OrderDate g�n ay y�l format�nda , freight de�eri 32.28 yA DA 65.83 ya da 22.98 olan kay�tlar� listeleyin

----SELECT
----	OrderID,
----	CustomerID,
----	CONVERT(nvarchar(10), OrderDate, 104) as OrderDate, --CONVERT() Fonksiyonu ise veri tipi de�i�tirmek i�in kullan�l�r. Burada OrderDAte s�tunun verisini s�zel bir tipe d�n��t�rd�k ayr�ca 104 ise g�rmek istedi�im tarih format�d�r.
----	Freight
----FROM Orders
----WHERE Freight In(32.28, 65.83, 22.98) --�ok fazla OR yazmak yerine IN() Fonksiyonu kullan�labilir
------ �al��anlar i�inde FirstName Robert olan kayd�n FullName ve do�um tarihini listeleyelim
----SELECT
----	FirstName + SPACE(1) + LastName as FullName,
----	FORMAT(BirthDate, 'dd.MM.yyyy') as BirthDate
----FROM Employees
----WHERE FirstName = 'Robert'

---- B�lgesini (Region) bilmedi�im m��terileri listeleyin
--SELECT * FROM Customers
--WHERE Region IS NULL
---- Country s�tunundaki biricik verileri listeleyin G�ney Amerika haricindekileri
----m��terilerimin ve Region'�NULL olmayan m��terilerin Company name Contact name listeleyin


--SELECT 
--	CompanyName, 
--	ContactName,
--	Region,
--	Country
--FROM 
--	Customers
--WHERE
--	Country NOT IN ('Brazil' , 'Venezuela', 'Argentina') AND 
--	Region IS NOT NULL
-- D��ar�dan bize g�n ay y�l olarak gelen 04.07.1996 ve 04.10.1996 tarihleri aras�ndaki sipari�leri ta��yan kargo firmas�n�n kodu (ShipVia   ShipName  ShipAdress bilgilerini ekrana basal�m:
-- cevap : 2 tane de�i�ken tan�ml�yoruz. De�i�ken tan�mlarken DECLARE kelimesini kullan�yoruz. @ sembol� ile de�i�klenimize bir isim veriyoruz. �sim verirken camek case kullan�yoruz� De�i�kenimize bir tip ge�iriyoruz. Burada NVARCHAR son �karaj da ka� karakter bar�nd�raca��n� yaz�yoruz.

--DECLARE @startDate NVARCHAR(20)
--DECLARE @endDate NVARCHAR(20)

---- De�i�kene de�er atamak i�in SET anahtar kelimesini kullan�yorux.

--SET @startDate = '01.01.1997'
--SET @endDate = '31.03.1997'

--SELECT
--	ShipVia,
--	ShipName,
--	ShipAddress,
--	FORMAT(OrderDate, 'dd.MM.yyyy') as OrderDate
--FROM Orders
--WHERE OrderDate BETWEEN
--	CONVERT(DATETIME, @startDate, 104) AND
--	CONVERT(DATETIME,@endDate, 104)


--SELECT -- * FROM Orders
--	ShipVia,
--	ShipName,
--	ShipAddress,
--	CONVERT(nvarchar(10), OrderDate, 104) as OrderDate
--FROM Orders
--WHERE OrderDate BETWEEN CONVERT(datetime, '04.07.1996', 104) 
--                    AND CONVERT(datetime, '04.10.1996', 104)

-- �al��anlar�n ya�lar�n� hesaplay�n , FullName formatl� bir halde birthdate gene formatl� ve Age s�tunlar�m�z olsun.
use Northwind
--SELECT
--	FirstName+SPACE(1)+LastName AS FullName,
--	FORMAT(Birthdate, 'dd.MM.yyyy') as BirthDate,
--	DATEDIFF(YEAR, BirthDate, GETDATE()) as Age
--FROM Employees
--ORDER BY AGE DESC

--�al��anlar�n ya� aral��� 70 ila 90 aras�nda olanlar�n FullName formatl� bir halde birthdate gene formatl� ve Age s�tunlar�m�z olsun
--SELECT
--	FirstName+SPACE(1)+LastName AS FullName,
--	FORMAT(Birthdate, 'dd.MM.yyyy') as BirthDate,
--	DATEDIFF(YEAR, BirthDate, GETDATE()) as Age
--FROM Employees
--WHERE DATEDIFF(YEAR, BirthDate, GETDATE()) BETWEEN 70 and 90
-- LIKE SQL'de pattern e�le�tirmek i�inkullan�lan bir yap�d�r. �zellikle bir s�tun i�erisinde bir kal�ba yani ifadeye uyan verileri filtrelemeye yarar.. bu ba�lamda WHERE ifadesi ile birlikte kullan�l�r. 
-- WHERE Column_Name LIKE '%R'--> �rnek bir LIKE kullan�m�... '%' sembol�n�n konumu �ok �nemlidir. Ba�ta ise ilgili ifadenin son harfi R mi diye bakar.. Sonda olsa idi.. ba�lang�� harfini kontrol edecekti. 
-- Soru : Ad� r harfi ile ba�layan �al��anlar�n fullname , hiredate, ka� y�ld�r �al��an�m�z oldu�unu listeleyin

--SELECT
--	FirstName+SPACE(1)+LastName AS FullName,
--	FORMAT(HireDate, 'dd.MM.yyyy') as HireDate,
--	DATEDIFF(YEAR, HireDate, GETDATE()) AS WorkYear
--FROM Employees
--WHERE FirstName LIKE 'R%'

---- Ad�n�n son harfi a olan �al��anlar� listeleyin

--SELECT
--	FirstName+SPACE(1)+LastName AS FullName,
--	FORMAT(HireDate, 'dd.MM.yyyy') as HireDate,
--	DATEDIFF(YEAR, HireDate, GETDATE()) AS WorkYear
--FROM Employees
--WHERE FirstName LIKE '%a'

-- Ad�n�n i�inde a harfi ge�en �al��anlar� lsteleyin fullname hiredate ka� y�ld�r eleman a'dan z'ye s�ralay�n

--SELECT
--	FirstName+SPACE(1)+LastName AS FullName,
--	FORMAT(HireDate, 'dd.MM.yyyy') as HireDate,
--	DATEDIFF(YEAR, HireDate, GETDATE()) AS WorkYear
--FROM Employees
--WHERE FirstName LIKE '%a%'
--ORDER BY FullName ASC

----Ad�n�n ilk harfi R 3. harfi B 6. harfi T olan �al��an� listeleyin

--SELECT * FROM Employees
--WHERE FirstName LIKE 'r_b__t'

---- �r�n ad� i�erisinde milk ge�meyen �r�nleri stock bilgisine g�re s�ralayarak listeleyin
--Select
--	ProductName,
--	UnitPrice,
--	UnitsInStock
--From Products
--WHERE ProductName  NOT LIKE '%milk%'
--ORDER BY UnitsInStock ASC
----SELECT * FROM PRODUCTS
----WHERE ProductName LIKE '%!_%' ESCAPE '!'
------ SQL case-sensitive de�ildir. Ancak COLLATE ile b�y�k - k���k harf duyarl� hale getirebiliriz.
----SELECT
----	*
----FROM Employees
----WHERE FirstName COLLATE Latin1_General_CS_AS LIKE 'Robert'
------ CS Case Sensitive AS accent sensitive Latin1_General_CS_AS �ngilizceye g�re karakter s�ralama kural�d�r.

------=--AVG() MIN() MAX() SUM() bu�lt-in function bu fonksiyonlara aggregate functions denir. Tek ba�lar�na da fazla anlam te�kil etmezler genellikle GROUPBY ile birlikte kullan�ll�rlar

----SELECT
----	AVG(UnitPrice) as AVGPrice
----FROM Products



------ Groupby SQL'de verileri belirli bir s�tua g�re gruplayarak toplu i�lemler yapmam�za olanak sa�layan yap�d�r. aggregate fonksiyonlar� ile birlikte kullan�l�r.
----GroupBy sonucunda elde etti�imiz veri k�mesini filtrelemek i�in HAVING kullan�yoruz.
----SELECT * FROM Products
----SELECT * FROM Categories
------ Soru : Hangi kategori alt�nda ka� tane �r�n�m var ? GROUPBY From'dan sonra gelir ve kime g�re gruplanacaksa o yaz�l�r ard�ndan sonra
----SELECT 
----	CategoryID,
----	COUNT(ProductID) as ProductAmount
----FROM Products
----GROUP BY CategoryID
----ORDER BY ProductAmount DESC

------ Soru : Kategorilere g�re stock durumu nedir ?
----SELECT
----	CategoryID,
----	CategoryName,(bunu nas�l ekleriz?)
----	SUM(UnitsInStock) as TotalStock
----FROM Products
----GROUP BY CategoryID
----ORDER BY TotalStock DESC

------SORU Hangi tedarik�iden ka� farkl� �r�n al�yorum?

----SELECT 
----	SupplierID,
----	COUNT(ProductID) as TotalProduct
----FROM Products
----GROUP BY SupplierID
----ORDER BY TotalProduct DESC

------ Ka� farkl� �ehirde �al��an�m var ?
----SELECT  
----	City,
----	COUNT(City) as CityCount
----FROM Employees
----GROUP BY City

----SELECT
----	DISTINCT City
----From Employees

----SELECT
----* 
----FROM Employees	

------ E�er sayd���m� s�tunda NULL de�erler carsa sayma i�lemi eksik olur .. Dikkatli olun !

------ Hangi �lkeden ka� tane �al��an�m var?
----SELECT 
----	Country,
----	COUNT(Country) as Country
----FROM Employees
----GROUP BY Country

------ Hangi �al��an Ka� sipari� ger�ekle�tirmi�?
----SELECT 
----	EmployeeID,
----	COUNT(OrderDate) as OrderCount
----FROM Orders
----GROUP BY EmployeeID 
----ORDER BY EmployeeID
------ Her bir �al��an�n ger�ekle�tirdi�i sipari�in toplam kargo �creti nedir ?

----SELECT 
----	EmployeeID,
----	SUM(Freight) as TotalFreight
----FROM Orders
----GROUP BY EmployeeID 
----ORDER BY EmployeeID
------ Her bir sipari�ten ne kadar gelir elde etmi�im ? iskonto da var

----Select 
----	OrderID,
----	FORMAT (SUM(UnitPrice * Quantity * (1- Discount)), 'C' , 'tr-TR') as OrderAmount

----FROM [Order Details]
----GROUP BY OrderID
------KA� farkl� �lkeden m��terim var ?
----SELECT 
----	TOP 3			-- listedeki ilk 3 �lke d�necek . Dikkat ! ASC olsayd� en az tekrarlayan en �stte olacakt� !
----	Country,
----	COUNT(CustomerID) as TotalCustomerByCountry
----FROM Customers
----GROUP BY Country
----ORDER BY TotalCustomerByCountry DESC

------ FETCH - OFF sET

----Select 
----	OrderID,
----	FORMAT (SUM(UnitPrice * Quantity * (1- Discount)), 'C' , 'tr-TR') as OrderAmount

----FROM [Order Details]
----GROUP BY OrderID
----OFFSET 5 ROWS -- �LK 5 SATIRI ATLA
----FETCH NEXT 5 ROWS ONLY -- SONRAK� 5 SATIRI GET�R

----Having : Group By sonucunda d�nen veri k�mesi �zerinde filtre atmaya ve �o�unlukla aggregate function �zerinde filtre yapmaya yarar. Where ile bu filtrelemeyi yapamay�z.Where s�tuna filtre at�yor.

---- Soru : 100'den fazla sipari� ge�ti�im �lkeleri listeleyelim

--SELECT 
--	TOP 1
--	ShipCountry,
--	COUNT(OrderID) as OrderCount
--FROM Orders
--GROUP BY ShipCountry
--HAVING COUNT(OrderID) > 50
--ORDER BY OrderCount DESC
---- Stok miktar� 400'�n alt�nda olan kategorilere g�re �r�nleri listeleyelim
--SELECT 
--	CategoryID,
--	SUM(UnitsInStock) AS TotalStock
--FROM Products
--GROUP BY CategoryID
--HAVING SUM(UnitsInStock) < 400
--ORDER BY TotalStock ASC
---- Hangi sipari�ten ne kadar gelir elde etmi�im ? yani sipari�lere g�re gelirim nedir ?
---- geliri 2000'in alt�nda olan sipari�leri listeleyelim.
--SELECT  
--	OrderId
--	FORMAT (SUM(UnitPrice * Quantity * (1-Discount),'C' , 'tr-TR')) as Revenue
--FROM [Order Details]
--GROUP BY OrderID
----HAVING Revenue < 2000  -- bu �al��mada.. olmayan s�tun ad� yarat�nca HAVING �al��m�yor..
--HAVING (SUM(UnitPrice * Quantity * (1-Discount)) <= 2000
--ORDER BY Revenue

---- Aylara g�re sipari� say�m nedir ? 
---- Filtre : Toplam Sipari� say�s� 200'den b�y�k olan aylar� listeleyelim
--SELECT 
--	MONTH(OrderDate) AS ay_numarasi,
--	COUNT(OrderID) as TotalOrder
--FROM Orders
--GROUP BY MONTH(OrderDate)
--HAVING COUNT(OrderID) > 50
--ORDER BY TotalOrder DESC

----ba�lang�� ve biti� aral�klar�n� de�i�kende tan�mlay�n
---- verilen aral�kta sipari� veren m��terileri listeleyin
---- �rne�in 10 ile 15 sipari� veren m��terileri listeleyin

--DECLARE @startQuantity INT
--DECLARE @endQuantity INT
--SET @startQuantity = 10
--SET @endQuantity = 15

--SELECT 
--	CustomerID,
--	COUNT(OrderID) as TotalOrder
--FROM Orders
--GROUP BY CustomerID
--HAVING COUNT(OrderID) > @startQuantity AND
--		COUNT(OrderID) < @endQuantity
--ORDER BY TotalORder DESC,CustomerID ASC

----1. �al��anlar� title bilgisine g�re gruplayal�m
----2. ya� ortalamalar�n� bulal�m
----3. ya� ortalamas� 70 ile 80 aras�nda olanlar� listeleyelim.

--SELECT
--	Title,
--	AVG(DATEDIFF(YEAR, BirthDate, GETDATE())) as AVGofAge
--FROM Employees
--GROUP BY Title
--HAVING AVG(DATEDIFF(YEAR, BirthDate, GETDATE())) BETWEEN 70 AND 80

---- JOIN
---- Nedir ? T�rleri 
---- �rnek �nceleyin

Buradan ba�l�yor
------ JOIN : SQL eri tabanlar� veriyi tablolarda ve ili�kisel olarak saklar. Bu tablolar aras�ndaki ili�kilerden yola ��karak tablolar� birle�tirerek (join) birden fazla tabloya sorgu atarak veri elde ediyoruz.Yani tablolar� birle�tirerek ili�kili verileri sorgulamam�za izin verir. . Join i�lemi uygulan�rken birincil anahtar (PK) ve ikincil anahtar (FK) kullan�l�r.

---- T�rleri :
---- 1. INNER JOIN ya da JOIN : Join edilecek tablolarda e�le�en ya da bir ba�ka deyi�le kesi�en verileri getirir. 
---- 2. LEFT JOIN (LEFT OUTER JOIN) : Join'e kat�lan tablolardan soldaki t�m kay�tlar� ve sa�daki tablodan kesi�en yani e�le�en kay�tlar� getirir.
----3. RIGHT JOIN (RIGHT OUTER JOIN) : Join'e kat�lan tablolardan sa�daki t�m kay�tlar� ve soldaki tablodan kesi�en yani e�le�en kay�tlar� getirir.
---- 4. FULL JOIN (FULL OUTER JOIN) : Join'e kat�lan t�m tablolardaki t�m kay�tlar� getirir. E�le�meyenler varsa NULL d�ner. 
----5. CROSS JOIN : Join'e kat�lan tablolar� �aprazlar her bir kay�t her biriyle e�le�ir.

--SELECT 
--	c.CategoryName,
--	p.ProductName,
--	p.UnitPrice,
--	p.UnitsInStock
--FROM Products AS p
--INNER JOIN Categories as c ON p.CategoryID = c.CategoryID

---- Hangi tedarik�iden hangi �r�n� al�yorum
---- Supplier tablosundan companyName , ContactName , Product tabosundan ProductName , UnitPrice , UnitsInStock s�tunlar�n� getirelim.

--SELECT
--	p.ProductName,
--	p.UnitPrice,
--	p.UnitsInStock,
--	s.CompanyName,
--	s.ContactName
--FROM Products AS p
--INNER JOIN Suppliers as s ON p.SupplierID = s.SupplierID
---- Hangi sipari�i hangi �al��an onaylam�� ?
---- Order Tablosundan OrderID OrderDate gelsin ama formatl�
----Employee tablosundan FirstName ve LastName gelsin ama gene formatl�
--SELECT * FROM Employees
--SELECT * FROM Orders
--SELECT
--	o.OrderID,
--	CONVERT(nvarchar(10), o.OrderDate, 104) as OrderDate,
--	e.FirstName + SPACE(1) + e.LastName as FullName
--FROM Orders AS o
--INNER JOIN Employees as e ON o.EmployeeID = e.EmployeeID

---- hangi sipari�i hangi kargo firmas� ta��m�� ?
---- Orders tablosundan OrderID OrderDate Shippers tablosundan CompanyName 
--SELECT
--	o.OrderID,
--	FORMAT(o.OrderDate,'dd.MM.yyyy') as OrderDate,
--	s.CompanyName
	
--FROM Orders AS o
--INNER JOIN Shippers as s ON o.ShipVia = s.ShipperID
---- Hangi kategori alt�nda ka� tane �r�n�m var ?
--SELECT
--	p.CategoryID,
--	c.CategoryName,
--	COUNT(p.ProductName) as TotalProduct
--FROM Categories AS c
--INNER JOIN Products AS p ON p.CategoryID = c.CategoryID
--GROUP BY p.CategoryID, c.CategoryName
--ORDER BY TotalProduct DESC

---- Hangi tedarik�iden ka� farkl� �r�n alm���m ? Veriler tekrar etmesin .. gruplayal�m.


--SELECT
--	s.SupplierID,
--	s.CompanyName,
--	COUNT(p.ProductName) AS ProductCount
	
--FROM Products AS p
--INNER JOIN Suppliers as s ON p.SupplierID = s.SupplierID
--GROUP BY s.SupplierID , s.CompanyName

----Kategorilere g�re stok durumum nedir ?
---- CategoryName Stock
--SELECT 
--	c.CategoryName,
--	SUM(p.UnitsInStock) as TotalStock
--FROM Categories as c
--JOIN Products as p ON p.CategoryID = c.CategoryID
--GROUP BY c.CategoryName
--HAVING SUM(p.UnitsInStock) < 500
--ORDER BY TotalStock ASC

---- En �ok sat�� yapan �al��an kim ?
--SELECT 
--	TOP 1
--	E.FirstName+SPACE(1)+E.LastName as FullName,
--	SUM(od.UnitPrice * od.Quantity * (1-od.Discount))  as INCOME
--FROM Orders AS o
--JOIN Employees as E ON E.EmployeeID = o.EmployeeID
--JOIN [Order Details] as od ON od.OrderID = o.OrderID
--GROUP BY E.FirstName+SPACE(1)+E.LastName
--ORDER BY INCOME DESC

---- Kategorilere g�re sat��lar�m nas�l ?
--SELECT 
--	c.CategoryID,
--	c.CategoryName,
--	FORMAT(SUM(od.UnitPrice * od.Quantity * (1-od.Discount)), 'C','tr-TR')  as INCOME
--FROM Products as p
--JOIN Categories as c ON c.CategoryID = p.CategoryID
--JOIN [Order Details] as OD ON OD.ProductID= p.ProductID
--GROUP BY c.CategoryID, c.CategoryName
--ORDER BY SUM(od.UnitPrice * od.Quantity * (1-od.Discount)) DESC

---- Hangi kargocuya ne kadar �deme yapm���m?

--SELECT
--	s.CompanyName,
--	SUM(o.Freight) as Total
--FROM Orders AS o
--JOIN Shippers AS s on o.ShipVia = s.ShipperID
--GROUP BY s.CompanyName
--ORDER BY Total DESC

---- Hani m��terimden  ne kadar para kazanm���m ? 

--SELECT  
--	c.CustomerID,

--	CAST(SUM(od.UnitPrice * od.Quantity * (1-od.Discount)), AS DECIMAL (18,2)')  as   

--	-- �r�nlere g�re sat��lar�m nas�l ? Bu �r�nleri hangi tedarik�iden alm���m ?

--SELECT 
--	p.ProductName,
--	s.CompanyName as CompanyName,
--	SUM(OD.Quantity) as TotalQuantity,
--	FORMAT(SUM(od.UnitPrice * od.Quantity * (1-od.Discount)), 'C','en-US')  as TotalIncome
--FROM Products AS p
--JOIN [Order Details] as OD ON od.ProductID = p.ProductID
--JOIN Suppliers AS S ON s.SupplierID = p.SupplierID
--GROUP BY P.ProductName, s.CompanyName
--HAVING SUM(OD.Quantity) BETWEEN 1000 and 2000
--ORDER BY TotalQuantity DESC

-- BURDAN BA�LA
-- SUB QUERY
-- Sorgu i�inde sorgu yazmam�za imkan veren bir yap�d�r. Nested Query de diyebiliriz.

-- En pahal� �r�n�n  ad�n� yazd�r�n
-- Sto�u en fazla olan �r�n�n ad�n� yazd�r�n

--SELECT 
--	TOP 1
--	ProductName, 
--	UnitPrice
--FROM Products
--ORDER BY UnitPrice DESC
 
--SELECT 
--	ProductName, 
--	UnitPrice
--FROM Products
--WHERE UnitPrice = (SELECT MAX(UnitPrice) FROM Products);

---- En �ok sipari� veren m��teriyi bulun
--SET sTATISTICS TIME ON
--SELECT
--	CompanyName
--FROM Customers
--WHERE CustomerID = (
--	SELECT
--		TOP 1
--		CustomerID 
--	FROM Orders
--	GROUP BY CustomerID
--	ORDER BY COUNT(OrderID) DESC)
--SET sTATISTICS TIME OFF


----Ortalama fiyat�n �st�nde sat�lan �r�nleri listeleyin
--SELECT
--	ProductName
--FROM Products 
--WHERE UnitPrice > (select AVG(UnitPrice) from PRODUCTS)

-- 6.5.2025
-- Almanya'ya g�nderilen sipari�lerin hangi m��teri hangi �r�nleri sipari� etti�ini ve miktarlar�n� listeleyelim.

--SELECT 
--	c.CompanyName,
--	P.ProductName,
--	od.Quantity,
--	O.ShipCountry
--FROM ORDERS o
--JOIN [Order Details] as OD ON od.OrderID = o.OrderID
--JOIN Products P ON OD.ProductID = P.ProductID
--JOIN Customers C ON O.CustomerID = C.CustomerID
--WHERE o.OrderID IN (
--	SELECT OrderID FROM ORders WHERE ShipCountry = 'Germany')
--ORDER BY Quantity DESC

---- Ortalama �r�n fiyatlar�n�n �zerinde fiyat� olan �r�nlerin sipari�lerini ve toplam fiyatlar�n� listeleyelim
----Benim cevab�m: bunu kontrol et.. yanl�� galiba ?

--SELECT 
--	p.ProductName,
--	FORMAT(SUM(od.UnitPrice * od.Quantity * (1-od.Discount)), 'C','en-US')  as TotalIncome	
--FROM [Order Details] AS od 
--JOIN Orders AS O ON od.OrderID = o.OrderID
--JOIN Products AS P ON p.ProductID = od.ProductID
--WHERE od.UnitPrice > (select AVG(UnitPrice) from [Order Details])
--GROUP BY p.ProductName

----Hocan�n cevab� ise : 
--SELECT
--	P.ProductName,
--	P.UnitPrice,
--	OD.Quantity,
--	(od.UnitPrice * od.Quantity * (1-od.Discount)) as TotalIncome
--FROM Products P
--JOIN [Order Details] OD ON P.ProductID=Od.ProductID
--WHERE P.UnitPrice > (SELECT AVG(UnitPrice) FROM Products)

---- Kategorisi Beverages olan �r�nlerin sipari�lerini listeleyin

---- SELECT 
--	FirstName + SPACE(1)+LastName as FullName,
--	dbo.CalculateEmployeeAge(e.EmployeeID) as Age
--FROM Employees E
--ORDER BY Age DESCjOIN Categories C ON 
---- JOIN [Order Details] OD
---- Subquery--> Filtre CategoryName Beverages olan �r�nlerin ProductID ProductNam CategoryID from Products

--SELECT
--	p.ProductID,
--	p.ProductName,
--	od.Quantity	
--FROM [Order Details] AS od
--JOIN Products AS p ON p.ProductID = od.ProductID
--WHERE od.ProductID IN (
--SELECT 
--	p.ProductID
--FROM PRODUCTS P 
--JOIN Categories AS C ON p.CategoryID = c.CategoryID
--WHERE c.CategoryName ='Beverages')

---- 7.5.2025 �ALI�ANLARIN ALDI�I S�PAR��LER VE S�PAR�� SAYISINI EKRANA YAZDIRALIM
---- HER �ALI�ANIN ALDI�I TOPLAM S�PAR�� SAYISINI G�STEREL�M

--SELECT 
--	FirstName+SPACE(1)+LastName as FullName,
--	(SELECT 
--	COUNT(*)
--	FROM Orders O
--	Where O.EmployeeID = E.EmployeeID)
--	AS TotalOrders
--FROM Employees E 

---- Hangi �al��an hangi sipari�i hangi m��teriye yapm�� ? 
---- Join k�sm� : Orders Employees Customer
----Select k�sm�nda FirstName LastName CompanyName OrderID CompanyName
---- subquery ekleme : sadece USA'deki m��teriler
--SELECT 
--E.FirstName + '' + E.LastName,
--O.OrderID,
--C.CompanyName,
--C.country
--from Orders O
--Join Employees as E on O.EmployeeID = E.EmployeeID
--Join Customers as C on O.CustomerID = C.CustomerID
--WHERE c.CustomerID IN (
--	SELECT 
--		CustomerID
--	FROM Customers
--	WHERE Country = 'USA')

--	-- CUSTOM FUNCTIONS
--	--FUNCTIONS ALTINA D���YOR.. B�R KERE �ALI�TIRINCA O FONKS�YONLARIN HEPS�N� B�T�N --NORTHWIND ALTINDA KULLANAB�L�YORUZ. FONKS�YONLAR TABLO D�ND�REN VE DE�ER D�ND�REN �K� T�RDE. ARG�MAN ALIYORLAR.
--	-- D��ar�dan �al��an ID'si alan ve ilgili �al��an�n ad�n� ve soyad�n� d�nd�ren fonksiyonu yaz�n
--GO
--CREATE FUNCTION dbo.GetEmployeeById(@EmployeeID INT)
--RETURNS NVARCHAR(100)
--AS 
--BEGIN
--	DECLARE @FullName NVARCHAR(100)
--	SELECT
--		@FullName = FirstName+SPACE(1)+LastName
--	  FROM Employees
--	  WHERE EmployeeID= @EmployeeID
--	  RETURN @FullName
--	END
--GO

--SELECT dbo.GetEmployeeById(1) as FullName
--SELECT dbo.GetEmployeeById(5) as FullName

---- SORU: D��ardan gelen m��teri ID'sine g�re m��terinin toplam sipari� say�s�n� d�nen fonksiyonu yazal�m.

--GO
--CREATE FUNCTION dbo.GetCustomerOrderAmountByID(@CustomerID NVARCHAR(5))
--RETURNS INT
--AS
--BEGIN
--	DECLARE @OrderCount INT
--	SELECT 
--	 @OrderCount = COUNT(*) 
--	FROM Orders
--	WHERE CustomerID = @CustomerID
--	RETURN @OrderCount
--	END
--GO


--SELECT dbo.GetCustomerOrderAmountByID ('ALFKI') as TotalOrder

---- �al��an ID'sini arg�man olarakal�p ilgili �al��an�n ya��n� hesaplay�p ekrana yazd�ran fonksiyonu yaz�n
--GO
--CREATE FUNCTION dbo.CalculateEmployeeAge(@EmployeeID INT)
--RETURNS INT
--AS
--BEGIN
--	DECLARE @Age INT
--	SELECT 
--	 @Age = DATEDIFF(YEAR, BirthDate, GETDATE())
--	FROM Employees
--	WHERE EmployeeID = @EmployeeID
--	RETURN @Age
--	END
--GO


--SELECT 
--	FirstName + SPACE(1)+LastName as FullName,
--	dbo.CalculateEmployeeAge(e.EmployeeID) as Age
--FROM Employees E
--ORDER BY Age DESC


------ 8.5.2025
---- �r�n stok durumunu yans�tan bir fonksiyon yazal�m
---- Arg�man �r�n�n ID gelecek ve o �r�n bulunacak stok durumu return edilecek
---- 100 ve �zeri iyi 
---- 50 ve alt� d���k stok
---- 0 stok d���
---- Hocan�n cevab� ba�ka t�rl�.. ben kendi cevab�m� yazd�m .. 
--	GO
--	CREATE FUNCTION dbo.GetProductStockStatusById (@ProductID INT)
--	RETURNS NVARCHAR(50)
--	AS
--	BEGIN
--		DECLARE @StockQuantity INT
--		DECLARE @Status VARCHAR(50)
    
--		SELECT @StockQuantity = UnitsInStock 
--		FROM Products 
--		WHERE ProductID = @ProductID
    
  
--		IF @StockQuantity = 0
--			SET @Status = 'Out of stock'
--		ELSE IF @StockQuantity <= 50
--			SET @Status = 'Low'
--		ELSE IF @StockQuantity >= 100
--			SET @Status = 'Good'
--		ELSE
--			SET @Status = 'Acceptable' 
--		RETURN @Status
--	END
--	GO

--SELECT 
--	ProductID,
--	ProductName,
--	UnitPrice,
--	UnitsInStock,
--	dbo.GetProductStockStatusById(ProductId) as StockStatus
--FROM Products


---- Bir sipari�in toplam tutar�n� bulan fonksiyonu yaz�n
---- sipari�ID arg�man�m�z olacak

--GO
--CREATE FUNCTION dbo.GetOrderIncome(@OrderID INT)
--RETURNS MONEY
--AS
--BEGIN
--	DECLARE @Income MONEY
--	SELECT 
	
--	@Income = SUM(UnitPrice * Quantity * (1-Discount))
--	FROM [Order Details]
--	WHERE OrderID = @OrderID
--	RETURN @Income
--END
--GO

--SELECT 
--	OrderID,
--	dbo.GetOrderIncome(OrderID) as Income
--FROM [Order Details]

----GetOrderIncome fonksiyonunu g�ncelleyelim
---- Income 1000den b�y�k ise iyi
---- 500 - 1000 aras� orta
---- 1-500 aras�nda ise d���k
---- 0 ve alt� ise "no income"
--GO
--ALTER FUNCTION dbo.GetOrderIncome(@OrderID INT)
--RETURNS NVARCHAR(50) 
--AS
--BEGIN
--    DECLARE @Income INT
--    DECLARE @Status NVARCHAR(50)
--    SELECT 
--		@Income = SUM(UnitPrice * Quantity * (1-Discount))
--    FROM [Order Details]
--    WHERE OrderID = @OrderID
    
--    SET @Status = CASE 
--       WHEN @Income >= 1000 THEN 'GOOD'
--       WHEN @Income BETWEEN 500 AND 1000 THEN 'ACCEPTABLE'
--       WHEN @Income BETWEEN 1 AND 500 THEN 'LOW'
--       ELSE 'no income'
--	END
    
--    RETURN @Status
--END
--GO

--SELECT 
--	ORderId,
--	SUM(UnitPrice * Quantity * (1-Discount)) as INCOME,
--	dbo.GetOrderIncome(OrderId) as Income
--FROM [Order Details]
--GROUP BY OrderID

---- hangi �al��an ne kadar gelir getirmi� ? fonksiyon

--GO
--CREATE FUNCTION dbo.RevenueByEmployee(@EmployeeID Smallint)

--SELECT 
--*
--FROM Employees E
--SELECT * FROM [Order Details] AS od = 


--Fonksiyonla�t�r�lacaklar� fonksiyonla�t�r�n. Tar
--Projenin  sahibi dosyalar� a�s�n
--branchleri ay�racak
--Dilber Branch 1 - Hilal Branch 2.. herkes o branch �zerinden lokaline alacak
--google meeting ile 10 dakika bir araya gelin.. dandik bir �eyi push edin. de�i�tirin VS code ile.
--klas�r klas�r de gidebilirsiniz.. dosyalar� a�
--simple select.sql   bo� bir �ekilde bile olsa
--�rneklerin yaz�lacaklar� yer belli olmal�
--5 �rnek 5 �rnek..

