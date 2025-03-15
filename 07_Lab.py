

# Dictionary (Sözlük)
# Sözlükler, liste ve tuple gibi bir başka koleksiyon yapısıdır.
# Sözlükle key value mantığında çalışırlar.

# release_year_movie = {
#     'Fight Club': 1999,
#     'Matrix': 1999,
#     'Interstaller': 2014,
#     'Inception': 2018,
#     'Dune': 2021
# }
#
# # Herhangi bir value ekrana basın
# # Path I
# print(f'Interstaller Release Year: {release_year_movie.get("Interstaller")}')
# # Path II
# print(f'Interstaller Release Year: {release_year_movie["Interstaller"]}')
#
# # Sözlüğün tüm anahtarlarını ekrana basalım
# for key in release_year_movie.keys():
#     print(key)
#
# # sözlüğün tüm value'larını ekrana basalım
# for value in release_year_movie.values():
#     print(value)
#
# # sözlüğün tüm valığını ekrena basalım
# for key,value in release_year_movie.items():
#     print(f'Movie Name: {key} - Release Year: {value}')
#
#
# # CRUD operations
# # Bir uygulamanın yüzde 70-80 CRUD (Create-Read-Update-Delete) operasyonları kapsar.
# # Yukarıda zaten okuma işlemi yaptık
#
# # create
# release_year_movie['Joy'] = 2015
# print(release_year_movie)
#
# # update
# release_year_movie.update({
#     'Joy': 2018
# })
# print(release_year_movie)
#
# # delete
# del release_year_movie['Joy']
# print(release_year_movie)
#
# products = [
#     {'name': 'Everlast Pro Boxing Gloves', 'price':49.99},
#     {'name': 'Everlast Punching Bags', 'price':119.99},
#     {'name': 'Everlast Hand Wrap', 'price':9.99},
#     {'name': 'Macbook Pro', 'price':345.99},
#     {'name': 'Lenovo x1 Carbon', 'price':165.99}
# ]
#
# # products listesinde tüm ürünlerin fiyatlarını toplayarak ekrana basın
# total = 0
# for product in products:
#     total += product.get('price')
#
# print(f'Total: {total}')
#
# # product listersinde ki ürünlerin fiyatı 100.00 büyük olan ürünleri listleyin
# for product in products:
#     if product['price'] > 100.00:
#         print(product)
#
#
# # ürün adı içerisinde Everlast geçen ve ürün fiyatı 30.00 ile 130.00 arasında olan ürünleri listeleyin
# for product in products:
#     if 'Everlast' in product['name'] and 30.00 <= product['price'] <= 130.00:
#         print(product)


# CRUD - category Create-Read-Update-Delete, veri sözlük tutulacak
from uuid import uuid4
from pprint import pprint

categories = {
    '2967236e-d48a-4064-850a-19fc009a5fc3': {
        'name': 'Boxing Equipment',
        'description': 'Best boxing equipment'
    },
    'd66971b9-640f-4bc1-a2f4-737df9ced623': {
        'name': 'MMA Equipment',
        'description': 'Best mma equipment'
    }
}

while True:
    process = input('Process: ')

    match process:
        case 'exit':
            print('Application has been closing..!')
            break
        case 'create':
            categories[str(uuid4())] = {
                'name': input('Type a category name: '),
                'description': input('Description: ')
            }
            pprint(categories)
        case 'get all':
            pprint(categories)
        case 'get by id':
            category_id = input('Id: ')
            result: dict | None = categories.get(category_id)
            if result is None:
                print('There is no such a category..!')
            else:
                pprint(result)
        case 'update':
            category_id = input('Id: ')
            new_name = input('Name: ')
            new_description = input('Description: ')
            categories.update({
                category_id: {
                    'name': new_name,
                    'description': new_description
                }
            })
            print(f'{category_id} has been edited..!')
            pprint(categories.get(category_id))
        case 'delete':
            category_id = input('Id: ')
            del categories[category_id]
            print(f'{category_id} has been removed..!')
            pprint(categories)
        case _:
            print('Please type a valid process name..!')


































