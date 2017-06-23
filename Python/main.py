import random
import sys
import os
from unittest import test

print("Hello World")

# Comment

'''
Multiline comment
'''

name = "Ata Niyazov"

print(name)

# Types: Numbers Strings Lists Tuples Dictionaries

'''
Arifmethic operators:

+ - * / % ** //

'''

print("5 + 2 = ", 5 + 2)
print("5 - 2 = ", 5 - 2)
print("5 * 2 = ", 5 * 2)
print("5 / 2 = ", 5 / 2)
print("5 % 2 = ", 5 % 2)
print("5 ** 2 = ", 5 ** 2)
print("5 // 2 = ", 5 // 2)

print("1 + 2 - 3 * 2 = ", 1 + 2 - 3 * 2)
print("1 + 2 - 3) * 2 = ", (1 + 2 - 3) * 2)

quote = "\"Always you are unique"
multi_line_quote = ''' just
like everyone else'''

print("%s %s %s" % ('I like the quote', quote, multi_line_quote))

print('\n' * 5)
print("I don't like ", end="")
print("newlines")

grocery_list = ['Juice', 'Tomatoes', 'Potatoes', 'Bananas']
print('First Item is', grocery_list[0])
grocery_list[0] = 'Green Juice'
print('First Item is', grocery_list[0])
print(grocery_list[1:3])
other_events = ['Wash Car', 'Pick Up Kids', 'Cash Check']

to_do_list = [other_events, grocery_list]
print(to_do_list)

print(to_do_list[1][1])

grocery_list.append('Onions')
print(to_do_list)

grocery_list.insert(1, "Pickle")
grocery_list.remove("Pickle")

grocery_list.sort()
grocery_list.reverse()

del grocery_list[4]
print(to_do_list)

to_do_list2 = other_events + grocery_list
print(to_do_list2)
print(len(to_do_list2))
print(max(to_do_list2))
print(min(to_do_list2))

pi_tuple = (3, 1, 4, 1, 5, 9)

new_tuple = list(pi_tuple)

new_list = tuple(new_tuple)

# len(tuple)
# min(tuple)
# max(tuple)

super_villians = {'Fiddler': 'Issac Bowin',
                  'Captain Cold': 'Leonard Snart',
                  'Weather Wizard': 'Mark Mardon',
                  'Mirror Master': 'Sam Scudder',
                  'Pied Piper': 'Thomas Peterson'}

print(super_villians['Fiddler'])
print(super_villians['Mirror Master'])

del super_villians['Fiddler']
# print(super_villians['Fiddler'])

super_villians['Pied Piper'] = 'Hartley Rathway'

print(len(super_villians))

print(super_villians.get('Pied Piper'))

print(super_villians.keys())

print(super_villians.values())

# if else elif == != > >= < <=

age = 30

if age > 30:
    print('You are old enough to drive')
else:
    print('You are not old enough to drive')

if age >= 21:
    print('You are old enough to drive a tractor trailer')
elif age >= 16:
    print('You are old enough to drive a car')
else:
    print("You are not old enough to drive")

if ((age >= 1) and (age <= 18)):
    print("You get a birthday")
elif (age == 21) or (age >= 65):
    print("You get a birthday")
elif not (age == 38):
    print("You don't get a birthday")
else:
    print("You get a birthday party yeah")

# Looping

for x in range(0, 10):
    print(x, ' ', end='')

print('\n')

for y in grocery_list:
    print(y)

for x in [2, 4, 6, 8, 10]:
    print(x)

num_list = [[1, 2, 3], [10, 20, 30], [100, 200, 330]]

for x in range(0, 3):
    for y in range(0, 3):
        print(num_list[x][y], ' ', end='')
    print()

random_num = random.randrange(0, 100)

while (random_num != 15):
    print(random_num)
    random_num = random.randrange(0, 100)

i = 0

while (i <= 20):
    if (i % 2 == 0):
        print(i)
    elif (i == 9):
        break
    else:
        i += 1  # i = i + 1
        continue

    i += 1


def addNumber(fNum, lNum):
    sumNum = fNum + lNum
    return sumNum


print(addNumber(1, 4))

string = addNumber(1, 5)

print("What is your name")
# name = sys.stdin.readline()

print('Hello', name)

long_string = "I'll catch you if you fall - The Floor"

print(long_string[0:4])
print(long_string[-5:])
print(long_string[:-5])

print(long_string[:4] + " be there")

print("%c is my %s letter and my number %d number is %.5f" % ('X', 'favorite', 1, .14))

print(long_string.capitalize())

print(long_string.find("Floor"))
print(long_string.isalpha())
print(long_string.isalnum())
print(len(long_string))
print(long_string.replace("Floor", "Ground"))

print(long_string.strip())

quote_list = long_string.split(" ")
print(quote_list)

test_file = open("test.txt", "wb")

print(test_file.mode)
print(test_file.name)

test_file.write(bytes("Write me to the file\n", 'UTF-8'))

test_file.close()

test_file = open("test.txt", "r+")

text_in_file = test_file.read()
print(text_in_file)

os.remove("test.txt")


# Objects

class Animal:
    __name = ""
    __height = 0
    __weight = 0
    __sound = 0

    def __init__(self, name, height, weight, sound):
        self.__name = name
        self.__height = height
        self.__weight = weight
        self.__sound = sound

    def set_name(self, name):
        self.__name = name

    def get_name(self):
        return self.__name

    def set_height(self, height):
        self.__height = height

    def get_weight(self):
        return self.__weight

    def set_sound(self, sound):
        self.__sound = sound

    def get_sound(self):
        return self.__sound

    def get_type(self):
        print("Animal")

    def toString(self):
        return "{} is {} cm tall and {} kilograms and say {}".format(self.__name,
                                                                     self.__height,
                                                                     self.__weight,
                                                                     self.__sound)


cat = Animal("Whiskers", 33, 10, "Meow")
print(cat.toString())


class Dog(Animal):
    __owner = ""

    def __init__(self, name, height, weight, sound, owner):
        super(Dog, self).__init__(name, height, weight, sound)
        self.__owner = owner

    def set_owner(self, owner):
        self.__owner = owner

    def get_owner(self):
        return self.__owner

    def get_type(self):
        print("Dog")

    def toString(self):
        return "{} is {} cm tall and {} kilograms and say {} His owner is {}".format(self._Animal__name,
                                                                                     self._Animal__height,
                                                                                     self._Animal__weight,
                                                                                     self._Animal__sound,
                                                                                     self.__owner)

    def multiple_sounds(self, how_many=None):
        if how_many is None:
            print(self.get_sound())
        else:
            print(self.get_sound() * how_many)


spot = Dog("Spot", 53, 27, "Ruff", "Ata")

print(spot.toString())


class AnimalTesting:
    def get_type(self, animal):
        animal.get_type();

test_animals = AnimalTesting()

test_animals.get_type(cat)
test_animals.get_type(spot)

spot.multiple_sounds(4)