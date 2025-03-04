class oopCal:
   def add(self, n1, n2):
       self.n1 = n1
       self.n2= n2
       answer = self.n1 + self.n2
       return answer
    
   def sub(self, n1, n2):
       self.n1 = n1
       self.n2 = n2
       answer = self.n1 - self.n1
       return answer
    

   def mul(self, n1, n2):
       self.n1 = n1
       self.n2 = n2
       answer = self.n1 * self.n2
       return answer
    

   def div(self, n1, n2):      
       self.n1 = n1
       self.n2 = n2
        
       if (n2 == 0):
           answer = "Can't divide by zero!"
       else:
           answer = self.n1 / self.n2 
    
       return answer


cal = oopCal()
an01 = cal.add(1,4)
an02 = cal.sub(4,3)
an03 = cal.mul(4,4)
an04 = cal.div(4,4)
print(an01)
print(an02)
print(an03)
print(an04)
