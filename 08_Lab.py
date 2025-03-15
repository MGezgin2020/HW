
from requests import get
from pprint import pprint

end_point = 'https://newsapi.org/v2/everything?q=tesla&from=2025-02-12&sortBy=publishedAt&apiKey=47f3419f49864ca889f632677d485de1'

response = get(url=end_point)

data = response.json()

pprint(data)

# gelen verinin ilk makalesinin author, content, publishedAt bilgisini ekrana yazdır.

# serach mekanizması, end-user bir yazar adı alıyoruz, gelen bu yazar adına sahip makale yada makaleleri ekrana yazdırıyoruz

# free farklı bir api (NewAPI değil), bu apiden data çekiyoruz. yine search mekanizmaları kuruyourz. crud operasyonu yapın




