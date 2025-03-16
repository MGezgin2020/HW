# Hipotenüs bulma programı
x=float(input("Dik üçgenin hipotenüsünü bulmak için bir kenarın uzunluğunu giriniz: "))
y=float(input("Dik üçgenin hipotenüsünü bulmak için diğer kenarın uzunluğunu giriniz: "))
hipokare=(x*x)+(y*y)
hipo=hipokare**0.5  #Chatgbt karekök böyle alınır dedi
print(f"Bu üçgende hipotenüs uzunluğu :{hipo}")
#hipotenüsü bulunan üçgende sinüs ve cosinüs bulmak
alfasinus=x/hipo
alfacos=y/hipo
betasinus=y/hipo
betacos=x/hipo
print("alfasinus:",alfasinus,"alfacos:",alfacos)