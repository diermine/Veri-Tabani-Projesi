select LTRIM(hostes_soyad) as [Baþýndaki Boþluklarý Kaldýrýr] from hostes 
select RTRIM(hostes_soyad)as [Sonundaki Boþluklarý Kaldýrýr] from hostes

select LTRIM(hostes_ad) as [Baþýndaki Boþluklarý Kaldýrýr]  from hostes
select RTRIM(hostes_ad) as [Sonundaki Boþluklarý Kaldýrýr] from hostes

/*Hostes Adýnda Kaç Karakter Vardýr*/
select len(hostes_ad) as karakter_sayýsý from hostes
select len(hostes_soyad) as karakter_sayýsý from hostes

/*Hostes ad soyad toplamý 12 karakteri geçiyor ise göster*/
select len(hostes_ad+hostes_soyad) as Toplam_Karakter_Sayýsý from hostes
where LEN(hostes_ad+hostes_soyad)>=12

/*Hostes ad soyad rütbe satýrlarýný birleþtirir*/
select CONCAT(hostes_ad, hostes_soyad,' ',hostes_rutbe)  from hostes

select CONCAT_ws(hostes_ad, hostes_soyad,hostes_rutbe)  from hostes

/*Geçici olarak aktif biletleri iptal et*/

select bilet_durum, replace(bilet_durum,'Aktif','Ýptal') as [Geçici olarak iptal edilen biletler] from bilet

/*Hostesdeki a herflerini arar */
select hostes_ad, CHARINDEX('a',hostes_ad) from hostes

/*Hosteslerin ismini ters çevirir*/
select REVERSE(hostes_ad) from hostes

/*Tekrarlý olarak veriyi yazdýrýr*/
select REPLICATE(hostes_ad,5) from hostes

/*Hostes A.Soyadý Þeklinde yazdýrýr*/
select SUBSTRING (hostes_ad,1,1)+'.'+hostes_soyad as [A.Soyadý] from hostes

/*Hostesin Adýnýn ilk Soyadýnýn 3 harfini yazdýr*/
select SUBSTRING(hostes_ad,1,1)+'.'+SUBSTRING (ltrim(hostes_soyad),1,3) as [A.Soy] from hostes

select upper(hostes_ad) as Büyük_Yazar from hostes
select lower(hostes_ad) as Küçük_Yazar from hostes
