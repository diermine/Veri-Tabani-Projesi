/*Ýsminde A harfi geçen hostesler*/
select * from hostes
where hostes_ad like ('%A%')

/*Ýsminde A harfi bulunmayan hostesler*/
select * from hostes
where hostes_ad not like ('%A%')

/*Rütbesi Hava hostesi olanlar*/
Select * from hostes
where hostes_rutbe='Hava Hostesi'

/*Ucus Güzergahý Ýstanbul Olmayanlar*/
select * from ucus
where ucus_güzergah<>'Ýstanbul'

/*Çalýþma yýlý 5'i geçen pilotlar*/
select * from pilot
where pilot_calýsma_yýlý>5

/*Biletlerini bayiden alanlarýn fiyatý %15 zamlandý*/
select müsteri_id,bilet_alýs_yeri,bilet_fiyat,bilet_fiyat*0.15 as  zamlanan_bilet from bilet
where bilet_alýs_yeri='Bayi'

/*Çalýþma Yýlý 10 yýlý aþan pilotlarýn maaþý %10 zamlandý*/
select pilot_ad,pilot_soyad,pilot_rütbe,pilot_maas,pilot_calýsma_yýlý,pilot_maas*0.10 as zamlanan_maas from pilot
where pilot_calýsma_yýlý>10

/*Pilotlarýn yaþýný hesaplayýn*/
select pilot_ad,pilot_soyad,datediff(year,pilot_dogum_tarihi,getdate()) as [Pilotlarýn Yaþlarý] from pilot

/*Pilotlarýn 6 aylýk maaþlarýný hesaplayýn*/
select pilot_ad,pilot_soyad, pilot_maas, pilot_maas*6 as [Altý_aylýk_maas] from pilot

/*Pilotlarý Çalýþma yýlýna göre sýralayýn*/
select * from pilot
order by pilot_calýsma_yýlý desc

/*Mesai saati 15'den yuarkýda olan hosteslerin maaþlarýný %10 artýr*/
select hostes_id,hostes_ad,hostes_soyad,hostes_rutbe,hostes_mesai_saati,hostes_maas,hostes_maas+hostes_maas*0.10 as [Artýrlýmýþ Maaþ] from hostes
where hostes_mesai_saati>=15

