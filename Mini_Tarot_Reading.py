import random
# We have only 5 Major Arcana cards in hand.. and will see what will they tell us.. thus.. a mini tarot reading..
Arcana_cards=["The Fool" , "The Magician" , "The High Priestess" , "The Tower " , "The Wheel of Fortune" ]
# to start , to get the energy of the applicant.. we need an input from him/her/them.
spell=input ("Please write a short spell and hope for the best : ")
# when the applicant writes anything , it will be considered as a spell,and fate will choose 3 random Tarot cards and there the reading is done :
if spell.strip(): #thus we will only continue in case the applicant writes something (hopefully a nice spell)
    cards_chosen=random.sample(Arcana_cards,3)
    print ("\nHere is what the future tells to you : ")
    print(f"First card: {cards_chosen[0]}")
    print(f"Second card: {cards_chosen[1]}")
    print(f"Third card: {cards_chosen[2]}")
#Here I sort the cards .. something I just learned while trying to fix this homework
    cards_chosen_sorted = sorted(cards_chosen)

# let's interpret now :
    match cards_chosen_sorted :
        case ("The Fool", "The High Priestess","The Magician"):
            print ("This combination indicates that you are ready to embark on a new journey. \nWith The Fool, you are taking bold steps forward; \n with The Magician, you are utilizing your skills; and \n with The High Priestess, you are trusting your intuition. \nThis suggests that you can begin a creative process by tapping into your inner wisdom")
        case ("The Fool", "The Magician", "The Wheel of Fortune"):
            print ("This combination signifies a major turning point in your life. \n With The Fool, you are diving into a new adventure; \n with The Magician, you are making the most of this opportunity; and \n with The Wheel of Fortune, you are seeing that fate is guiding you in a positive direction. \n Luck is on your side!")
        case ("The Fool" , "The Magician" , "The Tower") :
            print ("This combination suggests that you may encounter a sudden change or a shocking event. \n While moving forward unconsciously with The Fool, \n you may experience an awakening with The Tower. \n The Magician will help you turn this situation into an opportunity. \n Though the change may be painful, \n it ultimately offers you a new beginning.")
        case ("The Fool", "The High Priestess", "The Wheel of Fortune") :
            print ("This combination encourages you to trust your intuition and destiny. \n With The Fool, you are stepping into the unknown; \n with The High Priestess, you are using your inner wisdom; and \n with The Wheel of Fortune, you are aligning with the cycles of life. \n You are on the right path, but patience is key.")
        case ("The Fool" , "The High Priestess" , "The Tower") :
            print ("This combination indicates that you are going through an inner awakening. \n While moving forward innocently with The Fool, \n you may face a harsh truth with The Tower. \n The High Priestess advises you to trust your intuition and \n rely on your inner wisdom during this process. \n This may be a challenging but transformative experience.")
        case ("The Fool" ,"The Tower" , "The Wheel of Fortune" ) :
            print("This combination suggests a major shift in your life. \n With The Fool, you are starting a new journey; \n with The Wheel of Fortune, the wheel of destiny is turning; \n and with The Tower, old structures are collapsing. \n This process may be chaotic, \n but it will ultimately lead to a new beginning.")
        case ( "The High Priestess","The Magician", "The Wheel of Fortune" ):
            print("This combination shows that you can seize opportunities by using your creative talents and intuition. \n With The Magician, you are harnessing your potential; \n with The High Priestess, you are trusting your inner wisdom; and \n with The Wheel of Fortune, you are seeing that destiny is on your side. \n A great opportunity may be on the horizon!")
        case ("The Magician" , "The High Priestess" , "The Tower") :
            print("This combination indicates that you are in a process of transformation. \n With The Magician, you are using your skills; \n with The High Priestess, you are trusting your intuition; and \n with The Tower, old beliefs or structures are crumbling. \n This process may be challenging, \n but you will emerge stronger and wiser.")
        case ("The Magician" , "The Tower", "The Wheel of Fortune" ) :
            print("This combination suggests a significant change in your life. \n With The Magician, you can turn this change into an opportunity; \n with The Wheel of Fortune, the wheel of destiny is turning; and \n with The Tower, old structures are falling apart. \n By using your skills, you can make a fresh start during this process.")
        case ("The High Priestess","The Tower", "The Wheel of Fortune") :
            print("This combination encourages you to trust your intuition and destiny. \n With The High Priestess, you are using your inner wisdom; \n with The Wheel of Fortune, the wheel of destiny is turning; and \n with The Tower, you are facing a harsh truth. \n Be patient and open to change during this process.")
        case _ :
            print ("Don't know how but your fate is sealed for a while.. try again later ")
else :
    print ("this is not a valid spell. Your are doomed")
