#A simple recursive implementation of the Collatz sequence
#@author Mitch Moir

def collatz(number):
    if number % 2 == 0:
        return number / 2
    else:
        return 3 * number + 1

print("Enter a number: ")
num = int(input())
result = collatz(num)

while(result != 1):
    result = int(collatz(result))
    print(result)