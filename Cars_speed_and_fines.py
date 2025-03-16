arac=int(input("Lütfen araç türünüzü seçiniz ve ilgili rakamı giriniz : 1)Otomobil 2)Kamyon 3) Motosiklet : "))
hiz=float(input ("Lütfen güzergahtaki maksimum sürüş hızınızı (km/h) giriniz : "))
if hiz<=0 or (arac!=1 and arac!=2 and arac!=3) :
    print ("girdiğiniz hızı ve araç türüne denk gelen rakamı lütfen kontrol edin ; işlem yapamıyorum ")
    exit()
elif arac==1 :
    if hiz>=60 :
        print ("Maalesef aşırı hız nedeniyle ceza aldınız.Bu alanda binek araçlar için 60km. hız sınırlaması vardır")
    elif 0<hiz<60 :
        print ("Güvenli sürüşünüz örnek oluyor. Teşekkür ederiz.")
elif arac==2 :
    if hiz>=30 :
        print ("Maalesef aşırı hız nedeniyle ceza aldınız. Bu alanda kamyon için 30km. hız sınırlaması vardır")
    elif 0<hiz<30 :
        print ("Güvenli sürüşünüz örnek oluyor. Teşekkür ederiz.")
elif arac==3 :
    if hiz>=70 :
        print ("Maalesef aşırı hız nedeniyle ceza aldınız. Bu alanda motorsikletler için 70km. hız sınırlaması vardır")
    elif 0<hiz<70 :
        print ("Güvenli sürüşünüz örnek oluyor. Teşekkür ederiz.")
