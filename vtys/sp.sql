USE SPOR_ARSIVI
GO

IF OBJECT_ID('dbo.takimDuzenle') IS NOT NULL
	BEGIN
		DROP PROCEDURE takimDuzenle
	END
GO

-- Tabloda bulunan herhangi bir tak�m� d�zenlemek i�in bir procedur yaz�n�z. E�er d�zenlenmek istenen tak�m tabloda yoksa ekleyiniz. 

CREATE or ALTER PROCEDURE takimDuzenle(
@takimAdi VARCHAR(30),
@takimlkKurulusYili DATE,
@sehirAdi VARCHAR(30))
AS 
BEGIN
SET NOCOUNT ON; 
 
 BEGIN TRAN
   BEGIN TRY       
			  --Kullan�c�n�n verdi�i tak�m ad� db'de var m� kontrol ediliyor.
					IF @takimAdi NOT IN (SELECT T.Tak�m_Ad� FROM Tak�m T WHERE T.Tak�m_Ad�= @takimAdi)
					BEGIN
						--Kullan�c�n�n verdi�i �ehir ad� db'de var m� kontrol ediliyor.
						IF @sehirAdi NOT IN (SELECT S.Seh�r_Ad� FROM SEHIR S WHERE S.Seh�r_Ad�= @sehirAdi)
						BEGIN
						--Kullan�c�n�n verdi�i �ehir ad� db'de yoksa yeni bir �ehir olarak insert ediliyor.
						INSERT INTO SEHIR(Seh�r_Ad�)
						VALUES(@sehirAdi)
						END

						--Kullan�c�n�n verdi�i �ehir ad� db'de var fakat tak�m�n ad� db'de bulunmad��� i�in kullan�c�n�n verdi�i bilgiler do�rultusunda tak�m db'ye insert ediliyor.
						DECLARE @sehirPlaka int
						SET @sehirPlaka = (SELECT s.Plaka FROM SEHIR S WHERE S.Seh�r_Ad� = @sehirAdi)
							INSERT INTO Tak�m (Tak�m_Ad�,Kurulus_Tar�h�,Plaka_shr)
							VALUES (@takimAdi,@takimlkKurulusYili,@sehirPlaka);
					END

					--Kullan�c�n�n verdi�i tak�m ad� db'de varsa else k�sm� �al���yor.
					ELSE BEGIN

					--Kullan�c�n�n verdi�i �lke ad� db'de var m� kontrol ediliyor.
					IF @sehirAdi NOT IN (SELECT S.Seh�r_Ad� FROM SEHIR S WHERE S.Seh�r_Ad�= @sehirAdi)
						BEGIN
						INSERT INTO SEHIR (Seh�r_Ad�)
						VALUES(@sehirAdi)
						END
					
					--Kullan�c�n�n verdi�i  bilgiler do�rultusunda tak�m db'de update ediliyor.
					UPDATE Tak�m
					SET Kurulus_Tar�h� = @takimlkKurulusYili , Plaka_shr = (SELECT S.Plaka FROM SEHIR S WHERE S.Seh�r_Ad� = @sehirAdi)
					WHERE Tak�m_Ad� = @takimAdi
					END
               
			   --Hata olmad��� takdirde bu i�lemler commit edilir.
              COMMIT TRANSACTION
       END TRY
       BEGIN CATCH
			--Hata yakalan�ld��� takdirde rollback ile i�lemler geri al�n�r.
              ROLLBACK TRANSACTION
       END CATCH
END
GO

-- Tak�m tablosundaki PSV tak�m�n�n ilk kat�l�m tarihi ve �ehri de�i�tirildi.

select * from SEHIR
EXEC takimDuzenle 'PSV', '1991-12-12', 'Selanik'
GO

-- Tak�m tablosunda bulunmayan Medipol Ba�ak�ehir tak�m� tabloya eklendi. 

EXEC takimDuzenle 'Medipol Ba�ak�ehir', '1982-12-10', '�stanbul'
GO

-- Tak�m tablosunda bulunmayan Adana spor tak�m� tabloya eklendi ve �ehir tablosunda bulunmayan Adana tabloya eklendi.

EXEC takimDuzenle 'Adana Spor', '1951-12-10', 'Adana'
GO
