

# For Loop
# For loop ile yoğun olarak kullanılan "in" operatörü ve range() fonksiyonunu tanıyalım.
# "in" & "not in" operatörleri

# in
# print('b' in 'burak')  # True
# print('U' in 'burak')  # False
#
# # not in
# print('b' not in 'burak')  # False
# print('U' not in 'burak')  # True

# python büyük küçük harf duyarlıdır. yani 'u' ile 'U' ayrı iki karekterdir.

# range() fonksiyonu
# range(100) --> çıktı olarak 0'dan başlayıp 1 1 artan 99'za kadar bir sayı aralığı oluşturur. default olarak 0'dan başlıyor 1 1 artıryor
# range(10, 20) --> çıktı olarak 10'dan başlayarak 1 1 artan ve 19'za biten bir aralık yaratıcak
# range(10, 50, 2) --> çıktı 10'dan 2 2 art 49'za aralığı bitir

# rakamları ekrana yazdıralım
# for sayac in range(10):
#     print(sayac, end=",")


# 10 ile 50 arasındaki çift sayıları ekrana yazdırın
# for sayac in range(10, 51, 2):
#     print(sayac, end=",")

# 0 ile 100 arasında kaç tane çift kaç tane tek sayı var bulalım ekrana yazdıralım
# ciftler = 0
# tekler = 0
# for sayac in range(101):
#     if sayac % 2 == 0:
#         ciftler += 1
#     else:
#         tekler += 1
#
# print(f'Çiftler: {ciftler}\nTekler: {tekler}')

# Range fonksiyonun başlangıç, bitiş ve adım miktarlarını kullanıcıdan alalım
# bu belirtilen aralıkta ki tam sayıların karesini alarak ekrana yazdıralım
# baslangic = int(input('Baslangıç: '))
# bitis = int(input('bitis: '))
# adim = int(input('adim: '))
#
# for i in range(baslangic, bitis+1, adim):
#     print(i ** 2, end=',')


# Nested For
# for i in range(1, 11):
#     for j in range(1, 11):
#         print(f'{i} x {j} = {i * j}')
#     print('==============')


for i in range(1, 5):
    for j in range(1, 20):
        if j % 2 == 0:
            print(' ', end='')
            continue
        print('X', end='')
    print(' ')


















