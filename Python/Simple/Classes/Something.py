# Inheritance Example

class Nothing:
    def nothing(self):
       print('This nothing')

class Something(Nothing):
    def something(self):
       print('But this is something')

anything = Something()
anything.nothing()
anything.something()
