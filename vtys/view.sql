
-- �lkelere g�re ortalama ya�� ve ortalama ya�a ba�l� olarak oyuncular�n durumunu belirtir

USE SPOR_ARSIVI
Go 

IF OBJECT_ID('dbo.OyuncuYasDurumu') IS NOT NULL
	BEGIN
		DROP VIEW OyuncuYasDurumu
	END
GO
Create or Alter View OyuncuYasDurumu As 
  Select t1.*,

CASE 
     WHEN OyuncununYas�>OrtalamaYas then 'Ya�l�'
     WHEN OyuncununYas�<OrtalamaYas then 'Gen�'
     WHEN OyuncununYas�=OrtalamaYas then 'E�it' 
 End As Ya�Durumu
     From (
	    Select t1.*, 
		       t2.UlkeAd� , 
			   DATEDIFF(yy,T1.DogumTarihi,GETDATE()) as OyuncununYas�,
			   dbo.AvgAge_eachCountry(t2.UlkeAd�) as OrtalamaYas 
		from dbo.OYUNCU t1 
		     left join dbo.ULKELER t2  
			   on t1.UlkeID = t2.UlkeID) t1

