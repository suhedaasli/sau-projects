select*from Müþteri

select Musteri_Adi+' '+Musteri_Soyadi as Adi_Soyadi from Müþteri

select * from Müþteri where Mekan_ID = 1

select * from Müþteri order by Hizmet_Bedeli desc

select Musteri_Adi from Müþteri

select * from Müþteri where Musteri_Adi >='m'

select Islem,count(Islem) as Uyelilk_Sayýsý from Müþteri group by Islem 

select * from Personel

select Personel_Adi+' '+Personel_Soyadi as Adi_Soyadi from Personel

select Personel_Cinsiyet,count(Personel_Cinsiyet) as Personel_Sayýsý from Personel group by Personel_Cinsiyet

select * from Personel a inner join Mekan b on a.Mekan_ID=b.Mekan_ID

select * from Personel a inner join Program b on a.Mekan_ID=b.Mekan_ID order by Personel_Adi asc

select * from Personel a inner join Program b on a.Mekan_ID=b.Mekan_ID where Personel_Adi='Banu'

select * from Mekan
select * from Program

select * from Mekan a inner join Program b on a.Mekan_ID=b.Mekan_ID

select * from Alýr
select* from Verir