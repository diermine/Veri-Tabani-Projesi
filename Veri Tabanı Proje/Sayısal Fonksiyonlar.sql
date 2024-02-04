select abs(-7.78)

/*Bilet fiyatlar�n� yukar� ve a��a�� yuvarlama*/
select bilet_fiyat,CEILING(bilet_fiyat) as fiyat_yukar�,floor(bilet_fiyat) as fiyat_assag� from bilet

/*Bilet fiyat virg�lden sonra 1 say� alma*/
select round(bilet_fiyat,1) from bilet

/*Bilet fiyat karesinin virg�lden sonra 2 say� alma*/
select round(Square(bilet_fiyat),2) as karesi_virg�lden_sonra_2 from bilet

/*Bilet fiyat�n kare k�k�*/
select sqrt(bilet_fiyat) as kare_k�k� from bilet

/*Bilet fiyat karek�kten sonra 2 say� alma*/
select round(sqrt(bilet_fiyat),2) from bilet

/*Bilet fiyatlar�n� toplama*/
select sum(bilet_fiyat) from bilet

/*Bilet fiyatlar�n� toplad�ktan ve virg�lden sonra 2 say� alma*/
select round(sum(Fiyat),2) from bilet

/*Bilet Fiyatlar�n�n ortalamas�*/
select avg(bilet_fiyat) fiyat_ort from bilet


/*Ka� tane bilet alan m�steri var*/
select COUNT(bilet_id) as m�steri_say�s� from bilet

/*Bilet'te farkl� r�tbelerin fiyat ortalamas�*/
select bilet_r�tbe,count(*) as m�steri_say�s� ,avg(bilet_fiyat) as ortalama from bilet
group by bilet_r�tbe

/*Aktif olan biletlerin say�s�*/
select bilet_durum,count(*) as aktif_say� from bilet
where bilet_durum='Aktif'
group by bilet_durum

/*�ptal olan biletlerin say�s�*/
select bilet_durum,count(*) as aktif_say� from bilet
where bilet_durum='�ptal'
group by bilet_durum

/*Bilet fiyat�n 2 �ss�n� alma*/
select POWER(bilet_fiyat,2) from bilet 


select MIN(bilet_fiyat) from bilet

select max(bilet_fiyat) from bilet


