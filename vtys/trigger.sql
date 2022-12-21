USE SPOR_ARSIVI
GO

--!!!!!!  �NEML�  !!!!!
--TRIGGER'dan �nce Tak�m adl� tabloya DegisiklikTarihi kolonunu ekliyoruz.
ALTER TABLE Tak�m
ADD DegisiklikTarihi DATE
GO

IF OBJECT_ID ('trgtakimDuzenle') IS NOT NULL
	BEGIN
		DROP TRIGGER trgtakimDuzenle
	END
GO

/* Tak�mlar�n kurulu� tarihi g�n�m�zden ileri bir tarih olmas� durumunda yeni bir tak�m eklenmesi veya tak�mlar�n g�ncellenmesini engelleyen trigger� yaz�n�z.
E�er do�ru tarih ile veri eklenir veya g�ncellenirse bu i�lemin yap�ld��� tarihi getiriniz. */

CREATE OR ALTER TRIGGER trgtakimDuzenle ON TAKIM FOR INSERT , UPDATE  AS

DECLARE @Tak�mID TABLE ( ID INT )
DECLARE @KurulusTarihi DATE = (SELECT Kurulus_Tar�h� FROM inserted)

INSERT INTO @Tak�mID SELECT Tak�m_ID FROM inserted

IF (@KurulusTarihi > GETDATE())
	BEGIN
		ROLLBACK	 
		PRINT('Kurulu� tarihi g�n�m�z tarihinden sonra olamaz.')
	END
ELSE
	UPDATE Tak�m SET DegisiklikTarihi = GETDATE() WHERE Tak�m_ID IN (SELECT ID FROM @Tak�mID)
GO

-- �ncelikle do�ru bir �rnek deneyelim. Burada veri yine ayn� �ekilde tabloya eklenir ve de�i�iklik tarihi de kolonuna yaz�l�r.

EXEC takimDuzenle 'Galatasaray', '1905-10-01', '�stanbul'
GO
select * from TAKIM
-- �imdi ise Kurulus_Tar�h� s�tununa g�n�m�zden ileri bir tarih yazarak yanl�� bir �rnek deneyelim.

EXEC takimDuzenle 'Galatasaray', '2023-12-30', '�stanbul'
GO


