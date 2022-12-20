USE SPOR_ARSIVI
GO 

--1) Stadyum tablosundan stadyum kapasitesini de�i�tirelim.
UPDATE STADYUM 
SET Kapasite = 52000
WHERE Kapasite = 37000

--2-) Mesut �zil adl� oyuncunun forma numaras�n� 10'dan 7 yap.
UPDATE OYUNCU
SET FormaNumarasi = 7
WHERE OyuncuAdi = 'Mesut' AND OyuncuSoyadi = '�zil'

--3-) Beko sponsorunun tak�m� ile olan y�ll�k s�zle�me fiyat�n� 100.000 tl artt�r.
UPDATE SponsorOlur
SET Y�ll�Fiyat = 720.000
FROM SponsorOlur
INNER JOIN Sponsor ON SponsorOlur.SponsorID = Sponsor.SponsorID
WHERE Sponsor.SponsorAd� = 'Beko'

 --4-) Y�netir tablosunda MacID = 1 olan ma��n hakemini de�i�tirelim
 UPDATE YONETIR
 SET Hakem_ID = 7
 FROM YONETIR WHERE MacID = 1

 --5-) Sponsor tablosunda Opet sponsorunun ad�n� de�i�tirelim
 UPDATE Sponsor
 SET SponsorAd� = 'Opet A.�'
 FROM Sponsor WHERE SponsorAd� = 'Opet'
