USE SPOR_ARSIVI
GO


--1)Oyuncu tablomuzdan ya�� 22 den k���k oyuncular�m�z� siliyoruz.?
DELETE MO
 FROM OYUNCU O INNER JOIN MACOLAYI MO
   ON O.OyuncuID = MO.Oyuncu1ID 
     WHERE DATEDIFF(YEAR,DogumTarihi,GETDATE()) < 22


--2)y�ll�k s�zle�me fiyatlar� 500000 ile 700000 aras� olan verileri siliniz.
DELETE 
FROM SOZLESME 
WHERE Y�ll�k�cret BETWEEN 50000 AND 200000


--3)2019 sezon y�l� �ampiyonas�nda 4 puan alan tak�m� tak�m �ampiyona tablomuzdan ��kar�yoruz.
DELETE 
 FROM TAKIMSEZONDAOYNAR
  WHERE Sezon_ID = (SELECT Sezon_ID 
   FROM SEZON 
    WHERE SezonAd� = 'S�per Lig') AND Puan > 4


--4)Ma� tablosundan sezon ad� La Liga olan ma�lar� siliyoruz.?
DELETE Y
FROM MAC M INNER JOIN YONETIR Y
  ON M.MacID = Y.MacID
    WHERE Sezon_id = (SELECT SezonID FROM SEZON WHERE SezonAd� = 'La Liga')


--5)Y�ll�k s�zle�me fiyat� 200.000'den az olan tak�m sponsorluklar�n� siliniz.
DELETE SO 
 FROM Tak�m T INNER JOIN SponsorOlur SO 
  ON T.Tak�m_ID = SO.Tak�m_ID
   WHERE SO.Tak�m_ID IN (SELECT T.Tak�m_ID 
    FROM Tak�m T INNER JOIN SponsorOlur TS 
     ON T.Tak�m_ID = TS.Tak�m_ID 
      WHERE TS.Y�ll�Fiyat < 200.000) 