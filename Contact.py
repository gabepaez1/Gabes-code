"""
define the contact class that holds:
name, adress, age, phone, type (will be one of "NONE", "FRIEND", "RELATIVE" or "WORK")
define the following methods:
__init__ (name, adress, age, phone, type)
__str__ (returns a string with all the contact's data)
getters and setters
"""

class Contact:
    # define the constructor
    def __init__(self, name: str, adress: str, age: int, phone: str, type: str):
        self.name = name
        self.adress = adress
        self.age = age
        self.phone = phone
        if type == "FRIEND" or type == "RELATIVE" or type == "WORK":
            self.type = type
        else:
            self.type = "NONE"

    def __str__(self):
        return f"Name: {self.name}, Adress: {self.adress}, Age: {self.age}, Phone: {self.phone}, Type: {self.type}"

    def getName(self):
        return self.name

    def setName(self, name):
        self.name = name

    def getAdress(self):
        return self.adress
    
    def setAdress(self, adress):
        self.adress = adress

    def getAge(self):
        return self.age

    def setAge(self, age):
        self.age = age

    def getPhone(self):
        return self.phone

    def setPhone(self, phone):
        self.phone = phone

    def getType(self):
        return self.type

    def setType(self, type):
        if type == "FRIEND" or type == "RELATIVE" or type == "WORK":
            self.type = type
        else:
            self.type = "NONE"

