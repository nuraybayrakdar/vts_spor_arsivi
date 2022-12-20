USE SPOR_ARSIVI
GO

-- 1) A oyuncusunun ��kt��� B oyuncusunun girdi�i ma�larda toplam g�sterilen k�rm�z� kart say�s�
-- Yani oyuncu de�i�imi olan ma�larda g�sterilen toplam k�rm�z� kart say�s�

Select liste.MacID,Count(OlayTuruID) as k�rm�z� FROM
   (Select MacID,OlayTuruID,Oyuncu1ID,Oyuncu2ID FROM MACOLAYI M INNER JOIN OLAYTURU O
       ON M.OlayTuruID = O.Olay_id
	     WHERE O.Ad ='K�rm�z�Kart'
            EXCEPT
   SELECT MacID,OlayTuruID,Oyuncu1ID,Oyuncu2ID FROM MACOLAYI M INNER JOIN OLAYTURU O
       ON M.OlayTuruID = O.Olay_id
          WHERE O.Ad = 'OyuncuDe�i�imi' ) 
              as liste Group by MacID,OlayTuruID
  

-- 2) Son 3 sezonda hi� k�rm�z� kart yememi� oyunculardan hangileri hem X hem de Y tak�m�nda oynam��t�r
-- Hi� k�rm�z� kart yememi� oyuncular
SELECT M.OlayTuruID, M.MacID, O.OyuncuAdi, O.OyuncuSoyadi
   FROM MACOLAYI M
     INNER JOIN OYUNCU O
	   ON M.Oyuncu1ID = O.OyuncuID
	     WHERE M.OlayTuruID NOT IN (4)

-- 3) T�rpa��n sponsor oldu�u tak�mlara son 2 y�lda �dedi�i toplam fiyat

SELECT SUM(SO.Y�ll�Fiyat) AS TOPLAM
   FROM SponsorOlur SO INNER JOIN Sponsor S 
      ON S.SponsorID = SO.SponsorID
	     WHERE S.SponsorAd� = 'T�rpa�' AND 
		   (SO.S�zle�meBa�T >= '2020' AND SO.S�zle�meBitT <='2022')

-- 4) Eski�ehir Spor tak�m�n�n oynad��� ma�lar�n idleri, sezonun ad�, stadyumun ad� , ma��n yap�ld��� �ehri , puan�n� ve �lkesini getiriniz.

Select  Distinct M.MacID, M.Mac_Tarihi, SN.SezonAd�, S.StadyumAdi, SH.Seh�r_Ad�, TSO.Puan, U.UlkeAd�
From TAKIM T inner join STADYUM S
    on T.Tak�m_ID = S.TakimID inner join MAC M
        on T.Tak�m_ID = M.Tak�mEID inner join SEZON SN
           on SN.SezonID = M.Sezon_id inner join SEHIR SH
              on SH.Plaka = T.Plaka_shr inner join TAKIMSEZONDAOYNAR TSO
                 on T.Tak�m_ID = TSO.Tak�m_ID inner join ULKELER U
                    on U.UlkeID = SH.Ulke_Ad�

where T.Tak�m_Ad� = 'Eskisehir Spor'


--5) K�rm�z� kart alan oyuncular� ya��n� k���kten b�y��e s�ralay�n�z.

SELECT O.OyuncuAdi, O.OyuncuSoyadi, MO.MacID, O.OyuncuID , DATEDIFF(YEAR,O.DogumTarihi,GETDATE()) YA� 
  FROM OYUNCU O INNER JOIN MACOLAYI MO
    ON O.OyuncuID = MO.Oyuncu1ID INNER JOIN OLAYTURU OT
       ON OT.Olay_id = MO.OlayTuruID
         WHERE OT.Ad ='K�rm�z�Kart'
		   ORDER BY YA�


