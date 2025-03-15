
# HTTP (Hyper Text Transfer Protokol)
# Client, Server talepte (request) bulunuyoruz, server bize bir response dönüyor.
from requests import get  # request modülü python çekirdek dosyalarında bulunmaz. bu yüzden terminalden pip install requests diyrek paketi yüklüyoruz. her hangi bir modüle pypi.org bakabilirsiniz.
from pprint import pprint

# API (Application Process Interface)
# API farklı platformalarda çalışan uygulamaların veri transferini yapan yani onları konuşturan bir teknolojidir.
# günlük hayatta sıklıkla kullandığınız API'ler google maps, yandex navigation, open weather, facebook 3rd api

end_point = 'https://newsapi.org/v2/everything?q=tesla&from=2025-02-13&sortBy=publishedAt&apiKey=47f3419f49864ca889f632677d485de1'

response = get(url=end_point)

data = response.json()  # JSON (JavaScript Object Notation)

pprint(data)

# gelen verinin ilk makalesinin author, content, publishedAt bilgisini ekrana yazdır.
print(f'Author: {data["articles"][0]["author"]}')
print(f'Content: {data["articles"][0]["content"]}')
print(f'Create Date: {data["articles"][0]["publishedAt"]}')
# serach mekanizması, end-user bir yazar adı alıyoruz, gelen bu yazar adına sahip makale yada makaleleri ekrana yazdırıyoruz
author_name = input('Author Name: ')
for article in data.get('articles'):
    if article.get('author') == author_name:
        pprint(article)
        break

# free farklı bir api (NewAPI değil), bu apiden data çekiyoruz. yine search mekanizmaları kuruyourz. crud operasyonu yapın




