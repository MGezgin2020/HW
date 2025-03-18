# #sign_up sign_in :

# Kullanıcı bilgileri
users = [
    ("beast", "123"),
    ("savage", "987"),
    ("bear", "567"),
]

# Giriş yapma fonksiyonu
def sign_in(username: str, password: str) -> str:
    for userName, pwd in users:
        if userName == username and pwd == password:
            return "Hoşgeldiniz!"
    return "Bilgiler hatalı."

# Şifre kurallarını kontrol etme fonksiyonu
def is_password_valid(password: str) -> bool:
    # En az 12 karakter kontrolü
    if len(password) < 12:
        return False

    # En az bir büyük harf kontrolü
    has_upper = any(char.isupper() for char in password)
    # En az bir küçük harf kontrolü
    has_lower = any(char.islower() for char in password)
    # En az bir rakam kontrolü
    has_digit = any(char.isdigit() for char in password)
    # En az bir noktalama işareti kontrolü
    punctuations = "!@#$%^&*(),.?\":{}|<>"
    has_punct = any(char in punctuations for char in password)

    # Tüm kurallar sağlanıyorsa True döner
    return has_upper and has_lower and has_digit and has_punct

# Üyelik oluşturma fonksiyonu
def sign_up() -> str:
    while True:
        username = input("Kullanıcı adınızı girin: ")
        password = input("Şifrenizi girin: ")

        # Kullanıcı adı zaten var mı diye kontrol et
        kullanici_adi_var = False
        for userName, _ in users:
            if userName == username:
                kullanici_adi_var = True
                break

        if kullanici_adi_var == True :
            print("Bu kullanıcı adı zaten alınmış. Lütfen başka bir kullanıcı adı seçin.")
        else:
            # Şifre kurallarını kontrol et
            if not is_password_valid(password):
                print("Şifreniz en az 12 karakter uzunluğunda olmalı ve en az bir büyük harf, bir küçük harf, bir rakam ve bir noktalama işareti içermelidir.")
            else:
                # Yeni kullanıcıyı kaydet
                data = (username, password)
                users.append(data)
                return "Üyelik işlemi tamamlandı."

# Ana menü
while True:
    print("1. Giriş Yap")
    print("2. Üye Ol")
    print("3. Çıkış")
    secim = input("Seçiminiz (1/2/3): ")

    if secim == "1":
        username = input("Kullanıcı adınızı girin: ")
        password = input("Şifrenizi girin: ")
        print(sign_in(username, password))
    elif secim == "2":
        print(sign_up())
    elif secim == "3":
        print("Çıkış yapılıyor...Lütfen aidatları zamanında ödeyin..")
        break
    else:
        print("Geçersiz seçim. Lütfen tekrar deneyin.")


