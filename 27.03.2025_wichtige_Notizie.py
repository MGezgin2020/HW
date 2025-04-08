

# Otobüs - Uçak - Sinema Bileti Uygulaması yazın.
# Login
# Özlük bilgileri alınacak
# Bilet seçimi
# Bilet alma


# Fatura ödeme uygulaması
# login
# fatura bilgiler
# ödeme işlemi
# fatura ödeme işlemini tek fonkisyonda yada ayrı ayrı elektrik, su vb tek bir fonksiyon ile bütün faturaları öde
# örnek elektrik --> kdv * amount * kw
# su --> kdv * amount * mill
# doğal gaz --> kdv * amount * m3


# çok coşmadan estate agent - car agent
# login
# ev kiralama , satın alama operasyonları


# File I/O
# Dosya açma ve kapama ve dosya üzerinde CRUD (Create-Read-Updae-Delete) operasyonlarını yaparken bize yardımcı olan bir modüldür.
# Bu tarz modüllerin kendi try except bloğunda kullanılmak üzere Error mekanizmaları vardır. Daha önceden kullanıdığımız modüllerde de bu husus geçerlidir.

# Dosya Açma
# try:
#     file = open(file='new_file.txt', mode='w', encoding='utf-8') # şayet dosya varsa bir yenisini yaratmaz var olanı kullanır
#     file.write('Full Name: Burak Yılmaz\nOccupation: Developer\n')
#     file.close()
# except FileExistsError as err:
#     print(err)
# except FileNotFoundError as err:
#     print(err)
#
# # Dosya yeni bilgiler ekledin
# file = open(file='new_file.txt', mode='a', encoding='utf-8')
# file.write('Full Name: İpek Yılmaz\nOccupation: Art Historian\n')
# file.close()
#
# # aşağıdaki kullanım yaratılan dosyayı otomatik close ediyor. yukarıda ki kullanım gibi bizim kod yazarak close etmemize gerek yok.
# with open(file='qwe.txt', mode='a', encoding='utf-8') as file:
#     file.write('somefdasfiasşasld')
#
# # dosyadan okuma yapalım
# file = open(file='new_file.txt', mode='r', encoding='utf-8')
# for line in file.readlines():
#     print(line)

# fonksiyonumuza gelecek olan argümanalar dinamik ise yani sayısını bilmiyorsak yada bir başka değiş ile her tetiklendiğinde farklı sayıda argüman alacaksa
# bunun için *args ve **kwargs kullanılır.
# *args --> gelen argümanları yada değerleri fonksiyona tuple olarak taşırlar ve bizde buna göre unboxing ederiz
# **kwargs --> gelen argümanları sözlük olarak fonksiyona taşır
# def suprise(**kwargs) -> None:
#     print(f'First Name: {kwargs.get("first_name")}\n'
#           f'Occupation: {kwargs.get("occupation")}\n'
#           f'User Name: {kwargs.get("user_name")}')
#
# suprise(first_name='Burak')
# suprise(first_name='Hakan', occupation='chemist')
# suprise(first_name='İpek', occupation='art historian', user_name='keko')

from socket import gethostname, gethostbyname
from datetime import datetime
from Crypto.Cipher import AES
from Crypto.Random import get_random_bytes

def log_criptograph(**kwargs) -> None:
    try:
        try:
            personal_id = int(input('Id: '))
            print(f'Personal ID: {personal_id}')
        except ValueError as err:
            aes_key = get_random_bytes(16)
            aes_obj = AES.new(key=aes_key, mode=AES.MODE_EAX)
            chipper_text = aes_obj.encrypt(b'valueerrorhappen')
            with open(file=kwargs.get('file_name'), mode='a', encoding='utf-8') as log_file:
                log_file.write(str(chipper_text))
                log_file.write(" || ")
                log_file.write(f'Machine Name: {kwargs.get("machine_name")}')
                log_file.write(" || ")
                log_file.write(f'Ip Address: {kwargs.get("ip_address")}')
                log_file.write(" || ")
                log_file.write(f'Exception Date: {kwargs.get("exception_date")}\n')
                print(f'Personal id have not any character..!\n{err}')
    except IOError as err:
        print(err)


log_criptograph(
    file_name='log.txt',
    machine_name=gethostname(),
    ip_address=gethostbyname(gethostname()),
    exception_date=datetime.now()
)

















