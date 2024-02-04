insert into müsteri(müsteri_id,müsteri_ad,müsteri_soyad,müsteri_koltuk,müsteri_TC)
Values (10,'Baki','BÜKÜK','5A',90621573014)

insert into pilot(pilot_id,pilot_ad,pilot_soyad,pilot_rütbe,pilot_maas,pilot_TC,pilot_dogum_tarihi,pilot_calýsma_yýlý)
values (3,'Musa','TAÞÇI','Kaptan Pilot',8000,22534984502,1982-02-14,14)

insert into pilot(pilot_id,pilot_ad,pilot_soyad,pilot_rütbe,pilot_maas,pilot_TC,pilot_dogum_tarihi,pilot_calýsma_yýlý)
values (9,'Musa','TAÞÇI','Stajer Pilot',3000,67891253645,1988-05-10,8)

UPDATE bilet SET bilet_durum='iptal' WHERE bilet_id=3

update bilet set bilet_rütbe='First Class' where bilet_id=5

update bilet set bilet_fiyat=640 where bilet_id=5

update pilot set pilot_calýsma_yýlý=14 where pilot_id=7

insert into pilot(pilot_id,pilot_ad,pilot_soyad,pilot_rütbe,pilot_maas,pilot_TC,pilot_dogum_tarihi,pilot_calýsma_yýlý)
values (10,'Tuncay','TOZ','Kordinatör',12000,14567889865,1974-04-08,26)

update ucus set ucus_güzergah='Antalya' where bilet_id=11

insert into müsteri(müsteri_id,müsteri_ad,müsteri_soyad,müsteri_koltuk,müsteri_TC)
Values (14,'Baran','ALYAR','7A',20026129875)

insert into bilet(müsteri_id,bilet_id,bilet_rütbe,bilet_fiyat,bilet_durum,bilet_alýs_yeri)
Values (14,14,'First Class',640,'Aktif','Ýnternet')


