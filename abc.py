import mysql.connector as cntr
db = cntr.connect(host = 'localhost' , user = 'root' , passwd ='qwerty1')
db.autocommit = True
cur = db.cursor()
cur.execute("create database if not exists farm")
cur.execute("use farm")
cur.execute("create table users (entry_id int , fname varchar(225) , area float)")
cur.execute("create table Crop (crop_name varchar(225) , crop_no int , crop_quantity float)")
cur.execute("create table past_data (temperature float , humidity float , pressure float , wind_speed float , wind_direction float , ranifall float , snowfall float , snow_depth float , short_wave_irradiation float)")
#cur.execute()
cur.execute("Show tables")
for x in cur:
    print(x)

print("Database and Tables created successfully")
c = input("Press any key to continue---->")
cur.close()
db.close()

