insert into m�steri(m�steri_id,m�steri_ad,m�steri_soyad,m�steri_koltuk,m�steri_TC)
Values (10,'Baki','B�K�K','5A',90621573014)

insert into pilot(pilot_id,pilot_ad,pilot_soyad,pilot_r�tbe,pilot_maas,pilot_TC,pilot_dogum_tarihi,pilot_cal�sma_y�l�)
values (3,'Musa','TA��I','Kaptan Pilot',8000,22534984502,1982-02-14,14)

insert into pilot(pilot_id,pilot_ad,pilot_soyad,pilot_r�tbe,pilot_maas,pilot_TC,pilot_dogum_tarihi,pilot_cal�sma_y�l�)
values (9,'Musa','TA��I','Stajer Pilot',3000,67891253645,1988-05-10,8)

UPDATE bilet SET bilet_durum='iptal' WHERE bilet_id=3

update bilet set bilet_r�tbe='First Class' where bilet_id=5

update bilet set bilet_fiyat=640 where bilet_id=5

update pilot set pilot_cal�sma_y�l�=14 where pilot_id=7

insert into pilot(pilot_id,pilot_ad,pilot_soyad,pilot_r�tbe,pilot_maas,pilot_TC,pilot_dogum_tarihi,pilot_cal�sma_y�l�)
values (10,'Tuncay','TOZ','Kordinat�r',12000,14567889865,1974-04-08,26)

update ucus set ucus_g�zergah='Antalya' where bilet_id=11

insert into m�steri(m�steri_id,m�steri_ad,m�steri_soyad,m�steri_koltuk,m�steri_TC)
Values (14,'Baran','ALYAR','7A',20026129875)

insert into bilet(m�steri_id,bilet_id,bilet_r�tbe,bilet_fiyat,bilet_durum,bilet_al�s_yeri)
Values (14,14,'First Class',640,'Aktif','�nternet')


