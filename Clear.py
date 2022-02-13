import os

if os.path.exists("Database.txt"):
    os.remove("Database.txt")

else:
    print("Not Found")