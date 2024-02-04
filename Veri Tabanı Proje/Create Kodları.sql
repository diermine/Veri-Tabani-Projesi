Create Database Havaalan�

create table ucus(
bilet_id int foreign key references bilet(bilet_id),
ucak_id int foreign key references ucak(ucak_id),
ucus_durum nvarchar(50),
ucus_yeri nvarchar(20),
ucus_tarihi datetime
)

Create Table m�steri(
m�steri_id int primary key ,
m�steri_ad nvarchar(20) ,
m�steri_soyad nvarchar(20),
m�steri_koltuk nchar(10),
m�steri_TC decimal(11) Unique
)

create table hostes(
hostes_id int primary key,
hostes_ad nvarchar(20),
hostes_soyad nvarchar(20),
hostes_maas money,
hostes_rutbe nvarchar(50),
hostes_TC decimal(11) Unique
)

create Table pilot(
pilot_id int primary key ,
pilot_ad nvarchar(20) ,
pilot_soyad nvarchar(20),
pilot_r�tbe nvarchar(50),
pilot_maas money,
pilot_TC decimal(11) Unique
)

create table ucak(
ucak_id int primary key ,
pilot_kaptan_id int foreign key references Pilot(pilot_id),
pilot_yard�mc�_id int foreign key references Pilot(pilot_id),
hostes_yer_1_id int foreign key references hostes(hostes_id),
hostes_yer_2_id int foreign key references hostes(hostes_id),
hostes_hava_1_id int foreign key references hostes(hostes_id),
hostes_hava_2_id int foreign key references hostes(hostes_id),
hostes_hava_3_id int foreign key references hostes(hostes_id),
ucak_model nvarchar(20)
)

create table bilet(
m�steri_id int foreign key references m�steri(m�steri_id),
bilet_id int primary key ,
bilet_r�tbe nvarchar(50) ,
bilet_fiyat money,
bilet_durum nvarchar(50)
)