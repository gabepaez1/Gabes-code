# ==============================================================================
# PROGRAM Software Sales Calculator
#
# AUTHOR: Gabriel Paez
# FSU MAIL NAME: gap22l
# RECITATION SECTION NUMBER: 2
# RECITATION INSTRUCTOR NAME: Kali Rohit
# CGS 3465 - Fall 2022
# PROJECT NUMBER: 2 
# DUE DATE: 9/22/2022
# PLATFORM: Windows OS / Python 3
# 
#


# named constants

Software_unit = 99    # Software unit price
Discount = 0

# print introductory program output heading

print('*************************')
print('Software Sales Calculator')
print('*************************')

#get amount of software unit sales
soldUnits = int(input('\nHow many units where sold? '))

#apply discount to each number group 
if soldUnits <= 0:
    print('\nUnits sold should be greater than zero.\nEnd program run.')
elif soldUnits >= 100:
    Discount = 0.5
elif soldUnits >= 50:
    Discount = 0.4
elif soldUnits >= 20:
    Discount = 0.3
elif soldUnits >= 10:
    Discount = 0.2
else:
    Discount = 1
unitCost = (Software_unit-Discount*Software_unit)
totalCost = (unitCost*soldUnits)

if soldUnits > 0:
    print('Your cost per unit is $',unitCost)
    print('Total cost of your purchase is $',totalCost)
    print('\n\n-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-')
    print('Thanks for Using the Software Sales Calculator')
    print('-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-')

    
