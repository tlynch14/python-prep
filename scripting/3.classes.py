class Person:
  def __init__(self, fname, lname):
    self.firstname = fname
    self.lastname = lname

  def printname(self):
    print(self.firstname, self.lastname)

class Student(Person):
  def __init__(self, fname, lname, year):
    super().__init__(fname, lname)
    self.graduationYear = year

  def introduce(self):
    print("Hello I graduated in " + str(self.graduationYear)) 

  def age(self, age):
    print("I am " +str(age))

# Student
x = Student("Mike", "Olsen", 2021)
x.printname()
print(x.graduationYear)
x.introduce()
x.age(33)

class Shape: 
    def __init__(self, name): 
        self.name = name
    
    def introduce(self):
        print("Hello my name is: " +self.name)


class Circle(Shape): 
    def __init__(self, name, radius):
        super().__init__(name)
        self.radius = radius
    
    def displayRadius(self): 
        print("I have a radius of: " +str(self.radius))

tom = Circle("Circle", 1)
tom.introduce()
tom.displayRadius()