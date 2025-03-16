from requests import get
from pprint import pprint
#siteden veri çekmek
end_point = "https://jsonplaceholder.typicode.com/posts"
response = get(end_point)
data=response.json() #veri liste dönüyor
# pprint(data)   # verinin nasıl düzenlendiğini anlamak için kullandım.. anladıktan sonra da nasıl düzenlendiğini nasıl bulduğumu unutmuyım diye silmedim .
id_number=0
data_dict = {item["id"]: item for item in data}  #listeyi sözlük yaptım
for key in data_dict.keys(): #aslında bütün for döngülerini comprehension yapmak istiyorum.ama şimdilik yapamıyorum.
    pprint(data_dict)
    id_number +=1
# pprint(f"Keys in this item: {data_dict}")  bu işe yaramadı ama ya yararsa diye silemedim de..
#CRUD ile create-read-update-delete
# create
userId_user=int(input("please print your userId : ")) #tabii buraya bu userId geçerli mi değil mi onun da kontrolünü eklemek lazım..ama şimdi değil..burada veriyi string alıyordum ilk başta bir türlü bu kişinin eklenen haberini bulamıyordum.. sonra integer yaptım.
new_body= input("Please insert the body of the item : ")
new_title= input ("Please insert the title : ")
id_number += 1
new_post={"body":new_body ,"id" : id_number , "title" : new_title ,"userId" : userId_user}
data_dict.update({id_number:new_post})
pprint(data_dict)
# belli bir kullanıcı acaba kaç tane yazı göndermiş ? Bunu bilmem gerekiyor.
target_userId = int(input("Please enter the userID you are interested in: "))
target_news=[]
news_count=0
for i in data_dict.values() :
    if i["userId"]== target_userId :
    # if userId == target_userId :
        target_news.append(i)
        # print(target_news)
        news_count+=1
    #else :
    #   pass
pprint(f"{target_userId} wrote {news_count} items")








