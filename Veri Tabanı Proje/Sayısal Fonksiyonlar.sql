select abs(-7.78)

/*Bilet fiyatlarýný yukarý ve aþþaðý yuvarlama*/
select bilet_fiyat,CEILING(bilet_fiyat) as fiyat_yukarý,floor(bilet_fiyat) as fiyat_assagý from bilet

/*Bilet fiyat virgülden sonra 1 sayý alma*/
select round(bilet_fiyat,1) from bilet

/*Bilet fiyat karesinin virgülden sonra 2 sayý alma*/
select round(Square(bilet_fiyat),2) as karesi_virgülden_sonra_2 from bilet

/*Bilet fiyatýn kare kökü*/
select sqrt(bilet_fiyat) as kare_kökü from bilet

/*Bilet fiyat karekökten sonra 2 sayý alma*/
select round(sqrt(bilet_fiyat),2) from bilet

/*Bilet fiyatlarýný toplama*/
select sum(bilet_fiyat) from bilet

/*Bilet fiyatlarýný topladýktan ve virgülden sonra 2 sayý alma*/
select round(sum(Fiyat),2) from bilet

/*Bilet Fiyatlarýnýn ortalamasý*/
select avg(bilet_fiyat) fiyat_ort from bilet


/*Kaç tane bilet alan müsteri var*/
select COUNT(bilet_id) as müsteri_sayýsý from bilet

/*Bilet'te farklý rütbelerin fiyat ortalamasý*/
select bilet_rütbe,count(*) as müsteri_sayýsý ,avg(bilet_fiyat) as ortalama from bilet
group by bilet_rütbe

/*Aktif olan biletlerin sayýsý*/
select bilet_durum,count(*) as aktif_sayý from bilet
where bilet_durum='Aktif'
group by bilet_durum

/*Ýptal olan biletlerin sayýsý*/
select bilet_durum,count(*) as aktif_sayý from bilet
where bilet_durum='Ýptal'
group by bilet_durum

/*Bilet fiyatýn 2 üssünü alma*/
select POWER(bilet_fiyat,2) from bilet 


select MIN(bilet_fiyat) from bilet

select max(bilet_fiyat) from bilet


