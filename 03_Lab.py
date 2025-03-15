

# Loops (Döngüler)
# Tekrarlı işlemler yaptıracağımız zaman döngüleri kullanıyoruz. Örneğin kullanıcıdan 10 tane input aldırmak istersek, yada 0-9 yani rakamları ekrana yazdırmak istersek bir string ifadenin içerisinde karakter karakter onları kullanmak sitersek loop kullanıyoruz.

# While & For loop türleriz.

# While
# counter = 0
# while counter < 10:
#     print(counter)
#     counter = counter + 1


# counter = 9
# while counter >= 0:
#     print(counter)
#     counter = counter - 1

# 0-100 arasındaki her bir tam sayıyı ekrana yazdırın
# sayac = 0
# while sayac <= 100:
#     print(sayac, end=",")
#     sayac = sayac + 1


# 0 - 100 arasındaki kaç tane çift kaç tane tek sayı var bulalım ekrana yazdıralım
# sayac = 0
# ciftler = 0
# tekler = 0
# while sayac <= 100:
#     if sayac % 2 == 0:
#         ciftler = ciftler + 1
#     else:
#         tekler = tekler + 1
#
#     sayac = sayac + 1
#
# print(f'Ciftler: {ciftler}\nTekler: {tekler}')


# 0 - 100 arasındaki çift ve tek sayıların toplamı
# sayac = 0
# ciftlerin_toplami = 0
# teklerin_toplami = 0
# while sayac <= 100:
#     if sayac % 2 == 0:
#         ciftlerin_toplami = ciftlerin_toplami + sayac
#     else:
#         teklerin_toplami = teklerin_toplami + sayac
#
#     sayac = sayac + 1  # sayac += 1,
#
# print(f'Cift Sayıların Toplamı: {ciftlerin_toplami}\n'
#       f'Tek Sayıların Toplamı: {teklerin_toplami}')

# kullanıcıdan 2 tane tam sayı alınacak
# kullanıcıdan işlem türü alınacak, 'e', '+', '-' etc
# kuallncıı 'e' girene kadar işlem yapabilecek yani sonsuz döngü kuracaksınız
# exception handling unutmayalım

# while True:
#     try:
#         process = input('Process: ')
#
#         match process:
#             case 'e':
#                 print('Application has been closing..!')
#                 break # break deyimi döngüyü kırar durdurur. break deyimi altına yazılan kodlar çalışmaz
#             case '+':
#                 sayi_1 = float(input('Number: '))
#                 sayi_2 = float(input('Number: '))
#                 print(f'Result: {sayi_1 + sayi_2}')
#             case '-':
#                 sayi_1 = float(input('Number: '))
#                 sayi_2 = float(input('Number: '))
#                 print(f'Result: {sayi_1 - sayi_2}')
#             case '*':
#                 sayi_1 = float(input('Number: '))
#                 sayi_2 = float(input('Number: '))
#                 print(f'Result: {sayi_1 * sayi_2}')
#             case '/':
#                 sayi_1 = float(input('Number: '))
#                 sayi_2 = float(input('Number: '))
#                 print(f'Result: {sayi_1 / sayi_2}')
#             case _:
#                 print('Please type a valid process...!')
#     except ZeroDivisionError as err:
#         print(err)
#     except ValueError as err:
#         print(err)

# Kullanıcıdan alınan sayı asal mı değil mi?
# sayi = int(input('Sayı giriniz: '))
#
# if sayi < 2:
#     print('2 küçük sayıların asallık kontorlü yapılmaz..!')
# else:
#     is_prime = True
#
#     sayac = 2
#     while sayac < sayi:
#         if sayi % sayac == 0:
#             is_prime = False
#             break
#         sayac += 1
#
#     if is_prime: # is_prime == True
#         print(f'{sayi} asaldır..!')
#     else:
#         print(f'{sayi} asal değildir..!')

# Kullanıcıdan alınan sayının faktöriyelini hesaplayalım?
# sayi = int(input('Sayı: '))
#
# if sayi < 0:
#     print(f'Sıfırdan küçük sayıların faktörüyeli hesaplanamaz...!')
# elif sayi == 1 or sayi == 0:
#     print(f'Faktöriyel: 1')
# else:
#     sonuc = 1
#
#     while sayi > 0:
#         sonuc *= sayi # sonuc = sonuc * sayi
#         sayi -= 1 # sayi = sayi - 1
#
#     print(f'Faktöriyel: {sonuc}')















