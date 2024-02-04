Create Database Havaalaný

create table ucus(
bilet_id int foreign key references bilet(bilet_id),
ucak_id int foreign key references ucak(ucak_id),
ucus_durum nvarchar(50),
ucus_yeri nvarchar(20),
ucus_tarihi datetime
)

Create Table müsteri(
müsteri_id int primary key ,
müsteri_ad nvarchar(20) ,
müsteri_soyad nvarchar(20),
müsteri_koltuk nchar(10),
müsteri_TC decimal(11) Unique
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
pilot_rütbe nvarchar(50),
pilot_maas money,
pilot_TC decimal(11) Unique
)

create table ucak(
ucak_id int primary key ,
pilot_kaptan_id int foreign key references Pilot(pilot_id),
pilot_yardýmcý_id int foreign key references Pilot(pilot_id),
hostes_yer_1_id int foreign key references hostes(hostes_id),
hostes_yer_2_id int foreign key references hostes(hostes_id),
hostes_hava_1_id int foreign key references hostes(hostes_id),
hostes_hava_2_id int foreign key references hostes(hostes_id),
hostes_hava_3_id int foreign key references hostes(hostes_id),
ucak_model nvarchar(20)
)

create table bilet(
müsteri_id int foreign key references müsteri(müsteri_id),
bilet_id int primary key ,
bilet_rütbe nvarchar(50) ,
bilet_fiyat money,
bilet_durum nvarchar(50)
)