# ==============================================================================
# PROGRAM DNA Project
# AUTHOR: Gabriel Paez
# FSU MAIL NAME: gap22l
# RECITATION SECTION NUMBER: 2
# RECITATION INSTRUCTOR NAME: Kali Rohit
# CGS 3465 - Fall 2022
# PROJECT NUMBER: 5
# DUE DATE: 11/10/2022
# PLATFORM: Windows OS / Python 3
# 
#



import random

def menu():
    """
    Input: Ask user for menu choice
    Output: Menu choice
    """
    # print the menu
    print('Enter a number 1-4')
    print('1. Find the complement of the strand')
    print('2. Mutate the DNA strand')
    print('3. Find substrand within the strand')
    print('4. Quit')
    # ask the user for the menu choice
    choice = input('Enter your choice: ')
    # print a separator and a blank line
    print("-=-=-=-=-=-")
    print()
    # return the menu choice
    return choice


def load_dna_file():
    """
    Input: Ask user for file name
    Output: DNA sequence from file
    """
    # ask the user for the file name and open the file
    fname = input('Please enter a file name: ')
    while True:
        # try to open the file
        try:
            fhand = open(fname)
            break
        # if the file doesn't exist, ask the user for another file name
        except:
            fname = input('Cannot open file. Enter new a file name: ')
    # read the file and store the DNA sequence
    dna = ''
    # loop through the file
    for line in fhand:
        # remove the newline character
        line = line.rstrip()
        # add the line to the DNA sequence
        dna = dna + line
    # return the DNA sequence
    return dna

def complement(dna):
    """
    Input: DNA sequence
    Output: Complement of the DNA sequence
    """
    # create an empty string to store the complement
    complement = ''
    # loop through the DNA sequence
    for base in dna:
        # if the base is A, add T to the complement
        if base == 'A':
            complement = complement + 'T'
        # if the base is T, add A to the complement
        elif base == 'T':
            complement = complement + 'A'
        # if the base is C, add G to the complement
        elif base == 'C':
            complement = complement + 'G'
        # if the base is G, add C to the complement
        elif base == 'G':
            complement = complement + 'C'
    # return the complement
    return complement

def mutation(dna):
    """
    Input: DNA sequence
    Output: Mutated DNA sequence
    """
    # initialize the mutated DNA sequence to the original DNA sequence
    dna2 = dna
    for i in range(5):
        # make sure you're not mutating the same position twice
        while True:
            # choose a random position in the DNA sequence
            pos = random.randint(0, len(dna2) - 1)
            # if the position has not been mutated, break out of the loop
            if dna2[pos] != 'M':
                break
        # mutate the base at the position
        dna2 = dna2[:pos] + 'M' + dna2[pos+1:]
    # return the mutated DNA sequence
    return dna2


def search(dna):
    """
    Input: DNA sequence
    Output: Print the position of the substrand
    """
    # ask the user for the substrand
    sub = input('Enter the substring: ').upper()
    # find the position of the substrand
    index = dna.find(sub)
    # if the substrand is not found, print a message
    if index == -1:
        print('The Substring Is Not Found')
    # if the substrand is found, print the position
    else:
        print('Found At Index:  ', index)
    # print a blank line
    print()

def print_original(dna):
    """
    Input: DNA sequence
    Output: Print the original DNA sequence
    """
    print('Original:    ', dna)

def parallel_print(dna, dna2, choice):
    """
    Input: DNA sequence, mutated DNA sequence, and menu choice
    Output: Print the original DNA sequence and the mutated/complemented DNA sequence
    """
    # print the original DNA sequence
    print('Original:    ', dna)
    # print the complemented DNA sequence
    if choice == '1':
        print('Complement:  ', dna2)
    # print the mutated DNA sequence
    elif choice == '2':
        print('Mutation:    ', dna2)
    # print a blank line
    print()

def main():
    # load the DNA sequence from the file
    dna = load_dna_file()
    # print the original DNA sequence
    print('Original Sequence Read from File:  ', dna)
    # print a blank line
    print()
    # get the menu choice
    choice = menu()
    # loop until the user chooses to quit
    while choice != '4':
        # if the user chooses to find the complement of the strand
        if choice == '1':
            # find the complement of the strand
            dna2 = complement(dna)
            # print the original DNA sequence and the complemented DNA sequence
            parallel_print(dna, dna2, choice)
        # if the user chooses to mutate the DNA strand
        elif choice == '2':
            # mutate the DNA strand
            dna2 = mutation(dna)
            # print the original DNA sequence and the mutated DNA sequence
            parallel_print(dna, dna2, choice)
        # if the user chooses to find substrand within the strand
        elif choice == '3':
            # find the substrand within the strand
            print_original(dna)
            # print the position of the substrand
            search(dna)
        # print an invalid menu choice message
        else:
            print('Invalid Selection')
            print()
        # get the menu choice
        choice = menu()
    # print a goodbye message
    print('Finished')

# call the main function
if __name__ == '__main__':
    main()
