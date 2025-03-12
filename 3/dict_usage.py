release_year_movie = {
    "Fight Club": 1999,
    "Matrix": 1999 ,
    "Interstellar": 2015 ,
    "Inception": 2018 ,
    "Dune": 2021 ,
    }

# Herhangi bir value ekrana basın
# path 1
print(f"Interstellar release year : {release_year_movie.get("Interstellar")}")
#path 2
print(f"Interstellar release year : {release_year_movie["Interstellar"]}")
# sözlüğün tüm anahtarlarını ekrana basalım
for key in release_year_movie.keys() :
    print(key)
# sözlüğün tüm valuelarını ekrana basalım
for value in release_year_movie.values() :
    print(value)
#sözlüğün tüm varlığını ekrana basalım :
for key , value in release_year_movie.items() :
    print(f"Movie name : {key} ; Release Year : {value}")
#CRUD Operation
products =[{"name:":"Everlast gloves", "price": 49},
{"name:":" Everlast bags", "price": 119},
{"name:":"Everlast hand wrap", "price": 9},
{"name:":"macbook", "price": 345},
{"name:":"lenovo", "price": 165}
           ]
#Products tüm ürünlerin fiyatlarını toplayarak ekrana basın
total = 0
for product in products :
    total += product.get("price")
print(f"Total : {total}")
product_names=[]
unwanted_products=[]
#product listesindeki fiyatı 100'den büyük olanları listeleyin
for product in products :
    each_price = product.get("price")
    if each_price > 100  :
        product_names.append=[]
   #else :
    #    unwanted_products.append=[]
print(product_names)

for product in products :
    if product ["price"] > 100 :
        print (product)
#product list içinde adında Everlast geçen ve fiyatı 30-120 arasında olan ürünleri listeleyin :
for product in products :
    if "Everlast" in product["name"] and 30.00< product ["price"] <= 130.00 :
        print(product)





