class Student:
    def __init__(self):
        self.major = "Nothing"

    def getMajor(self):
        return self.major

    def setMajor(self, major):
        self.major = major

Bruce = Student()
Marry = Student()
David = Student()

Bruce.setMajor("Physics")
Marry.setMajor("EE")

print('Bruce is majoring in ', Bruce.major)
print('Marry is majoring in ', Marry.major)
print('David is majoring in ', David.major)
