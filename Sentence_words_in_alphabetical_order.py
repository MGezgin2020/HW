# kullanıcıdan alınan söz öbeğinde ki kelimeleri alfabetik olarak sıralayım
# sample input --> merhaba ben burak
# output input --> alfabetik sırada çıktı olacak

def sentence_sort (insentence:str)->str :
    words=insentence.split()
    #words.sort() #bunu kullanırsam ana liste bozuluyor o yüzden sorted kullanayım dedim.
    sorted_words=sorted(words)
    #return " ".join(words)  #bunu yapmam gerekti.. çünkü word.sort() ile liste olarak geri gelen alfabetik sıralı kelimeleri str yaptım join() ile..
    return sorted_words

def main():
    sentence_in =input("Please print the sentence where I am supposed to write its words back to you in alphabetical order: ")
    result=sentence_sort(sentence_in)
    print (f"your sentence where its words are sorted alphabetically will look like this :{result} ")

if __name__ == "__main__":  #bunu ezbere ekliyorum ki başka yerde kafasına göre main çalışmaya başlamasın
    main()