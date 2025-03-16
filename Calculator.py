print("""Süper hesap makinesine hoş geldiniz

       [1]Toplama
       [2]Çıkarma
       [3]Çarpma
       [4]Bölme
       [5]Üs alma
       [Q]Çıkış

       """)
islem = input("Yapmak istediğiniz süper hesaplama işlemini hemen seçiniz..hadi :")
if islem == "1":
    sayı1 = float(input("hadi ilk sayıyı girin, bütün gün bekleyemeyiz :"))
    sayı2 = float(input("ikinci sayı için acele edin.. evet size diyorum: "))
    toplama = sayı1 + sayı2
    bildiri1 = f"Toplama işleminizin sonucu umarım şöyledir : {toplama}"
    print(bildiri1)
elif islem == "2":
    sayı1 = float(input("hadi ilk sayıyı girin, ben de korkuyorum ama birlikte yapabiliriz :"))
    sayı2 = float(input("ikinci sayı şanslı sayım olsun.. nedir ikinci sayı?: "))
    cikarma = sayı1 - sayı2
    bildiri1 = f"Çıkarma işleminizin sonucu umarım şöyledir : {cikarma}"
    print(bildiri1)
elif islem == "3":
    sayı1 = float(input("ilk sayıyı girince ardından sevdiğiniz birini arayın:"))
    sayı2 = float(input(
        "ikinci sayıyı girince yapmayı ertelediğiniz bir işi yapın, sanki hayatınız ona bağlı imişcesine..nedir 2. sayı?: "))
    carpma = sayı1 * sayı2
    bildiri1 = f"Çarpma işleminizin sonucu umarım şöyledir : {carpma}"
    print(bildiri1)
elif islem == "4":
    sayı1 = float(input("ilk sayı bölünen olacak, nedir ?:"))
    sayı2 = float(input("ikinci sayı bizim bölenimiz olacak,nedir ?: "))
    if sayı2 == 0:
        print("Sıfıra bölme hatası! Bölen sıfır olamaz")
    elif bolme == sayı1 / sayı2:
        bildiri1 = f"Bölme işleminizin sonucu umarım şöyledir : {bolme}"
        print(bildiri1)
elif islem == "5":
    sayı1 = float(input("bu girdiğiniz sayının üssünü alacağız, nedir bu sayı?:"))
    sayı2 = float(input("ilk sayının kaç üssünü almak istiyorsunuz ?: "))
    us_alma = sayı1 ** sayı2
    bildiri1 = f"Üs alma işleminizin sonucu umarım şöyledir : {us_alma}"
    print(bildiri1)
elif islem == "Q" or islem == "q":
    print("gene gelin.. hesap yapmak zevkli sizinle")
else:
    print("yanlış bir şey var.. ama ne ? bende olmadığı kesin.. ")
