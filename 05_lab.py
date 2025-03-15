

# Listeler
# Uygulama içerisinde anlık olarak değer saklayan bir yapıdır.
# arabalar = ['dodge', 'ford', 'nissan'] uygulama ilk çalıştığında buradaki liste yaratılır. Uygulama çalıştığı sürece bu liste üzerinde işlemler yapabiliriz. Örneğin yeni araba ekleme, araba silme gibi işlemler yapılabilinir. Lakin uygulama durdurulduğunda tüm bu değişiklikler kaybolur. Uygulama tekrar çalıştırılıdığında liste ilk haliyle karşımıza gelir. Yani hard disk gibi değerleri kalıcı olarak tutmaz. Bu bağlamda liselerin RAM'in HEAP alanında yaratıldığını anlayabiliriz.
# Listelerde index mantığı bulunmaktadır. Örnek listemiz olan arabalar bakacak olursak 0. index'te dodge bilgisinin tutulduğunu görebiliririz. Index değerleri sıfırdan başlar vektörel olarak artı yönde artarak devam eder.
# liste içerisinde farklı tiplerde değerler saklayabiliriz.

# boxers = ['mike tyson', 'muhamed ali', 'lenox lewis', 'evander holyfiled', 'george foreman']
# print(boxers)
# print(boxers[0])
# print(boxers[2])
# print(boxers[3])
#
# # listemizin sonuna yeni bir item ekleyin 'rocky mariciano'
# boxers.append('Rocy Marciano')
# print(boxers)
#
# # 4. indexse Floyd Mayweather
# boxers.insert(4, 'Floyd Mayweather')
# print(boxers)
#
# # item value 'evander holyfiled' olan item silin
# boxers.remove('evander holyfiled')
# print(boxers)
#
# # 4. index'teki item silin
# try:
#     # boxers.pop(10) # liste olmayan bir index değeri verirsek IndexError raise edilir.
#     print(boxers)
# except IndexError as err:
#     print(err)
#
#
# boxers.sort()  # liste sıralamaya yarar, a'dan z'ye çalıştığı gibi scler büyüklükleride sıralardı
# print(boxers)
#
# current_heavy_weight = ['antony jausa', 'denial dubba', 'tyson fury']
# boxers.extend(current_heavy_weight)
# print(boxers)
#
# for boxer in boxers:
#     print(boxer)
#
# for c in 'burak':
#     print(c)

# Kullanıcıdan alınan bir söz öbeğindeki sesli harfler sesli_harfler = [], sessiz harfleri sessiz_harfler = [] yazsın, ayrıca bir harf listeye bir kez eklensin
# sample input --> bu1rrak_u y?ıLmazz , boşluk, rakam ve büyük harf sıkıntılarıda çözülerek
# word = input('Type something: ').lower()
# sesli_harfler_listesi = ['a', 'e', 'ı', 'i', 'o', 'ö', 'u', 'ü']
# sesli_harfler = []
# sessiz_harfler = []
# for c in word:
#     if c.isalpha():
#         if c not in sesli_harfler and c not in sessiz_harfler:
#             if c in sesli_harfler_listesi:
#                 sesli_harfler.append(c)
#             else:
#                 sessiz_harfler.append(c)
# len('burak')
# print(f'Sesli Harfler: {sesli_harfler}\nSessiz Harfler: {sessiz_harfler}')

# Kullanıcıdan alınan bir söz öbeğindeki sesli harfleri sesli harfler listesine sesiz harfleri sessiz harfler listesine yazan bir uygulama yazınız. Bir harf listeye bir kez eklensin.
# sample input : bu1rak yılmaz , boşluk rakam ve büyük harf sıkıntıları da çözülerek.
#önce kıyaslama için sesli ve sessiz harfler grupları oluşturdum. Veriyi aldım.
# vowels=("a","e","o", "ö","u","ü","ı","i")
# consonants=("b","c","d","f","g","h","j","k","l","m","n","p","r","s","ş","t","x","v","y","w","z")
# x=input("Lütfen işlenecek kelimeyi giriniz; bu program ile kelimenizde geçen sesli ve sessiz harfleri 2 ayrı liste halinde size bildireceğiz : ").lower()


# users listem olacak. bu listeki kişilere kurumsal mail adresi oluşturacağız
# burak.yilmaz@outlook.com
# users = ['burak yılmaz', ' ertuğrul', 'hakan bear yılmaz', 'kerim abdul cabbar ökkeş', ' ', 'murat     ', 'hil_al özdemir büyükaşık', '_pınar ', 'egemen_ kağan duman']
# hint --> strip()
# hint --> from string import punctuation
# yukarıdaki listede ki kişilere mail adresi yaratalım ve mail_address listesine ekleyelim
# mail_address = []
#
# for user in users:
#     user_names = user.split(' ')
#     for item in user_names:
#         if item == '':
#             user_names.remove(item)
#     if user == ' ':
#         continue
#     elif len(user_names) >= 2:
#         mail_addres = f'{user_names[0]}.{user_names[-1]}@outlook.com'
#         mail_address.append(mail_addres)
#
# print(mail_address)


# lst_1 = [] ve lst_2 = [] listelerinin için rastgele 10 adet sayı ile doldurun,
# hint --> random modülünün randint fonksiyonundan faydalanın
# from random import randint
# lst_1 = []
# lst_2 = []
# lst_3 = []
#
# for i in range(10):
#     lst_1.insert(i, randint(0, 100))
#     lst_2.insert(i, randint(0, 100))
#
#     lst_3.insert(i, lst_1[i] + lst_2[i])
#
# print(lst_1)
# print(lst_2)
# print(lst_3)

# password is valid?
# en az 16 karakterli olacak
# en az bir büyük harf, bir küçük harf
# en az bir noktalama işareti içerecek
# en az bir rakam içerecek
# burakBurak1?burak
# from string import punctuation
# password = input('Type Strong Password: ')
# if len(password) < 16:
#     print('Invalid password..!')
# if not any(c.isupper() for c in password):
#     print('Invalid password')
# if not any(c.islower() for c in password):
#     print('Invalid password')
# if not any(c.isdigit() for c in password):
#     print('Invalid password')
# if not any(c in punctuation for c in password):
#     print('Invalid password')
# print('Valid password')
#
# # list comprehansion
# liste = [i for i in range(10)]
# print(liste)
#
# print([i ** 2 for i in range(10)])
#
# print([i for i in range(0 ,100) if i % 2 == 0])
#
# print([i + j for i in range(1, 11) for j in range(1, 11)])
#
# print([[i + j for j in range(5)] for i in range(5)])
#
# boxer = ['mike', 'ali']
# print([item for item in boxer if item.__contains__('m')])
#
# # any: koleksiyonda ki bütün elemanların her hangi biri true ise true döner
# lst = [1, 2, None, 3, 4]
# print(all(lst))
#
# first_name: str | None = 'burak'
#
# number: list[int | None | str | list] = [x > 0 for x in range(-5, -1)]
# number.append(None)
# print(number)
# result = any(number)
# print(result)
#
# # filter: koleksiyonlarda filtreleme işlemi yapar.
# # lambda isimsiz bir fonksiyon yaratır. lst listesinin her bir elemanı adım adım x üzerinden işleme alınır.
# lst = [11, 2, -10, 3, 4, -1]
# sonuc = list(filter(lambda x: x > 0, lst))
# print(sonuc)
#
# boxers = ['mike', 'ali', 'lenox']
# result = list(filter(lambda x: x.__contains__('a'), boxers))
# print(result)
#
#
# arabalar = ['honda', 'handa', 'dodge', 'toyota', 'ford']
# sonuc = sorted(arabalar, key=lambda x: x[0])
# print(sonuc)
#
# # map fonksiyonu bir isimsiz loop yaratır listenin her bir elemanı için str dönüştürme işlemi aşağıda yaptı.
# years = [i for i in range(1923, 2026)]
# print(years)
# str_years = list(map(str, years))
# print(str_years)


from random import randint

lst = []
for i in range(10):
    lst.append(randint(0, 100))

for index, value in enumerate(lst):
    print(f'Index: {index} - Value: {value}')




















