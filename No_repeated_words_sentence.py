# bir söz öbeğinde tekrar eden kelimelerden arındırarak çıktı verelim
# sample input --> merhaba ben burak burak ben merhaba
# sample outpu --> merhaba ben burak


def split_it_all (user_input:str) -> list :
    # user_input = sentence_with_repetitive_words
    x=user_input.split()
    simplified_sentence = []
    for word in x:
        if word not in simplified_sentence:
            simplified_sentence.append(word)
    return simplified_sentence    #listeyi döndürdüm. bunu bu sefer unutmadım !


def main():
    sentence_with_repetitive_words=input("birden fazla tekrarlayan kelimelerini atacağımız cümleyi girin lütfen:")
    simplified_sentence=split_it_all(sentence_with_repetitive_words)
    print (f"cümleniz tekrarlamayan kelimelerle şöyle çıkıyor: {simplified_sentence}")

if __name__ == "__main__":    #böylece bu program başka bir yerde modül olarak kullanılırsa main fonksiyonunun kendi başına çalışmasına engel olmuş olacağım.. öyle umuyorum yani..
    main()