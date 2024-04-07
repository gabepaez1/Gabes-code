# ==============================================================================
# PROGRAM DNA Project
# AUTHOR: Gabriel Paez
# FSU MAIL NAME: gap22l
# RECITATION SECTION NUMBER: 2
# RECITATION INSTRUCTOR NAME: Kali Rohit
# CGS 3465 - Fall 2022
# PROJECT NUMBER: 6
# DUE DATE: 11/29/2022
# PLATFORM: Windows OS / Python 3
# 
#
#
#
#
from Contact import Contact

def intro():
    # print a welcome
    print("Welcome to the contact list program")
    print("Practicing OOP programming is a huge leap to be the best programmer I can be")
    print("I will be using the Contact class to create a list of contacts")

def create_list_of_5_contact():
    """Create a list of 5 contacts"""
    # create a list of 5 contacts
    list_of_contact = []
    # create a 5 fictional contacts and append them in the list
    list_of_contact.append(Contact("John", "Bucharest", 46, "123456789", "RELATIVE"))
    list_of_contact.append(Contact("Mary", "Spain", 20, "123456789", "FRIEND"))
    list_of_contact.append(Contact("George", "Algeria", 24, "123456789", "WORK"))
    list_of_contact.append(Contact("Paul", "USA", 32, "123456789", "FRIEND"))
    list_of_contact.append(Contact("Ringo", "Mexico", 18, "123456789", "FRIEND"))
    # return the list of contacts
    return list_of_contact

def print_list_of_contact(list_of_contact):
    """Print the list of contacts"""
    for i in range(len(list_of_contact)):
        print(list_of_contact[i])

def replace_list_contact_from_data_file(list, filedata_name):
    """Replace the list of contacts with the data from the file"""
    # open the file
    try:
        file = open(filedata_name, "r")
        # read the file
        # get the number of contacts from first line
        number_of_contacts = int(file.readline())
        # for each number of cointact
        for i in range(number_of_contacts):
            # read the name
            name = file.readline()
            # read the adress
            adress = file.readline()
            # read the age
            age = int(file.readline())
            # read the phone
            phone = file.readline()
            # read the type
            type = file.readline()
            # set the contact
            list[i].setName(name)
            list[i].setAdress(adress)
            list[i].setAge(age)
            list[i].setPhone(phone)
            list[i].setType(type)
    # handle open file error
    except IOError:
        print("Error: File not found")
    # close the file
    file.close()
    # return the list of contacts
    return list, number_of_contacts

def main():
    # call the intro function
    intro()
    # create a list of 5 contacts
    list_of_contact = create_list_of_5_contact()
    # replace the list of contacts with the data from the file
    list_of_contact, number_of_contacts = replace_list_contact_from_data_file(list_of_contact, 'contacts.txt')
    # print the list of contacts
    print(f"Number of contacts: {number_of_contacts}")
    print_list_of_contact(list_of_contact)

if __name__ == "__main__":
    main()
