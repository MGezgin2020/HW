# ATM simülasyonu
# •	Kullanıcının başlangıç bakiyesi olsun (örneğin 1000 TL).
# •	Kullanıcıdan işlem seçmesini iste (Para Çek, Para Yatır, Bakiye Sorgula, Çıkış).
# •	Eğer Para Çek derse, çekmek istediği tutarı sor ve bakiyeden düş.
# •	Eğer Para Yatır derse, yatırmak istediği tutarı sor ve bakiyeye ekle.
# •	Eğer Bakiye Sorgula derse, güncel bakiyeyi göster.
# •	Eğer Çıkış derse, programdan çık.
# •	Yetersiz bakiye varsa uyarı ver!
# İpucu: match-case ile menü oluşturabilirsin
balance = 1000
password = 4790
entry_nr = 3
# müşterinin giriş için 3 hakkı var password kontrolü yapılır.
while entry_nr>0 :
    sifre=int(input ("Rakamlardan oluşan 4 haneli şifrenizi giriniz : "))
    if sifre==password :
        break
    else :
        entry_nr-=1
        if entry_nr>0:
            print(f"Yanlış şifre, {entry_nr} hakkınız kaldı, tekrar deneyin lütfen . ")
        else :
            print("Hakkınız kalmadı, kartınıza el konuldu. Sizi de birazdan hapse atıcaz")
            exit()

# giriş yapan müşteriye işlem seçenekleri sunulur
if sifre == password :
    while True:
        task=input("işleminizin rakamını yazınız\n 1) Para Çekme\n 2) Para Yatırma\n 3) Güncel Bakiye\n 4) İşlem Yapmadan Çıkış : ")
        tasks=["1","2","3","4"]
        if task in tasks :
            match task :
                case "1" :
                    withdrawal = int(input("çekmek istediğiniz para miktarını giriniz: "))
                    if withdrawal > balance:
                        print("Yeterli bakiyeniz mevcut değil. Ödeme yapamıyorum. Daha küçük bir miktar girebilir misiniz ? ")

                    else :
                        balance = balance - withdrawal
                        print(f"yeni bakiyeniz : {balance}")
                case "2" :
                    deposit= int(input("yatırılacak para miktarını giriniz : "))
                    balance = balance + deposit
                    print (f"yeni bakiyeniz : {balance}")
                case "3" :
                    print (f"Güncel Bakiyeniz : {balance} ")
                case "4" :
                    print ("SuperBank iyi günler diler.")
                    exit()
                case _ :
                    print ("Geçersiz bir işlem  üzgünüm  Süper Banka'yız ama bu kadar da süper değilmişiz demek ki..")
# programda bakiye değişikliğini kaydedemiyorum. nasıl yapılır bakayım dedim import os gibi bişiiler dedi. vazgeçtim.





