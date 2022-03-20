import abc2

c = 'y'
while c.lower() == 'y' :
    print("Agriculture".center(89 , '='))
    print('1. Name')
    print('2. Delete the farmer details')
    print("3. Display all farmers")
    print('4. Exit')
    choice1 = int(input("Enter the serial number of your choice : "))
    if choice1 == 1 :
        abc2.clrscreen()
        abc2.user()
        C = 'y'
        while C.lower() == 'y' :
            abc2.clrscreen()
            print("Agro Shine".center(89 , '='))
            print("1. Area")
            print("2. Crop Selling")
            print("3. Exit")
            choice = int(input("Enter the serial number of your choice : "))
            if choice == 1 :
                abc2.clrscreen()
                print("Land".center(89 , '='))
                print("1. Add new land")
                print("2. View all land")
                print("3. Update an existing land")
                print("4. Exit")
                choice2 = int(input("Enter the choice : "))
                if choice2 == 1 :
                    abc2.clrscreen()
                    abc2.area()
            elif choice2 == 2 :
                abc2.clrscreen()
                abc2.view_stock()
            elif choice2 == 3 :
                    abc2.clrscreen()
                    abc2.update_stock()
            elif choice2 == 4 :
                    print("Good Bye")
                    break
            #else : print("INVALID CHOICE")
            elif choice == 2 :
                abc2.clrscreen()
                print('Crop Selling'.center(89 , '='))
                print('1. Sell crop')
                print('2. View Sales this month')
                print("3. Exit")
                choice3 = int(input("Enter your choice : "))
                if choice3 == 1 :
                    abc2.clrscreen()
                    abc2.sell_crop()                   
                elif choice3 == 2 :
                        abc2.clrscreen()
                        abc2.view_sales()
                elif choice3 == 3 : 
                        print("Good Bye")
                        break
                else : 
                    print("INVALID CHOICE")
             
                print("Good Bye")
                break
                else:
                    print("INVALID CHOICE")
                C = input("Do you want to continue (y/[n]) : ")
            else : print("Good Bye")
        else : 
            print("Either your username or password is incorrect")
    elif choice1 == 2 :
        abc2.clrscreen()
        abc2.delete_user()
                     
    elif choice1==3:
        abc2.clrscreen()
        abc2.display_users()
   
    elif choice1==4:
        print("Good Bye")
        break
    else : 
        print("INVALID CHOICE")
    c = input("Do you want to return to main menu (y/[n]) : ")
else : 
    print("Good Bye")
