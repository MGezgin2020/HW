

# Custom Function

# declare function
def function_name():
    print('Hello..!')


# function execution or function call
function_name()
function_name()
function_name()
function_name()

# fonksiyonlar dinamik olmalıdır yani gelen değerlere alarak çalışmalılar
def greeting_people(full_name: str):
    print(f'{full_name} salve..!')

greeting_people(full_name='Burak Yılmaz')

tam_ad = 'ipek yılmaz'
greeting_people(full_name=tam_ad)

greeting_people(
    full_name=input('Full Name: ')
)

