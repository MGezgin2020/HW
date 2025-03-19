from random import randint
lst_even=[]
lst_odd=[]
def number_autoproduction (a,b,amount)->list :
    numbers = [randint(a, b) for _ in range(amount)]
    print(f"üretilecek rastgele rakamlar şu 2 rakam arasında olacak: {a} ve {b}")
    print(f"Üretilen rastgele sayılar: {numbers}")
    return numbers

def number_classification(numbers):
    """
listeleri çift ve tek olarak ayıralım.. rastgele seçilen rakamları böyle 2 listeye ayıralım
    :param numbers:
    :return:
    """
    for i in numbers :
        if i %2 == 0 :
            lst_even.append(i)
        else :
            lst_odd.append(i)
    print ("tek sayılar listesi :" , lst_odd)
    print("çift sayılar listesi :", lst_even)
# main():
a=int(input("rastgele seçilecek rakamların hangi rakamlar arası olmasını istediğinizi bildiriniz : önce düşük rakam :"))
b=int(input("şimdi de yüksek tavan rakamı yazın lütfen : "))
amount =int(input("Kaç tane rastgele sayı üretmek istersiniz? "))

sayilar = number_autoproduction(a,b,amount)
number_classification(numbers=sayilar )