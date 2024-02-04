select LTRIM(hostes_soyad) as [Ba��ndaki Bo�luklar� Kald�r�r] from hostes 
select RTRIM(hostes_soyad)as [Sonundaki Bo�luklar� Kald�r�r] from hostes

select LTRIM(hostes_ad) as [Ba��ndaki Bo�luklar� Kald�r�r]  from hostes
select RTRIM(hostes_ad) as [Sonundaki Bo�luklar� Kald�r�r] from hostes

/*Hostes Ad�nda Ka� Karakter Vard�r*/
select len(hostes_ad) as karakter_say�s� from hostes
select len(hostes_soyad) as karakter_say�s� from hostes

/*Hostes ad soyad toplam� 12 karakteri ge�iyor ise g�ster*/
select len(hostes_ad+hostes_soyad) as Toplam_Karakter_Say�s� from hostes
where LEN(hostes_ad+hostes_soyad)>=12

/*Hostes ad soyad r�tbe sat�rlar�n� birle�tirir*/
select CONCAT(hostes_ad, hostes_soyad,' ',hostes_rutbe)  from hostes

select CONCAT_ws(hostes_ad, hostes_soyad,hostes_rutbe)  from hostes

/*Ge�ici olarak aktif biletleri iptal et*/

select bilet_durum, replace(bilet_durum,'Aktif','�ptal') as [Ge�ici olarak iptal edilen biletler] from bilet

/*Hostesdeki a herflerini arar */
select hostes_ad, CHARINDEX('a',hostes_ad) from hostes

/*Hosteslerin ismini ters �evirir*/
select REVERSE(hostes_ad) from hostes

/*Tekrarl� olarak veriyi yazd�r�r*/
select REPLICATE(hostes_ad,5) from hostes

/*Hostes A.Soyad� �eklinde yazd�r�r*/
select SUBSTRING (hostes_ad,1,1)+'.'+hostes_soyad as [A.Soyad�] from hostes

/*Hostesin Ad�n�n ilk Soyad�n�n 3 harfini yazd�r*/
select SUBSTRING(hostes_ad,1,1)+'.'+SUBSTRING (ltrim(hostes_soyad),1,3) as [A.Soy] from hostes

select upper(hostes_ad) as B�y�k_Yazar from hostes
select lower(hostes_ad) as K���k_Yazar from hostes
