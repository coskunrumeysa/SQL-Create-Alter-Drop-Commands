
--Tablo yapýsý konusunda ;
--1 veri tabanýnýn 1 den fazla tablosu olabilir. Örnek vermek gerekirse OKUL veri tabanýn Ders ve Öðrenci olmak üzere farklý 2 tablosu olabilir.
--Birbirleriyle iiþkisi olan veriler bir tabloda tutulur. Ders ismi , Ders kodu Ders tablosunda .Öðrenci ismi , öðrenci numarasý Öðrenci tablosunda yer alýr.
--Satýr : Tablodaki her kayýta satýr denir birden fazla veri alanýna ait tek bir kayýt oluþturulur.
--Sütun : Tüm kayýtlarda sadece bir veri alanýna ait verileri tutar.
--Tablodaki her kutucuða ise Hücre denir.

--Primary Key;
--Tablodaki her kaydýn kendine ait benzersiz(unique) bir deðeri olmalý.
--Örneðin ; 1 numaralý kayýt Rümeysa ya ait tüm verileri getirir.
--TCKN ,sicil numaralarý unique deðerlerdir ancak primary key olmalarý saðlýklý deðildir.
--Yukardaki sebepten DersId , OgrenciId gibi alanlarýn açýlmasý gerekir.Bunu ise "auto increment" ile yaparýz.

--Auto Ýncrement ;
--Auto increment olarak ayarlanan Id alanýna bir daha müdahale edilmez.
--Tabloya gelen her kayýtta bu Id bir öncekinden 1 artýrýlark verilir ve default olarak 1 den baþlar.
-- MS SQL Severda bunun ismi Ýdentity olarak adlandýrýlýr.
-- Auto increment alanýn integer olmasý gerekiyor.

--Not Null ;
-- Bu özellikle beraber istediðimiz sütunlarý zorunlu istedðimiz alanarý zorunlu olmayan alan haline getirebiliriz.
--Not null varsa o alan zorunludur , Not null yoksa o alan zorunlu deðildir.
--TCKN alaný zorunlu alansa kiþi oraya girmediyse , onun kaydý kaydolmaz.

--Öncelikle var olan database'i siiyoruz.
  Drop Database Okul;

--2. olarak yeni bir database oluþturuyoruz.
  Create Database School;
 
--Üçüncü  olarak deðiþken veri türü ,primary key ve Not null özelliklerine göre bir tablo oluþturuyorum.
  Create Table School(
  OgrenciId int primary key not null,
  TcNo char(11) not null,
  AdSoyad varchar(80) not null,
  OgrenciNu varchar(20) not null,
  Cinsiyet char(1) not null,
  Sinif char(2),
  Telefon char(10),
  Mail varchar(20)
  );

  -- Dördüncü kullanýmda ise 3 alter kullanýmý .
  -- Var oan tabloya yeni  sütun eklenmesi .
  Alter table School add Adres varchar(80);

  --Var olan sütunun veri türünü deðiþmek.
  Alter table School alter column Adres varchar(100);

  --Var olan bir sütunun silinmesi.
  Alter table School drop column Adres;

  --Beþinci kullanýmda tablomuzu siliyoruz. Bu kodda içindeki veriler ile tüm tablo silinmiþ oluyor. Sadece tablo içindeki verilerin silinmesi
  --Truncate komutu ile gerçekeþir.
  Drop  table School;