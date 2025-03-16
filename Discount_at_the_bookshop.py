print("Merhaba, iskonto kampanyamız 100 adet ile sınırlıdır,\nKampanya süresince indirimsiz kitap fiyatımız 5 TL/adet. Herkes okusun !! ")
miktar = int(input("Size indirim oranınızı ve aldıklarınızın indirim sonrası bedelini bildirebilmem için \nlütfen aldığınız kitap adedini giriniz : "))
if miktar < 1 :
    print ("girdiğiniz miktarı lütfen kontrol edin. İşlem yapamıyorum")
    exit()
else:
    total=miktar*5
    if 1 <= miktar < 15 :
        upper_class= 16 - miktar
        indirimli_total = total * 0.95

        print(f"Tebrikler %5 indirim kazandınız ; borcunuz : {indirimli_total} TL; eğer {upper_class} tane daha kitap alırsanız size daha fazla indirim sunabileceğiz!")
    elif 16 <= miktar < 25 :
        upper_class= 26 - miktar
        indirimli_total = total * 0.90

        print(f"Tebrikler %10 indirim kazandınız ; borcunuz : {indirimli_total} TL; eğer {upper_class} tane daha kitap alırsanız size daha fazla indirim sunabileceğiz!")
    elif 26 <= miktar < 50 :
        upper_class= 51 - miktar
        indirimli_total = total * 0.85

        print(f"Tebrikler %15 indirim kazandınız ; borcunuz : {indirimli_total} TL; eğer {upper_class} tane daha kitap alırsanız size daha fazla indirim sunabileceğiz!")
    elif 51 <= miktar < 75 :
        upper_class= 76 - miktar
        indirimli_total = total * 0.80

        print(f"Tebrikler %20 indirim kazandınız ; borcunuz : {indirimli_total} TL; eğer {upper_class} tane daha kitap alırsanız size daha fazla indirim sunabileceğiz!")
    elif 76 <= miktar <= 100 :

        indirimli_total = total * 0.75

        print(f"Tebrikler %25 indirim kazandınız ; borcunuz : {indirimli_total} TL; iyi okumalar ! ")
    else :
        print ("1-100 arasında olmayan bir değer girdiniz, size yardımcı olamıyorum.")
