MorsKod= {
    'A':'.-',
    'B': '-...' ,
    'C' : '-.-.',
    'D':'-..' ,
    'E':'.',
    'F':'..-.',
    'G':'--.',
    'H':'....' ,
    'I':'..',
    'J':'.---',
    'K':'-.-',
    'L':'.-..',
    'M':'--',
    'N':'-.',
    'O':'---',
    'P':'.--.',
    'Q':'--.-' ,
    'R':'.-.',
    'S':'...',
    'T':'-',
    'U':'..-',
    'V':'...-',
    'W':'.--',
    'X':'-..-',
    'Y':'-.--',
    'Z':'--..',
    '':'/'
}
Cumle=(input("lütfen çevirmek istediğiniz cümleyi giriniz :"))
for i in range(0,len(Cumle)):
    indeks=Cumle[i]
    sonuc=MorsKod.get(indeks)
    print(sonuc,end=" ")