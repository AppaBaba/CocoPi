# Simple Calculator Python Program
# Pyyhon 3.9 with IDLE
# Code can be used Anaconda and Spyder
# Runs on Mac and PC

# Add two numbers 
def add(num1, num2): 
	return num1 + num2 

# Subtract two numbers 
def sub(num1, num2): 
	return num1 - num2 

# Multiply two numbers 
def mul(num1, num2): 
	return num1 * num2 

# Divide two numbers 
def div(num1, num2): 
	return num1 / num2 

def input2num():
    num1 = int(input("First number: "))
    num2 = int(input("Second number: "))
    return (num1, num2)


def menu():
    print("Press key -\n"
		"a to Add\n"
		"s to Subtract\n"
		"m to Multiply\n" 
		"d to Divide\n"
        "e to Exit\n")
    
    # Take input from the user
    select = input("Select operation a, s, m, d, e :")
    
    
    if select == 'a':
        (n1, n2) = input2num()
        print(n1, "+", n2, "=", add(n1, n2))
        status = 0
        return status
    elif select == 's':
        (n1, n2) = input2num()
        print(n1, "-", n2, "=", sub(n1, n2))
        status = 0
        return status
    elif select == 'm':
        (n1, n2) = input2num()
        print(n1, "*", n2, "=", mul(n1, n2))
        status = 0
        return status
    elif select == 'd':
        (n1, n2) = input2num()
        print(n1, "/", n2, "=", div(n1, n2))
        status = 0
        return status
    elif select == 'e':
        status = 1
        return status
    else:
        print("Invalid input")
        status = 0
        return status

status = 0
while status == 0:
    status = menu()
    print()
if status == 1:
    print()
print("Good Stuff")


