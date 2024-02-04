/*�sminde A harfi ge�en hostesler*/
select * from hostes
where hostes_ad like ('%A%')

/*�sminde A harfi bulunmayan hostesler*/
select * from hostes
where hostes_ad not like ('%A%')

/*R�tbesi Hava hostesi olanlar*/
Select * from hostes
where hostes_rutbe='Hava Hostesi'

/*Ucus G�zergah� �stanbul Olmayanlar*/
select * from ucus
where ucus_g�zergah<>'�stanbul'

/*�al��ma y�l� 5'i ge�en pilotlar*/
select * from pilot
where pilot_cal�sma_y�l�>5

/*Biletlerini bayiden alanlar�n fiyat� %15 zamland�*/
select m�steri_id,bilet_al�s_yeri,bilet_fiyat,bilet_fiyat*0.15 as  zamlanan_bilet from bilet
where bilet_al�s_yeri='Bayi'

/*�al��ma Y�l� 10 y�l� a�an pilotlar�n maa�� %10 zamland�*/
select pilot_ad,pilot_soyad,pilot_r�tbe,pilot_maas,pilot_cal�sma_y�l�,pilot_maas*0.10 as zamlanan_maas from pilot
where pilot_cal�sma_y�l�>10

/*Pilotlar�n ya��n� hesaplay�n*/
select pilot_ad,pilot_soyad,datediff(year,pilot_dogum_tarihi,getdate()) as [Pilotlar�n Ya�lar�] from pilot

/*Pilotlar�n 6 ayl�k maa�lar�n� hesaplay�n*/
select pilot_ad,pilot_soyad, pilot_maas, pilot_maas*6 as [Alt�_ayl�k_maas] from pilot

/*Pilotlar� �al��ma y�l�na g�re s�ralay�n*/
select * from pilot
order by pilot_cal�sma_y�l� desc

/*Mesai saati 15'den yuark�da olan hosteslerin maa�lar�n� %10 art�r*/
select hostes_id,hostes_ad,hostes_soyad,hostes_rutbe,hostes_mesai_saati,hostes_maas,hostes_maas+hostes_maas*0.10 as [Art�rl�m�� Maa�] from hostes
where hostes_mesai_saati>=15

