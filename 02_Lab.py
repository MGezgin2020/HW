from urllib.request import proxy_bypass_registry
from xml.etree.ElementPath import prepare_self

# Karar Mekanizmaları (Decisions)

# number = int(input('Sayı: '))
#
# sonuc = number % 2  # burada number değişkeni üzerinde tutulan tam sayının 2'ye bölümünden kalanı sonuc değişkenine atadık.
#
# if sonuc == 0:  # "==" programlama dilelrinde çift eşitilik sembolü karşılarştırma operatörüdür.
#     print(f'{number} çifttir..!')
# else:
#     print(f'{number} tektir..!')

# Kullanıcıdan 2 adet sayı alalım ve büyük olanı ekrana yazdıralım
# x = int(input('Sayı: '))
# y = int(input('Sayı: '))
#
# if x > y:
#     print(f'{x} büyüktür..!')
# elif x == y:
#     print(f'{x}, {y} eşittir..!')
# else:
#     print(f'{y} büyüktür..!')

# Kullanıcıdan bir tane sayı alım. bu sayı pozitif mi negatif mi nötr mü bunu ekrana yazdıralım
# x = int(input('Sayı: '))
#
# if x > 0:
#     print(f'{x} pozitif..!')
# elif x < 0:
#     print(f'{x} negatif..!')
# else:  # else ifadesinin yanına bir şart belirtilmez.
#     print(f'{x} nötr..!')

# Kullanıcıdan mevsim bilgisi alalım. gelen mevsime göre ayları ekrana yazdıralım
# mevsim = input('Mevsim: ').lower()
#
# if mevsim == 'kış':
#     print('Aralık-Ocak-Şubat')
# elif mevsim == 'ilkbahar':
#     print('Mart-Nisan-Mayıs')
# elif mevsim == 'yaz':
#     print('Haziran-Temmuz-Ağustos')
# elif mevsim == 'sonbahar':
#     print('Eylül-Ekim-Kasım')
# else:
#     print('Böyle bir mevsim yok. Uzaylı mısın?')

# mevsim = input('Mevsim: ').lower()
#
# match mevsim:
#     case 'kış':
#         print('Aralık-Ocak-Şubat')
#     case 'ilkbahar':
#         print('Mart-Nisan-Mayıs')
#     case 'yaz':
#         print('Haziran-Temmuz-Ağustos')
#     case 'sonbahar':
#         print('Eylül-Ekim-Kasım')
#     case _:
#         print('Böyle bir mevsim yok. Uzaylı mısın?')

# Kullanıcıdan 3 adet sayı alalım, örneğin a > b ve a > c ise a en büyük sayıdır şekli feedback veren uygulamayı yazalım
# a = int(input('Sayı: '))
# b = int(input('Sayı: '))
# c = int(input('Sayı: '))
#
# if a > b and a > c:
#     print(f'En büyük sayı {a}')
# elif b > a and b > c:
#     print(f'En büyük sayı {b}')
# elif c > a and c > b:
#     print(f'En büyük sayı {c}')
# else:
#     print('Sayılardan bazıları bir birine eşit.')

# kullanıcıdan bir adet ürün
# eğer ürün elma, muz, ıspanak ise sebze reyonu gidiniz
# eğet notebook, tablet, smartphone ise teknoloji reyonuna gidinir
# eğer şampuan, sabun, parfüm ise kozmatik reyonuna gidiniz
# urun = input('Urun: ')
#
# if urun == 'elma' or urun == 'muz' or urun == 'ıspanak':
#     print('Sebze reyonuna gidiniz..!')
# elif urun == 'tablet' or urun == 'notebook' or urun == 'kindle':
#     print('Teknoloji reyonuna gidiniz..!')
# elif urun == 'şampuan' or urun == 'sabun' or urun == 'parfüm':
#     print('Kozmetik reyonuna gidiniz..!')
# else:
#     print('Aradığınız ürün bulunmamaktadır..!')

# kullanıcıdan username ve password, eğer username beast şifre 123 ise kullanıcı giriş yapabilsin,
# kullanıcının boyunu ve kilousunu alalım. bmi hesaplayalım
# bmi 0 ile 18.5 arasında ise lean
# username = input('User Name: ')
# password = input('Password: ')
#
# if username == 'beast' and password == '123':
#     print(f'{username} hoşglediniz.')
#
#     boy = float(input('Boy: '))
#     kilo = float(input('Kilo: '))
#
#     bmi = kilo / boy ** 2
#
#     if 0 < bmi <= 18.5:  # bmi > 0 and bmi <= 18.5
#         print(f'{username}, {bmi} - durumun zayıf.')
#     elif 18.6 <= bmi <= 24.9:
#         print(f'{username}, {bmi} - durumun normal.')
#     elif 25 <= bmi <= 29.9:
#         print(f'{username}, {bmi} - durumun fazla kilolu.')
#     elif 30 <= bmi <= 34.9:
#         print(f'{username}, {bmi} - durumun obez.')
#     elif 35 <= bmi <= 39.9:
#         print(f'{username}, {bmi} - durumun aşırı obez.')
#     elif 40 <= bmi:
#         print(f'{username}, {bmi} - durumun morbid obez.')
#     else:
#         print('Hatalı boy yada kilo bilgisi girdiniz..!')
# else:
#     print('Giriş bilgileriniz hatalı.')


# kullanıcıdan satın aldığı kitap miktarını input olarak alalım.
# bir kitap 5 TL
# eğer satın aldığı kitap sayısı 1 ile 15 arasında ise yüzde 5 iskonto uygulayalım ve ödeyeceği nihai tutarı ekrana bastıralım
# eğer satın aldığı kitap sayısı 16 ile 25 arasında ise yüzde 10 iskonto uygulayalım ve ödeyeceği nihai tutarı ekrana bastıralım
# eğer satın aldığı kitap sayısı 26 ile 50 arasında ise yüzde 15 iskonto uygulayalım ve ödeyeceği nihai tutarı ekrana bastıralım
# eğer satın aldığı kitap sayısı 51 ile 75 arasında ise yüzde 20 iskonto uygulayalım ve ödeyeceği nihai tutarı ekrana bastıralım
# eğer satın aldığı kitap sayısı 76 ile 100 arasında ise yüzde 25 iskonto uygulayalım ve ödeyeceği nihai tutarı ekrana bastıralım
# 100'den fazla kitap satın alınmayacak
# kullanıcı eksi kitap miktarı girebilir. guard alın bu case
# kitap_sayisi = int(input('Kitap Sayısı: '))
#
# if 1 <= kitap_sayisi <= 100:
#     if 1 <= kitap_sayisi <= 15:
#         print(f'Ödenecek Tutar: {kitap_sayisi * 5 * 0.95}')
#     elif 16 <= kitap_sayisi <= 25:
#         print(f'Ödenecek Tutar: {kitap_sayisi * 5 * 0.90}')
#     elif 26 <= kitap_sayisi <= 50:
#         print(f'Ödenecek Tutar: {kitap_sayisi * 5 * 0.85}')
#     elif 51 <= kitap_sayisi <= 75:
#         print(f'Ödenecek Tutar: {kitap_sayisi * 5 * 0.80}')
#     elif 76 <= kitap_sayisi <= 100:
#         print(f'Ödenecek Tutar: {kitap_sayisi * 5 * 0.75}')
# else:
#     print('Lütfen 1 ile 100 arasında bir değer giriniz..!')

# kullanıcıdan araç türü allım ve hız bilgisi alalım
# araç türü otomobil hız 60 ve üzeri ise cezalısın, değilse ceza yok
# araç türü kamyon hız 30 ve üzeri ise cezalısın, değilse ceza yok
# araç türü motorsiklet hız 70 ve üzeri ise cezalısın, değilse ceza yok
# kullanıcı 0 ve negatif hız girebilir. guard alalım bunlara
# hatalı araç türü girebilir. guard alalım
# vehicle = input('Araç Türü: ')
# speed = float(input('Hız: '))
#
# if speed > 0:
#     if vehicle == 'otomobil':
#         if speed >= 60:
#             print('Cezalısın..!')
#         else:
#             print('Ceza yok..!')
#     elif vehicle == 'kamyon':
#         if speed >= 30:
#             print('Cezalısın..!')
#         else:
#             print('Ceza yok..!')
#     elif vehicle == 'motorsiklet':
#         if speed >= 70:
#             print('Cezalısın..!')
#         else:
#             print('Ceza yok..!')
#     else:
#         print(f'Lütfen doğru araç türünü giriniz..!')
# else:
#     print('Hız sıfırdan küçük olamaz..!')


# diskriminant hesaplayalım
# kullanıcıdan kat sayıları alalım. a, b, c
# delta = b ** 2 - 4 * a * c
# karekök kullanmak için math kütüphanesinden faydalanın
# from math import sqrt
# # yukarıda ki gibi kullanacağımız fonksiyonu import edersek sadece fonksiyonun ismini kullanıyoruz
# # import math --> burada ki gibi import edersek fonksiyonu kullanmak ilk önce kütüphane ismini yazıyoruz sonra fonksiyonun çağırıyoruz "math.sqrt"
# a = int(input('Kat sayı giriniz ("a"): '))
# b = int(input('Kat sayı giriniz ("b"): '))
# c = int(input('Kat sayı giriniz ("c"): '))
#
# delta = b ** 2 - 4 * a * c
#
# if delta > 0:
#     x1 = -b - sqrt(delta / 2 * a)
#     x2 = -b + sqrt(delta / 2 * a)
#     print(f'Birinci reel kök: {x1}\n'
#           f'İkinci reel kök: {x2}')
# elif delta == 0:
#     x1 = -b - sqrt(delta / 2 * a)
#     print(f'Birinci reel kök: {x1}\n')
# else:
#     print('Reel kök yok..!')

# try - except - finally
# try:
#     bolen = int(input('Bolen: '))
#     bolunen = int(input('Bölünen: '))
#
#     sonuc = bolunen / bolen
#
#     print(f'Sonuc: {sonuc}')
# except ZeroDivisionError as err:
#     print(err)
#     print('Tam sayılar sıfıra bölünemez..!')
#     # smpt --> MAİL
#     # LOGING
# finally:
#     print('try çalışsada except çalışsada ben çalışırım..!')

# ValueError
# try:
#     age = int(input('Age: '))
#     print(f'Age: {age}')
# except ValueError as err:
#     print('Yaş bilgisi harf içeremez..!')
# except ZeroDivisionError as err:
#     print(err)
# except:
#     print('python içerisinde built-in olarak bulunan bütün exceptionlara bakar.')
# else:
#     print('except bloğu tetiklenmezse else bloğu çalışır.')



























