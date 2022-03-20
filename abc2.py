try : import pymysql as cntr
except ImportError :import mysql.connector as cntr
from datetime import date
from tempfile import mktemp
from os import system , startfile

db = cntr.connect(host = 'localhost' , user = 'root' , passwd = 'qwerty1',database="farm")
cur = db.cursor()
db.autocommit = True


#Function to check is it leap year
is_leapyear = lambda year : year % 4 == 0


#Function to get last date of month
def last_month(month , year):
    if month in (1,3,5,7,8,10,12) : return 31
    elif month == 2 and is_leapyear(year) : return 29
    elif month == 2 : return 28
    else : return 30
    

clrscreen = lambda : system("cls")

def user():
    fname=input("Enter your name : ")
    area=float(input("Enter the area : "))

def delete_user():
    print("Database Connected.....  Record Deletion Facility")
    name=input("Enter farmer name to Delete the Record: ")
    reg=(name,) 
    Q="DELETE FROM USERS WHERE USERNAME=%s"
    cur.execute(Q,reg)
    print("Deletion completed")
    
def display_users():
    print("The list of authorized members to use the software")
    cur.execute("Select * from users")
    myrecords=cur.fetchall()
    for x in myrecords:
        print(x) 

def add_stock():
    print("Add crop.center(89, '=')")
    cname=input("Enter quantity of the crop : ")
    cur.execute("Select Crop_name from crop")
    myrecords=cur.fetchall()
    for data in myrecords:
        if data[0]==cname:
            area=int(input("Enter area of the land : "))
            cur.execute("update area set Available_land = Available_land+{}".format(area))
            print("Updated Successfully")
            break
    else:
        stock_no=int(input("Enter the crop number : "))
        cname=input("Enter the name of the crop : ")
        fname=input("Enter your name : ")
        area=int(input("Enter area of the land : "))
        cur.execute("insert into stock values ({} , '{}' , '{}' , {} , '{}')".format(stock_no , cname , fname , area, date.today()))
        print("Inserted Sucessfully !!!")
    
def view_stock():
    cur.execute("Select crop_quantity from Crop ASC")
    data = cur.fetchall()
    print("Quantity of crop")

    for row in data : print(row[0])       




def show_user() :
    print()
    print("The list of farmers to use the software")
    cur.execute("Select entry_id from User")
    myrecords=cur.fetchall()
    for x in myrecords:
        print(x)

def update_stock() :
    crop_no = int(input("Enter the stock number : "))
    cur.execute("select Crop_name , Available_Stock from stock where crop_no = {}".format(crop_no))
    data = cur.fetchall()
    print("Crop Name : " , data[0][0])
    print("Available Stock : " , data[0][1])
    stock = int(input("Enter the new stock added : "))
    cur.execute("update stock set Available_Stock = Available_Stock + {}".format(stock))
    print("Updated Successfully")

def area():
    area1=float(input("Enter the area/loaction : "))
   

    





