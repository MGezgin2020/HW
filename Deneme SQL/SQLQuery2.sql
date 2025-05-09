--------Database (Veritabaný)
-------- Veritabaný verilerimizi güvenli bir þekilde depolamamýza imkan verir. Ayný anda birden fazla kiþi baðlanabilir ve CRUD iþlemleri yapabilir.Excel'de tekkiþi olabilir. Güvenlik önemli. 
-------- Database 2'ye ayrýlýr
-------- 1. SQL 2.NoSQL
-------- 1.SQL: Verileri düzenli bir þekilde tablolarda saklarlar. Ayrýca tablolar arasýnda iliþkisel olarak verileri depolarlar. 
-------- SQL veritabanlarý çok kuralcýdýr. Bir tabloda bulunan sütunlar dýþýnda bir veri ilgili tabloya eklenemez.
-------- SQL veritabanlarý piyasada çokça kullanýlýr (Learning Management System - LMS e-commerce CRM CMS SAP etc SQL kullanýr., Piyasada kullanýlan SQL türleri Oracle(bu efsane bir dev..onda söz dizimleri biraz deðiþebilir) , MS SQL , PostgreSQL (bu free) , MySQL)
-------- select * from Categories
-------- select * from Products
--------2. NoSQL : Verilerin düzensiz bir þekilde documentlarda belgelerde saklanýr. Herhangi bir tablo yapýsý ya da tablolar arasýnda iliþki söz konusu -----   deðildir.
------use Northwind
-------- select * from Categories
-------- Herhangi bir tablodan veri getirme.   --> select veri okumasýnda kullanýlýr
--------sELECT * FROM Orders
-------- Product tablosundan ProductName , UnitPrice , UnitsInStock sütunlarýný listeleyiniz
------SELECT ProductName,
------		UnitPrice ,
------		UnitsInStock
------FROM Products

-------- Orders tablosundan CustomerID OrderDate ShipName sütunlarýný listeleyiniz.

------select CustomerID, 
------OrderDate,
------ShipName
------from Orders

-------- Employees tablosundan FirstName LastName ve Title sütunlarýný listeleyiniz

------select 
------FirstName, 
------LastName, 
------Title 
------from Employees

------ Products tablosundan ProductName, ve stoktaki ürünü satarsam ne kadar gelir elde edeceðimi bulalým
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
----	-- DISTINCT City   --> Bir sütundaki biricik deðerleri döner.. peþpeþe iki satýra DISTINCT yazsak dönmüyor
----	DISTINCT Country
----FROM Employees
------ Where: Anahtar sözcüðü ile Query'lerimizde filtreler uygulayabiliyoruz.
------ UnitPrice 20.00'den büyük olan kayýtlarý listeleyin ProductName, UnitPrice , UnitsinStock, QuantityPerUnit
----SELECT
----	ProductName,
----	UnitPrice, 
----	UnitsInStock, 
----	QuantityPerUnit
----FROM Products
----WHERE UnitPrice > 20.00

------ UnitsInStock 100 ile 120 arasýnda olan ürünleri bilgileri ile listeleyiniz

------Path I
----SELECT * FROM Products
----WHERE UnitsInStock >= 100 and UnitsInStock <= 120
------Path II
----SELECT * FROM Products
----WHERE UnitsInStock BETWEEN 100 and 120
---- OrderID, CustomerID, OrderDate gün ay yýl formatýnda , freight deðeri 32.28 yA DA 65.83 ya da 22.98 olan kayýtlarý listeleyin

----SELECT
----	OrderID,
----	CustomerID,
----	CONVERT(nvarchar(10), OrderDate, 104) as OrderDate, --CONVERT() Fonksiyonu ise veri tipi deðiþtirmek için kullanýlýr. Burada OrderDAte sütunun verisini sözel bir tipe dönüþtürdük ayrýca 104 ise görmek istediðim tarih formatýdýr.
----	Freight
----FROM Orders
----WHERE Freight In(32.28, 65.83, 22.98) --Çok fazla OR yazmak yerine IN() Fonksiyonu kullanýlabilir
------ Çalýþanlar içinde FirstName Robert olan kaydýn FullName ve doðum tarihini listeleyelim
----SELECT
----	FirstName + SPACE(1) + LastName as FullName,
----	FORMAT(BirthDate, 'dd.MM.yyyy') as BirthDate
----FROM Employees
----WHERE FirstName = 'Robert'

---- Bölgesini (Region) bilmediðim müþterileri listeleyin
--SELECT * FROM Customers
--WHERE Region IS NULL
---- Country sütunundaki biricik verileri listeleyin Güney Amerika haricindekileri
----müþterilerimin ve Region'ýNULL olmayan müþterilerin Company name Contact name listeleyin


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
-- Dýþarýdan bize gün ay yýl olarak gelen 04.07.1996 ve 04.10.1996 tarihleri arasýndaki sipariþleri taþýyan kargo firmasýnýn kodu (ShipVia   ShipName  ShipAdress bilgilerini ekrana basalým:
-- cevap : 2 tane deðiþken tanýmlýyoruz. Deðiþken tanýmlarken DECLARE kelimesini kullanýyoruz. @ sembolü ile deðiþklenimize bir isim veriyoruz. Ýsim verirken camek case kullanýyoruzç Deðiþkenimize bir tip geçiriyoruz. Burada NVARCHAR son ýkaraj da kaç karakter barýndýracaðýný yazýyoruz.

--DECLARE @startDate NVARCHAR(20)
--DECLARE @endDate NVARCHAR(20)

---- Deðiþkene deðer atamak için SET anahtar kelimesini kullanýyorux.

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

-- Çalýþanlarýn yaþlarýný hesaplayýn , FullName formatlý bir halde birthdate gene formatlý ve Age sütunlarýmýz olsun.
use Northwind
--SELECT
--	FirstName+SPACE(1)+LastName AS FullName,
--	FORMAT(Birthdate, 'dd.MM.yyyy') as BirthDate,
--	DATEDIFF(YEAR, BirthDate, GETDATE()) as Age
--FROM Employees
--ORDER BY AGE DESC

--Çalýþanlarýn yaþ aralýðý 70 ila 90 arasýnda olanlarýn FullName formatlý bir halde birthdate gene formatlý ve Age sütunlarýmýz olsun
--SELECT
--	FirstName+SPACE(1)+LastName AS FullName,
--	FORMAT(Birthdate, 'dd.MM.yyyy') as BirthDate,
--	DATEDIFF(YEAR, BirthDate, GETDATE()) as Age
--FROM Employees
--WHERE DATEDIFF(YEAR, BirthDate, GETDATE()) BETWEEN 70 and 90
-- LIKE SQL'de pattern eþleþtirmek içinkullanýlan bir yapýdýr. Özellikle bir sütun içerisinde bir kalýba yani ifadeye uyan verileri filtrelemeye yarar.. bu baðlamda WHERE ifadesi ile birlikte kullanýlýr. 
-- WHERE Column_Name LIKE '%R'--> örnek bir LIKE kullanýmý... '%' sembolünün konumu çok önemlidir. Baþta ise ilgili ifadenin son harfi R mi diye bakar.. Sonda olsa idi.. baþlangýç harfini kontrol edecekti. 
-- Soru : Adý r harfi ile baþlayan çalýþanlarýn fullname , hiredate, kaç yýldýr çalýþanýmýz olduðunu listeleyin

--SELECT
--	FirstName+SPACE(1)+LastName AS FullName,
--	FORMAT(HireDate, 'dd.MM.yyyy') as HireDate,
--	DATEDIFF(YEAR, HireDate, GETDATE()) AS WorkYear
--FROM Employees
--WHERE FirstName LIKE 'R%'

---- Adýnýn son harfi a olan çalýþanlarý listeleyin

--SELECT
--	FirstName+SPACE(1)+LastName AS FullName,
--	FORMAT(HireDate, 'dd.MM.yyyy') as HireDate,
--	DATEDIFF(YEAR, HireDate, GETDATE()) AS WorkYear
--FROM Employees
--WHERE FirstName LIKE '%a'

-- Adýnýn içinde a harfi geçen çalýþanlarý lsteleyin fullname hiredate kaç yýldýr eleman a'dan z'ye sýralayýn

--SELECT
--	FirstName+SPACE(1)+LastName AS FullName,
--	FORMAT(HireDate, 'dd.MM.yyyy') as HireDate,
--	DATEDIFF(YEAR, HireDate, GETDATE()) AS WorkYear
--FROM Employees
--WHERE FirstName LIKE '%a%'
--ORDER BY FullName ASC

----Adýnýn ilk harfi R 3. harfi B 6. harfi T olan çalýþaný listeleyin

--SELECT * FROM Employees
--WHERE FirstName LIKE 'r_b__t'

---- Ürün adý içerisinde milk geçmeyen ürünleri stock bilgisine göre sýralayarak listeleyin
--Select
--	ProductName,
--	UnitPrice,
--	UnitsInStock
--From Products
--WHERE ProductName  NOT LIKE '%milk%'
--ORDER BY UnitsInStock ASC
----SELECT * FROM PRODUCTS
----WHERE ProductName LIKE '%!_%' ESCAPE '!'
------ SQL case-sensitive deðildir. Ancak COLLATE ile büyük - küçük harf duyarlý hale getirebiliriz.
----SELECT
----	*
----FROM Employees
----WHERE FirstName COLLATE Latin1_General_CS_AS LIKE 'Robert'
------ CS Case Sensitive AS accent sensitive Latin1_General_CS_AS Ýngilizceye göre karakter sýralama kuralýdýr.

------=--AVG() MIN() MAX() SUM() buýlt-in function bu fonksiyonlara aggregate functions denir. Tek baþlarýna da fazla anlam teþkil etmezler genellikle GROUPBY ile birlikte kullanýllýrlar

----SELECT
----	AVG(UnitPrice) as AVGPrice
----FROM Products



------ Groupby SQL'de verileri belirli bir sütua göre gruplayarak toplu iþlemler yapmamýza olanak saðlayan yapýdýr. aggregate fonksiyonlarý ile birlikte kullanýlýr.
----GroupBy sonucunda elde ettiðimiz veri kümesini filtrelemek için HAVING kullanýyoruz.
----SELECT * FROM Products
----SELECT * FROM Categories
------ Soru : Hangi kategori altýnda kaç tane ürünüm var ? GROUPBY From'dan sonra gelir ve kime göre gruplanacaksa o yazýlýr ardýndan sonra
----SELECT 
----	CategoryID,
----	COUNT(ProductID) as ProductAmount
----FROM Products
----GROUP BY CategoryID
----ORDER BY ProductAmount DESC

------ Soru : Kategorilere göre stock durumu nedir ?
----SELECT
----	CategoryID,
----	CategoryName,(bunu nasýl ekleriz?)
----	SUM(UnitsInStock) as TotalStock
----FROM Products
----GROUP BY CategoryID
----ORDER BY TotalStock DESC

------SORU Hangi tedarikçiden kaç farklý ürün alýyorum?

----SELECT 
----	SupplierID,
----	COUNT(ProductID) as TotalProduct
----FROM Products
----GROUP BY SupplierID
----ORDER BY TotalProduct DESC

------ Kaç farklý þehirde çalýþaným var ?
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

------ Eðer saydýðýmý sütunda NULL deðerler carsa sayma iþlemi eksik olur .. Dikkatli olun !

------ Hangi ülkeden kaç tane çalýþaným var?
----SELECT 
----	Country,
----	COUNT(Country) as Country
----FROM Employees
----GROUP BY Country

------ Hangi Çalýþan Kaç sipariþ gerçekleþtirmiþ?
----SELECT 
----	EmployeeID,
----	COUNT(OrderDate) as OrderCount
----FROM Orders
----GROUP BY EmployeeID 
----ORDER BY EmployeeID
------ Her bir çalýþanýn gerçekleþtirdiði sipariþin toplam kargo ücreti nedir ?

----SELECT 
----	EmployeeID,
----	SUM(Freight) as TotalFreight
----FROM Orders
----GROUP BY EmployeeID 
----ORDER BY EmployeeID
------ Her bir sipariþten ne kadar gelir elde etmiþim ? iskonto da var

----Select 
----	OrderID,
----	FORMAT (SUM(UnitPrice * Quantity * (1- Discount)), 'C' , 'tr-TR') as OrderAmount

----FROM [Order Details]
----GROUP BY OrderID
------KAç farklý ülkeden müþterim var ?
----SELECT 
----	TOP 3			-- listedeki ilk 3 ülke dönecek . Dikkat ! ASC olsaydý en az tekrarlayan en üstte olacaktý !
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
----OFFSET 5 ROWS -- ÝLK 5 SATIRI ATLA
----FETCH NEXT 5 ROWS ONLY -- SONRAKÝ 5 SATIRI GETÝR

----Having : Group By sonucunda dönen veri kümesi üzerinde filtre atmaya ve çoðunlukla aggregate function üzerinde filtre yapmaya yarar. Where ile bu filtrelemeyi yapamayýz.Where sütuna filtre atýyor.

---- Soru : 100'den fazla sipariþ geçtiðim ülkeleri listeleyelim

--SELECT 
--	TOP 1
--	ShipCountry,
--	COUNT(OrderID) as OrderCount
--FROM Orders
--GROUP BY ShipCountry
--HAVING COUNT(OrderID) > 50
--ORDER BY OrderCount DESC
---- Stok miktarý 400'ün altýnda olan kategorilere göre ürünleri listeleyelim
--SELECT 
--	CategoryID,
--	SUM(UnitsInStock) AS TotalStock
--FROM Products
--GROUP BY CategoryID
--HAVING SUM(UnitsInStock) < 400
--ORDER BY TotalStock ASC
---- Hangi sipariþten ne kadar gelir elde etmiþim ? yani sipariþlere göre gelirim nedir ?
---- geliri 2000'in altýnda olan sipariþleri listeleyelim.
--SELECT  
--	OrderId
--	FORMAT (SUM(UnitPrice * Quantity * (1-Discount),'C' , 'tr-TR')) as Revenue
--FROM [Order Details]
--GROUP BY OrderID
----HAVING Revenue < 2000  -- bu çalýþmada.. olmayan sütun adý yaratýnca HAVING çalýþmýyor..
--HAVING (SUM(UnitPrice * Quantity * (1-Discount)) <= 2000
--ORDER BY Revenue

---- Aylara göre sipariþ sayým nedir ? 
---- Filtre : Toplam Sipariþ sayýsý 200'den büyük olan aylarý listeleyelim
--SELECT 
--	MONTH(OrderDate) AS ay_numarasi,
--	COUNT(OrderID) as TotalOrder
--FROM Orders
--GROUP BY MONTH(OrderDate)
--HAVING COUNT(OrderID) > 50
--ORDER BY TotalOrder DESC

----baþlangýç ve bitiþ aralýklarýný deðiþkende tanýmlayýn
---- verilen aralýkta sipariþ veren müþterileri listeleyin
---- örneðin 10 ile 15 sipariþ veren müþterileri listeleyin

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

----1. çalýþanlarý title bilgisine göre gruplayalým
----2. yaþ ortalamalarýný bulalým
----3. yaþ ortalamasý 70 ile 80 arasýnda olanlarý listeleyelim.

--SELECT
--	Title,
--	AVG(DATEDIFF(YEAR, BirthDate, GETDATE())) as AVGofAge
--FROM Employees
--GROUP BY Title
--HAVING AVG(DATEDIFF(YEAR, BirthDate, GETDATE())) BETWEEN 70 AND 80

---- JOIN
---- Nedir ? Türleri 
---- Örnek Ýnceleyin

Buradan baþlýyor
------ JOIN : SQL eri tabanlarý veriyi tablolarda ve iliþkisel olarak saklar. Bu tablolar arasýndaki iliþkilerden yola çýkarak tablolarý birleþtirerek (join) birden fazla tabloya sorgu atarak veri elde ediyoruz.Yani tablolarý birleþtirerek iliþkili verileri sorgulamamýza izin verir. . Join iþlemi uygulanýrken birincil anahtar (PK) ve ikincil anahtar (FK) kullanýlýr.

---- Türleri :
---- 1. INNER JOIN ya da JOIN : Join edilecek tablolarda eþleþen ya da bir baþka deyiþle kesiþen verileri getirir. 
---- 2. LEFT JOIN (LEFT OUTER JOIN) : Join'e katýlan tablolardan soldaki tüm kayýtlarý ve saðdaki tablodan kesiþen yani eþleþen kayýtlarý getirir.
----3. RIGHT JOIN (RIGHT OUTER JOIN) : Join'e katýlan tablolardan saðdaki tüm kayýtlarý ve soldaki tablodan kesiþen yani eþleþen kayýtlarý getirir.
---- 4. FULL JOIN (FULL OUTER JOIN) : Join'e katýlan tüm tablolardaki tüm kayýtlarý getirir. Eþleþmeyenler varsa NULL döner. 
----5. CROSS JOIN : Join'e katýlan tablolarý çaprazlar her bir kayýt her biriyle eþleþir.

--SELECT 
--	c.CategoryName,
--	p.ProductName,
--	p.UnitPrice,
--	p.UnitsInStock
--FROM Products AS p
--INNER JOIN Categories as c ON p.CategoryID = c.CategoryID

---- Hangi tedarikçiden hangi ürünü alýyorum
---- Supplier tablosundan companyName , ContactName , Product tabosundan ProductName , UnitPrice , UnitsInStock sütunlarýný getirelim.

--SELECT
--	p.ProductName,
--	p.UnitPrice,
--	p.UnitsInStock,
--	s.CompanyName,
--	s.ContactName
--FROM Products AS p
--INNER JOIN Suppliers as s ON p.SupplierID = s.SupplierID
---- Hangi sipariþi hangi çalýþan onaylamýþ ?
---- Order Tablosundan OrderID OrderDate gelsin ama formatlý
----Employee tablosundan FirstName ve LastName gelsin ama gene formatlý
--SELECT * FROM Employees
--SELECT * FROM Orders
--SELECT
--	o.OrderID,
--	CONVERT(nvarchar(10), o.OrderDate, 104) as OrderDate,
--	e.FirstName + SPACE(1) + e.LastName as FullName
--FROM Orders AS o
--INNER JOIN Employees as e ON o.EmployeeID = e.EmployeeID

---- hangi sipariþi hangi kargo firmasý taþýmýþ ?
---- Orders tablosundan OrderID OrderDate Shippers tablosundan CompanyName 
--SELECT
--	o.OrderID,
--	FORMAT(o.OrderDate,'dd.MM.yyyy') as OrderDate,
--	s.CompanyName
	
--FROM Orders AS o
--INNER JOIN Shippers as s ON o.ShipVia = s.ShipperID
---- Hangi kategori altýnda kaç tane ürünüm var ?
--SELECT
--	p.CategoryID,
--	c.CategoryName,
--	COUNT(p.ProductName) as TotalProduct
--FROM Categories AS c
--INNER JOIN Products AS p ON p.CategoryID = c.CategoryID
--GROUP BY p.CategoryID, c.CategoryName
--ORDER BY TotalProduct DESC

---- Hangi tedarikçiden kaç farklý ürün almýþým ? Veriler tekrar etmesin .. gruplayalým.


--SELECT
--	s.SupplierID,
--	s.CompanyName,
--	COUNT(p.ProductName) AS ProductCount
	
--FROM Products AS p
--INNER JOIN Suppliers as s ON p.SupplierID = s.SupplierID
--GROUP BY s.SupplierID , s.CompanyName

----Kategorilere göre stok durumum nedir ?
---- CategoryName Stock
--SELECT 
--	c.CategoryName,
--	SUM(p.UnitsInStock) as TotalStock
--FROM Categories as c
--JOIN Products as p ON p.CategoryID = c.CategoryID
--GROUP BY c.CategoryName
--HAVING SUM(p.UnitsInStock) < 500
--ORDER BY TotalStock ASC

---- En çok satýþ yapan çalýþan kim ?
--SELECT 
--	TOP 1
--	E.FirstName+SPACE(1)+E.LastName as FullName,
--	SUM(od.UnitPrice * od.Quantity * (1-od.Discount))  as INCOME
--FROM Orders AS o
--JOIN Employees as E ON E.EmployeeID = o.EmployeeID
--JOIN [Order Details] as od ON od.OrderID = o.OrderID
--GROUP BY E.FirstName+SPACE(1)+E.LastName
--ORDER BY INCOME DESC

---- Kategorilere göre satýþlarým nasýl ?
--SELECT 
--	c.CategoryID,
--	c.CategoryName,
--	FORMAT(SUM(od.UnitPrice * od.Quantity * (1-od.Discount)), 'C','tr-TR')  as INCOME
--FROM Products as p
--JOIN Categories as c ON c.CategoryID = p.CategoryID
--JOIN [Order Details] as OD ON OD.ProductID= p.ProductID
--GROUP BY c.CategoryID, c.CategoryName
--ORDER BY SUM(od.UnitPrice * od.Quantity * (1-od.Discount)) DESC

---- Hangi kargocuya ne kadar ödeme yapmýþým?

--SELECT
--	s.CompanyName,
--	SUM(o.Freight) as Total
--FROM Orders AS o
--JOIN Shippers AS s on o.ShipVia = s.ShipperID
--GROUP BY s.CompanyName
--ORDER BY Total DESC

---- Hani müþterimden  ne kadar para kazanmýþým ? 

--SELECT  
--	c.CustomerID,

--	CAST(SUM(od.UnitPrice * od.Quantity * (1-od.Discount)), AS DECIMAL (18,2)')  as   

--	-- ürünlere göre satýþlarým nasýl ? Bu ürünleri hangi tedarikçiden almýþým ?

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

-- BURDAN BAÞLA
-- SUB QUERY
-- Sorgu içinde sorgu yazmamýza imkan veren bir yapýdýr. Nested Query de diyebiliriz.

-- En pahalý ürünün  adýný yazdýrýn
-- Stoðu en fazla olan ürünün adýný yazdýrýn

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

---- En çok sipariþ veren müþteriyi bulun
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


----Ortalama fiyatýn üstünde satýlan ürünleri listeleyin
--SELECT
--	ProductName
--FROM Products 
--WHERE UnitPrice > (select AVG(UnitPrice) from PRODUCTS)

-- 6.5.2025
-- Almanya'ya gönderilen sipariþlerin hangi müþteri hangi ürünleri sipariþ ettiðini ve miktarlarýný listeleyelim.

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

---- Ortalama ürün fiyatlarýnýn üzerinde fiyatý olan ürünlerin sipariþlerini ve toplam fiyatlarýný listeleyelim
----Benim cevabým: bunu kontrol et.. yanlýþ galiba ?

--SELECT 
--	p.ProductName,
--	FORMAT(SUM(od.UnitPrice * od.Quantity * (1-od.Discount)), 'C','en-US')  as TotalIncome	
--FROM [Order Details] AS od 
--JOIN Orders AS O ON od.OrderID = o.OrderID
--JOIN Products AS P ON p.ProductID = od.ProductID
--WHERE od.UnitPrice > (select AVG(UnitPrice) from [Order Details])
--GROUP BY p.ProductName

----Hocanýn cevabý ise : 
--SELECT
--	P.ProductName,
--	P.UnitPrice,
--	OD.Quantity,
--	(od.UnitPrice * od.Quantity * (1-od.Discount)) as TotalIncome
--FROM Products P
--JOIN [Order Details] OD ON P.ProductID=Od.ProductID
--WHERE P.UnitPrice > (SELECT AVG(UnitPrice) FROM Products)

---- Kategorisi Beverages olan ürünlerin sipariþlerini listeleyin

---- SELECT 
--	FirstName + SPACE(1)+LastName as FullName,
--	dbo.CalculateEmployeeAge(e.EmployeeID) as Age
--FROM Employees E
--ORDER BY Age DESCjOIN Categories C ON 
---- JOIN [Order Details] OD
---- Subquery--> Filtre CategoryName Beverages olan ürünlerin ProductID ProductNam CategoryID from Products

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

---- 7.5.2025 ÇALIÞANLARIN ALDIÐI SÝPARÝÞLER VE SÝPARÝÞ SAYISINI EKRANA YAZDIRALIM
---- HER ÇALIÞANIN ALDIÐI TOPLAM SÝPARÝÞ SAYISINI GÖSTERELÝM

--SELECT 
--	FirstName+SPACE(1)+LastName as FullName,
--	(SELECT 
--	COUNT(*)
--	FROM Orders O
--	Where O.EmployeeID = E.EmployeeID)
--	AS TotalOrders
--FROM Employees E 

---- Hangi çalýþan hangi sipariþi hangi müþteriye yapmýþ ? 
---- Join kýsmý : Orders Employees Customer
----Select kýsmýnda FirstName LastName CompanyName OrderID CompanyName
---- subquery ekleme : sadece USA'deki müþteriler
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
--	--FUNCTIONS ALTINA DÜÞÜYOR.. BÝR KERE ÇALIÞTIRINCA O FONKSÝYONLARIN HEPSÝNÝ BÜTÜN --NORTHWIND ALTINDA KULLANABÝLÝYORUZ. FONKSÝYONLAR TABLO DÖNDÜREN VE DEÐER DÖNDÜREN ÝKÝ TÜRDE. ARGÜMAN ALIYORLAR.
--	-- Dýþarýdan çalýþan ID'si alan ve ilgili çalýþanýn adýný ve soyadýný döndüren fonksiyonu yazýn
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

---- SORU: Dýþardan gelen müþteri ID'sine göre müþterinin toplam sipariþ sayýsýný dönen fonksiyonu yazalým.

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

---- çalýþan ID'sini argüman olarakalýp ilgili çalýþanýn yaþýný hesaplayýp ekrana yazdýran fonksiyonu yazýn
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
---- ürün stok durumunu yansýtan bir fonksiyon yazalým
---- Argüman ürünün ID gelecek ve o ürün bulunacak stok durumu return edilecek
---- 100 ve üzeri iyi 
---- 50 ve altý düþük stok
---- 0 stok dýþý
---- Hocanýn cevabý baþka türlü.. ben kendi cevabýmý yazdým .. 
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


---- Bir sipariþin toplam tutarýný bulan fonksiyonu yazýn
---- sipariþID argümanýmýz olacak

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

----GetOrderIncome fonksiyonunu güncelleyelim
---- Income 1000den büyük ise iyi
---- 500 - 1000 arasý orta
---- 1-500 arasýnda ise düþük
---- 0 ve altý ise "no income"
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

---- hangi çalýþan ne kadar gelir getirmiþ ? fonksiyon

--GO
--CREATE FUNCTION dbo.RevenueByEmployee(@EmployeeID Smallint)

--SELECT 
--*
--FROM Employees E
--SELECT * FROM [Order Details] AS od = 


--Fonksiyonlaþtýrýlacaklarý fonksiyonlaþtýrýn. Tar
--Projenin  sahibi dosyalarý açsýn
--branchleri ayýracak
--Dilber Branch 1 - Hilal Branch 2.. herkes o branch üzerinden lokaline alacak
--google meeting ile 10 dakika bir araya gelin.. dandik bir þeyi push edin. deðiþtirin VS code ile.
--klasör klasör de gidebilirsiniz.. dosyalarý aç
--simple select.sql   boþ bir þekilde bile olsa
--örneklerin yazýlacaklarý yer belli olmalý
--5 örnek 5 örnek..

