
--Tablo yap�s� konusunda ;
--1 veri taban�n�n 1 den fazla tablosu olabilir. �rnek vermek gerekirse OKUL veri taban�n Ders ve ��renci olmak �zere farkl� 2 tablosu olabilir.
--Birbirleriyle ii�kisi olan veriler bir tabloda tutulur. Ders ismi , Ders kodu Ders tablosunda .��renci ismi , ��renci numaras� ��renci tablosunda yer al�r.
--Sat�r : Tablodaki her kay�ta sat�r denir birden fazla veri alan�na ait tek bir kay�t olu�turulur.
--S�tun : T�m kay�tlarda sadece bir veri alan�na ait verileri tutar.
--Tablodaki her kutucu�a ise H�cre denir.

--Primary Key;
--Tablodaki her kayd�n kendine ait benzersiz(unique) bir de�eri olmal�.
--�rne�in ; 1 numaral� kay�t R�meysa ya ait t�m verileri getirir.
--TCKN ,sicil numaralar� unique de�erlerdir ancak primary key olmalar� sa�l�kl� de�ildir.
--Yukardaki sebepten DersId , OgrenciId gibi alanlar�n a��lmas� gerekir.Bunu ise "auto increment" ile yapar�z.

--Auto �ncrement ;
--Auto increment olarak ayarlanan Id alan�na bir daha m�dahale edilmez.
--Tabloya gelen her kay�tta bu Id bir �ncekinden 1 art�r�lark verilir ve default olarak 1 den ba�lar.
-- MS SQL Severda bunun ismi �dentity olarak adland�r�l�r.
-- Auto increment alan�n integer olmas� gerekiyor.

--Not Null ;
-- Bu �zellikle beraber istedi�imiz s�tunlar� zorunlu isted�imiz alanar� zorunlu olmayan alan haline getirebiliriz.
--Not null varsa o alan zorunludur , Not null yoksa o alan zorunlu de�ildir.
--TCKN alan� zorunlu alansa ki�i oraya girmediyse , onun kayd� kaydolmaz.

--�ncelikle var olan database'i siiyoruz.
  Drop Database Okul;

--2. olarak yeni bir database olu�turuyoruz.
  Create Database School;
 
--���nc�  olarak de�i�ken veri t�r� ,primary key ve Not null �zelliklerine g�re bir tablo olu�turuyorum.
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

  -- D�rd�nc� kullan�mda ise 3 alter kullan�m� .
  -- Var oan tabloya yeni  s�tun eklenmesi .
  Alter table School add Adres varchar(80);

  --Var olan s�tunun veri t�r�n� de�i�mek.
  Alter table School alter column Adres varchar(100);

  --Var olan bir s�tunun silinmesi.
  Alter table School drop column Adres;

  --Be�inci kullan�mda tablomuzu siliyoruz. Bu kodda i�indeki veriler ile t�m tablo silinmi� oluyor. Sadece tablo i�indeki verilerin silinmesi
  --Truncate komutu ile ger�eke�ir.
  Drop  table School;