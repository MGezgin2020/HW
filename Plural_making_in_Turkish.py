def make_plural(noun:str)->str:
    # Kelimeyi tamamen küçük harfe çevirdim uğraşmamak için diye yazarsam ayıp olur mu ?
    noun = noun.lower()

    # Son sesli harfi belirle ?? buradan emin değilim. geriden başlayıp öne doğru nasıl gelicem ?
    vowels = "aeıioöuü"
    last_vowel= None
    for i in range(len(noun) -1,-1,-1) : #bunu DeepSeek söyledi.. sondan başa doğru string içinde iterasyon için önerdi
            if noun[i] in vowels :
                last_vowel=noun[i]
                break

    # Çoğul eki belirle
    if last_vowel in "aıou":
        suffix = "lar"
    elif last_vowel in "eiöü":
        suffix = "ler"
    else:
        suffix = "ler"  # Diğer durumlar için varsayılan olarak "ler"  çünkü neden olmasın..

    # Çoğul kelimeyi oluşturmak
    return noun + suffix

def find_wovels(noun:str)->str:
    #kelime içinde hangi sesli harfler olduğunu bul :
    vowels = "aeıioöuüAEIİOÖUÜ"  # Küçük ve büyük sesli harfler
    vowels_in_noun = set()  # Bulunan sesli harfleri saklamak için bir küme (set) kullanıyorum. tekrarlama olmasın diye
    for letter in noun:
        if letter in vowels:
           vowels_in_noun.add(letter.lower())  # Küçük harfe çevirip kümeye ekledim

    return vowels_in_noun
def main():
    # Kullanıcıdan kelime alıyorum
    user_noun = input("Bir isim soylu kelime girin: ")
    # Sesli harfleri bul ve ekrana yazdır
    sesliler = find_wovels(user_noun)
    if sesliler:
        print(f"'{user_noun}' kelimesinde bulunan sesli harfler: {', '.join(sesliler)}")
    else:
        print(f"'{user_noun}' kelimesinde sesli harf bulunamadı.")
    #çoğul ekli olarak da yaz..
    plural_noun=make_plural(user_noun)
    print (f"Abrakadabra.. bu ismin çoğul hali {plural_noun}")
main()

